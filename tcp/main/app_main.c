#include <glob.h>
#include <fnmatch.h>
#include "mysntp.h"
#include "mymqtt.h"

#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include "driver/gpio.h"


#include <freertos/FreeRTOS.h>
#include <freertos/task.h>

#include <esp_log.h>
#include <esp_event.h>
#include "esp_netif.h"
#include <nvs_flash.h>

#include "esp_system.h"

#include <protocol_examples_common.h>

#include <stdlib.h>

#include "freertos/semphr.h"
#include "esp_err.h"
#include "driver/twai.h"
#include "linkedlist.h"

#include <esp_sleep.h>

static const char *TAG = "MQTT_EXAMPLE";

/* --------------------- Definitions and static variables ------------------ */

//Example Configurations
#define NO_OF_MSGS              15
#define NO_OF_ITERS             5
#define TX_GPIO_NUM             25
#define RX_GPIO_NUM             26
#define TX_TASK_PRIO            8       //Sending task priority
#define RX_TASK_PRIO            9       //Receiving task priority
#define CTRL_TSK_PRIO           10      //Control task priority
#define MSG_ID                  0x555   //11 bit standard format ID
#define EXAMPLE_TAG             "TWAI Self Test"

#define ESP_INTR_FLAG_DEFAULT 0
#define CONFIG_BUTTON_PIN 33


static const twai_timing_config_t t_config = TWAI_TIMING_CONFIG_25KBITS();
//Filter all other IDs except MSG_ID
static const twai_filter_config_t f_config = {.acceptance_code = (MSG_ID << 21),
        .acceptance_mask = ~(TWAI_STD_ID_MASK << 21),
        .single_filter = true};
//Set to NO_ACK mode due to self testing with single module
static const twai_general_config_t g_config = TWAI_GENERAL_CONFIG_DEFAULT(TX_GPIO_NUM, RX_GPIO_NUM, TWAI_MODE_NO_ACK);

static SemaphoreHandle_t tx_sem;
static SemaphoreHandle_t rx_sem;
static SemaphoreHandle_t ctrl_sem;
static SemaphoreHandle_t done_sem;
//static SemaphoreHandle_t mqtt_sem;

//TaskHandle_t ISR = NULL;


static void twai_transmit_task(void *arg)
{
    twai_message_t tx_msg = {.data_length_code = 3, .identifier = MSG_ID, .self = 1};
    int value;
    //for (int iter = 0; iter < NO_OF_ITERS; iter++) {
    for (int iter = 0; iter < NO_OF_ITERS; iter++) {
        xSemaphoreTake(tx_sem, portMAX_DELAY);
        for (int i = 0; i < NO_OF_MSGS; i++) {

            value = rand()%800;
            printf("sent value: %d \n", value);
            //Transmit messages using self reception request
            tx_msg.data[0] = 32;
            tx_msg.data[1] = value >> 4 & 0xFF;
            tx_msg.data[2] = value << 4 & 0xFF;
            ESP_ERROR_CHECK(twai_transmit(&tx_msg, portMAX_DELAY));
            ESP_LOGI(EXAMPLE_TAG, "MSG sent");
            vTaskDelay(pdMS_TO_TICKS(10));
        }
    }
    vTaskDelete(NULL);
}

static void twai_receive_task(void *arg)
{
    twai_message_t rx_message;
    head = NULL;

    //for (int iter = 0; iter < NO_OF_ITERS; iter++) {
    for (int iter = 0; iter < NO_OF_ITERS; iter++) {
        xSemaphoreTake(rx_sem, portMAX_DELAY);
        for (int i = 0; i < NO_OF_MSGS; i++) {
            //Receive message and print message data
            ESP_ERROR_CHECK(twai_receive(&rx_message, portMAX_DELAY));
            ESP_LOGI(EXAMPLE_TAG, "Msg received");
            rx_message.time = (unsigned) time(NULL);
            insert_at_tail(rx_message);
        }
        //Indicate to control task all messages received for this iteration
        xSemaphoreGive(ctrl_sem);
    }
    vTaskDelete(NULL);
}

static void twai_control_task(void *arg)
{
    xSemaphoreTake(ctrl_sem, portMAX_DELAY);
    ESP_LOGI(EXAMPLE_TAG, "Driver started");
    ESP_ERROR_CHECK(twai_start());

    //for (int iter = 0; iter < NO_OF_ITERS; iter++) {
    for (int iter = 0; iter < NO_OF_ITERS; iter++){
        //Start TWAI Driver for this iteration
        //Trigger TX and RX tasks to start transmitting/receiving
        xSemaphoreGive(rx_sem);
        xSemaphoreGive(tx_sem);
        xSemaphoreTake(ctrl_sem, portMAX_DELAY);    //Wait for TX and RX tasks to finish iteration


        vTaskDelay(pdMS_TO_TICKS(5000));             //Delay then start next iteration
    }
    xSemaphoreGive(done_sem);

    vTaskDelete(NULL);
}

// interrupt service routine, called when the button is pressed
void IRAM_ATTR button_isr_handler(void* arg) {

    xSemaphoreGive(done_sem);
}





void app_main(void)
{
    ESP_LOGI(TAG, "[APP] Startup..");
    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    ESP_LOGI(TAG, "[APP] IDF version: %s", esp_get_idf_version());

    esp_log_level_set("*", ESP_LOG_INFO);
    esp_log_level_set("MQTT_CLIENT", ESP_LOG_VERBOSE);
    esp_log_level_set("MQTT_EXAMPLE", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT_TCP", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT_SSL", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT", ESP_LOG_VERBOSE);
    esp_log_level_set("OUTBOX", ESP_LOG_VERBOSE);

    ESP_ERROR_CHECK(nvs_flash_init());
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK( esp_event_loop_create_default() );

    /* This helper function configures Wi-Fi or Ethernet, as selected in menuconfig.
     * Read "Establishing Wi-Fi or Ethernet Connection" section in
     * examples/protocols/README.md for more information about this function.
     */
    ESP_ERROR_CHECK(example_connect());

    initialize_sntp();
    set_time();
    srand((unsigned int)time(NULL));
    mqtt_app_start();

    gpio_pad_select_gpio(CONFIG_BUTTON_PIN);

    // set the correct direction
    gpio_set_direction(CONFIG_BUTTON_PIN, GPIO_MODE_INPUT);

    // enable interrupt on falling (1->0) edge for button pin
    gpio_set_intr_type(CONFIG_BUTTON_PIN, GPIO_INTR_NEGEDGE);


    //Install the driver’s GPIO ISR handler service, which allows per-pin GPIO interrupt handlers.
    // install ISR service with default configuration
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);

    // attach the interrupt service routine
    gpio_isr_handler_add(CONFIG_BUTTON_PIN, button_isr_handler, NULL);

    //Create tasks and synchronization primitives
    tx_sem = xSemaphoreCreateBinary();
    rx_sem = xSemaphoreCreateBinary();
    ctrl_sem = xSemaphoreCreateBinary();
    done_sem = xSemaphoreCreateBinary();

    xTaskCreatePinnedToCore(twai_control_task, "TWAI_ctrl", 4096, NULL, CTRL_TSK_PRIO, NULL, tskNO_AFFINITY);
    xTaskCreatePinnedToCore(twai_receive_task, "TWAI_rx", 4096, NULL, RX_TASK_PRIO, NULL, tskNO_AFFINITY);
    xTaskCreatePinnedToCore(twai_transmit_task, "TWAI_tx", 4096, NULL, TX_TASK_PRIO, NULL, tskNO_AFFINITY);
    xTaskCreatePinnedToCore(publish_list_task, "LIST_pub", 4096, NULL, 7, NULL, tskNO_AFFINITY);


    //Install TWAI driver
    ESP_ERROR_CHECK(twai_driver_install(&g_config, &t_config, &f_config));
    ESP_LOGI(EXAMPLE_TAG, "Driver installed");

    //Start control task
    xSemaphoreGive(ctrl_sem);
    //Wait for all iterations and tasks to complete running
    xSemaphoreTake(done_sem, portMAX_DELAY);
    ESP_ERROR_CHECK(twai_stop());               //Stop the TWAI Driver
    ESP_LOGI(EXAMPLE_TAG, "Driver stopped");
    ESP_ERROR_CHECK(twai_driver_uninstall());               //Stop the TWAI Driver
    ESP_LOGI(EXAMPLE_TAG, "Driver uninstalled");

    //print_list();
    //publish_list();
    //print_list();



    ESP_LOGI(EXAMPLE_TAG, "Finito");

    //Cleanup
    vSemaphoreDelete(tx_sem);
    vSemaphoreDelete(rx_sem);
    vSemaphoreDelete(ctrl_sem);
    vQueueDelete(done_sem);

    //ESP32 goes to sleep indefinitely (until woken up by external reset for new session)
    esp_deep_sleep_start();

}




