//
// Created by Jérémy Caby on 17/05/2021.
//
#include <fnmatch.h>
#include "mysntp.h"
#include "mymqtt.h"
#include "myprov.h"
#include "linkedlist.h"
#include "simplelogic.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <esp_vfs_fat.h>
#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <freertos/event_groups.h>
#include <esp_log.h>
#include <esp_wifi.h>
#include <esp_event.h>
#include "esp_netif.h"
#include <nvs_flash.h>
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "driver/twai.h"
#include <esp_sleep.h>

/* --------------------- Definitions and static variables ------------------ */
//Example Configuration

#define NO_OF_SCANNED_IDS       30 //Defines duration of config period based on the sampling rate and amount of sensor nodes
                                   //For 10 sensors this will allow for up to 3 full sample cycles
#define SESSION_DURATION        2700 //Defines session duration in second (Can be cut short by triggering the gpio interrupt)
#define RX_TASK_PRIO            8
#define TX_TASK_PRIO            9
#define CTRL_TSK_PRIO           10
#define ESP_INTR_FLAG_DEFAULT   0
#define CONFIG_BUTTON_PIN       33
#define TX_GPIO_NUM             25
#define RX_GPIO_NUM             26
#define EXAMPLE_TAG             "MAINHANDLER"

#define ID_MASTER_STOP_CMD      0x0A0
#define ID_MASTER_START_CMD     0x0A1
#define ID_SLAVE_DATA_PKG       0X0A2


typedef enum {
    TX_SEND_START_CMD,
    TX_SEND_STOP_CMD,
    TX_TASK_EXIT,
} tx_task_action_t;

typedef enum {
    RX_RECEIVE_CONFIG,
    RX_RECEIVE_DATA,
    RX_TASK_EXIT,
} rx_task_action_t;

static const twai_timing_config_t t_config = TWAI_TIMING_CONFIG_25KBITS();
static const twai_filter_config_t f_config = TWAI_FILTER_CONFIG_ACCEPT_ALL();
static const twai_general_config_t g_config = TWAI_GENERAL_CONFIG_DEFAULT(TX_GPIO_NUM, RX_GPIO_NUM, TWAI_MODE_NORMAL);


static const twai_message_t start_message = {.identifier = ID_MASTER_START_CMD, .data_length_code = 0,
        .data = {0, 0 , 0 , 0 ,0 ,0 ,0 ,0}};
static const twai_message_t stop_message = {.identifier = ID_MASTER_STOP_CMD, .data_length_code = 0,
        .data = {0, 0 , 0 , 0 ,0 ,0 ,0 ,0}};


static SemaphoreHandle_t ctrl_task_sem;
static SemaphoreHandle_t tx_task_sem;
static SemaphoreHandle_t rx_task_sem;
static SemaphoreHandle_t done_sem;

static int sinterval_in_ms;
static int id_list[NO_OF_SCANNED_IDS]; //Array of ID's
static int session_over = 0;

static rx_task_action_t rx_action;
static tx_task_action_t tx_action;

static void twai_receive_task(void *arg)
{
    while (1) {

        if (rx_action == RX_RECEIVE_CONFIG) {
            //Listen for first measurements response from slaves to configure our session
            //We want to define the amount of sensors and the sampling rate
            //Already filling our publish buffer but no guarantee that no data is lost
            xSemaphoreTake(rx_task_sem,portMAX_DELAY);
            int pkg_count = 0;
            ESP_LOGI(EXAMPLE_TAG, "Start receival configuration");
            while (1) {
                twai_message_t rx_msg;
                //Receive measurement package
                twai_receive(&rx_msg, portMAX_DELAY);
                ESP_LOGI(EXAMPLE_TAG, "Data pkg received (during config)");
                pkg_count++;
                //Fill our ID scan array
                id_list[pkg_count] = rx_msg.data[1];
                //Configure sampling rate (delay) in ms
                sinterval_in_ms = rx_msg.data[3] * 1000;
                //Fill publish buffer
                insert_at_tail(rx_msg);
                //By now all available sensor nodes should have responded
                if (pkg_count > NO_OF_SCANNED_IDS) {
                    xSemaphoreGive(ctrl_task_sem);
                    ESP_LOGI(EXAMPLE_TAG, "Receival configured");
                    break;
                }
            }
        } else if (rx_action == RX_RECEIVE_DATA) {
            //Receive data messages from the slaves
            //This action (and the publish task) forms the fundamental functionality of the data handling architecture
            xSemaphoreTake(rx_task_sem,portMAX_DELAY);
            int pkg_count = 0;
            //Calculate how many sensors will be taking part in the session
            int sensor_count = unique_elements(id_list,NO_OF_SCANNED_IDS);
            //Time before new receival iteration starts: measurement interval - 2 seconds (for safety)
            int receive_delay = sinterval_in_ms - 2000;
            //Register the time at the start of the session
            uint32_t start_time = (unsigned) time(NULL);
            while (1) {
                twai_message_t rx_msg;
                //Receive measurement packages
                twai_receive(&rx_msg, portMAX_DELAY);
                ESP_LOGI(EXAMPLE_TAG, "Data pkg received");
                pkg_count++;
                //Get current time (for 2 purposes)
                uint32_t current_time = (unsigned) time(NULL);
                //Attach timestamp to the package
                rx_msg.time = current_time;
                //Insert frame in the measurement packet buffer
                insert_at_tail(rx_msg);
                //Receival iteration is over when every sensor node has sent it measurement, allow time for the publishing task
                if (pkg_count == sensor_count){
                    vTaskDelay(pdMS_TO_TICKS(receive_delay));
                }
                    //Stop the session if 45 minutes have elapsed
                else if (current_time-start_time>=SESSION_DURATION){
                    //Allow some time to empty the measurement buffer
                    vTaskDelay(pdMS_TO_TICKS(sinterval_in_ms * 3));
                    session_over = !session_over;
                    xSemaphoreGive(ctrl_task_sem);
                    break;
                }
            }
        }
        else if (rx_action == RX_TASK_EXIT) {
            xSemaphoreTake(rx_task_sem,portMAX_DELAY);
            break;
        }
    }
    vTaskDelete(NULL);
}

static void twai_transmit_task(void *arg)
{
    while (1) {

        if (tx_action == TX_SEND_START_CMD) {
            xSemaphoreTake(tx_task_sem, portMAX_DELAY);
            //Transmit start command to slave
            twai_transmit(&start_message, portMAX_DELAY);
            ESP_LOGI(EXAMPLE_TAG, "Transmitted start command");
        } else if (tx_action == TX_SEND_STOP_CMD) {
            xSemaphoreTake(tx_task_sem, portMAX_DELAY);
            //Transmit stop command to slave
            twai_transmit(&stop_message, portMAX_DELAY);
            ESP_LOGI(EXAMPLE_TAG, "Transmitted stop command");
            xSemaphoreGive(ctrl_task_sem);
        } else if (tx_action == TX_TASK_EXIT) {
            xSemaphoreTake(tx_task_sem, portMAX_DELAY);
            xSemaphoreGive(ctrl_task_sem);
            break;
        }
    }
    vTaskDelete(NULL);
}

void publish_list_task(void *arg){
    uint16_t  actual_value;
    while(!session_over) {
        while (head != NULL) {
            struct Node *temp = head;
            actual_value = ((head->package.data[1] << 4 & 0xFFF) + (head->package.data[2] >> 4 & 0xFF));
            printf("||| id: %d | value_H: %d | value_L: %d ||| Calculated actual value: %d \n", head->package.data[0],
                   head->package.data[1], head->package.data[2],
                   actual_value);
            //mqtt_publish((head->package.data[0]), actual_value, head->package.time);
            head = head->next;
            free(temp);
            if (head != NULL)
                head->prev = NULL;
        }
    }
}

static void twai_control_task(void *arg)
{
    xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);

    ESP_ERROR_CHECK(twai_start());
    ESP_LOGI(EXAMPLE_TAG, "Driver started");

    //Send START command and config
    tx_action = TX_SEND_START_CMD;
    rx_action = RX_RECEIVE_CONFIG;
    xSemaphoreGive(rx_task_sem);
    xSemaphoreGive(tx_task_sem);


    //Start the main data receiving task. No need to give sem to TX task
    xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
    rx_action = RX_RECEIVE_DATA;
    xSemaphoreGive(rx_task_sem);

    //Send Stop command to slaves to signal session is over. Exit (and thus delete) receive task.
    xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
    //vTaskDelete(publish_list_task);
    tx_action = TX_SEND_STOP_CMD;
    rx_action = RX_TASK_EXIT;
    xSemaphoreGive(rx_task_sem);
    xSemaphoreGive(tx_task_sem);

    //Exit (and thus delete) transmit task.
    xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
    tx_action = TX_TASK_EXIT;
    xSemaphoreGive(tx_task_sem);

    xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
    ESP_ERROR_CHECK(twai_stop());
    ESP_LOGI(EXAMPLE_TAG, "Driver stopped");


    //Delete Control task
    xSemaphoreGive(done_sem);
    vTaskDelete(NULL);
}

// interrupt service routine, called when the button is pressed
void IRAM_ATTR button_isr_handler(void* arg) {
    session_over = !session_over;
    //signifies to control task that the session is over
    xSemaphoreGive(ctrl_task_sem);
}

void app_main(void) {

    /* Start provisioning handler*/
    provisioning_handler();

    /* Wait for Wi-Fi connection */
    xEventGroupWaitBits(wifi_event_group, WIFI_CONNECTED_EVENT, false, true, portMAX_DELAY);

    /* Connect to SNTP server */
    initialize_sntp();

    /* Configure ESP32 as MQTT client */
    mqtt_app_start();

    //Configure pin as GPIO pin
    gpio_pad_select_gpio(CONFIG_BUTTON_PIN);

    //Set the correct direction
    gpio_set_direction(CONFIG_BUTTON_PIN, GPIO_MODE_INPUT);

    //Enable interrupt on falling (1->0) edge for button pin
    gpio_set_intr_type(CONFIG_BUTTON_PIN, GPIO_INTR_NEGEDGE);

    //Install the driver’s GPIO ISR handler service, which allows per-pin GPIO interrupt handlers.
    //Install ISR service with default configuration
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);

    //Attach the interrupt service routine
    gpio_isr_handler_add(CONFIG_BUTTON_PIN, button_isr_handler, NULL);

    //Create tasks and semaphores

    ctrl_task_sem = xSemaphoreCreateBinary();
    tx_task_sem = xSemaphoreCreateBinary();
    rx_task_sem = xSemaphoreCreateBinary();
    done_sem = xSemaphoreCreateBinary();
    xTaskCreatePinnedToCore(twai_receive_task, "TWAI_rx", 4096, NULL, RX_TASK_PRIO, NULL, tskNO_AFFINITY);
    xTaskCreatePinnedToCore(twai_transmit_task, "TWAI_tx", 4096, NULL, TX_TASK_PRIO, NULL, tskNO_AFFINITY);
    xTaskCreatePinnedToCore(twai_control_task, "TWAI_ctrl", 4096, NULL, CTRL_TSK_PRIO, NULL, tskNO_AFFINITY);
    xTaskCreatePinnedToCore(publish_list_task, "LIST_pub", 4096, NULL, 7, NULL, tskNO_AFFINITY);


    //Install TWAI driver
    ESP_ERROR_CHECK(twai_driver_install(&g_config, &t_config, &f_config));
    ESP_LOGI(EXAMPLE_TAG, "Driver installed");

    xSemaphoreGive(ctrl_task_sem);              //Start control task
    xSemaphoreTake(done_sem, portMAX_DELAY);    //Wait for completion

    //Uninstall TWAI driver
    ESP_ERROR_CHECK(twai_driver_uninstall());
    ESP_LOGI(EXAMPLE_TAG, "Driver uninstalled");

    //Cleanup

    vSemaphoreDelete(ctrl_task_sem);
    vSemaphoreDelete(done_sem);

    //ESP32 goes to sleep indefinitely (until woken up by external reset for new session)
    esp_deep_sleep_start();

}



