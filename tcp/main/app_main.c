#include <fnmatch.h>
/* MQTT (over TCP) Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "esp_event.h"
#include "esp_netif.h"
#include "protocol_examples_common.h"
#include "esp_sntp.h"


#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"

#include "lwip/sockets.h"
#include "lwip/dns.h"
#include "lwip/netdb.h"

#include "esp_log.h"
#include "mqtt_client.h"

static const char *TAG = "MQTT_EXAMPLE";

static void initialize_sntp(void);
static void set_time(void);

static void log_error_if_nonzero(const char * message, int error_code)
{
    if (error_code != 0) {
        ESP_LOGE(TAG, "Last error %s: 0x%x", message, error_code);
    }
}

char time_string[64];

_Noreturn static void mqtt_app_start(void) {
    esp_mqtt_client_config_t mqtt_cfg = {
            .uri = CONFIG_BROKER_URL,
    };

    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg); //config
    //esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler, client);
    esp_mqtt_client_start(client);

    //esp_mqtt_client_handle_t client = event->client;
    int msg_id;

    char sensor_id_string[14];
    char value_string[14];
    //char time_string[14];
    char session_id_string[14];
    int session_id = 1;

    /* Start main application now */

    while (1) {
        //ESP_LOGI(TAG, "Hello World!");

        for (int measure = 0; measure<=5;measure++) {
            //set_time();

            for (int id = 0; id <= 15; id++) {

                char topic[14] = "EE5FF5/temp";

                sprintf(sensor_id_string, "%d", id);
                sprintf(value_string, "%d", rand() % 800);
                sprintf(time_string,"%u",(unsigned)time(NULL));
                sprintf(session_id_string, "%d", session_id);

                char data[1024]; //JSON String

                //Concat the different components of the string
                strcpy(data, "{\"sensor_id\":");
                strcat(data, sensor_id_string);
                strcat(data, ",\"value\":");
                strcat(data, value_string);
                strcat(data, ",\"time\":");
                strcat(data, time_string);
                strcat(data, ",\"session_id\":");
                strcat(data, session_id_string);
                strcat(data, "}");

                //Publish the mqtt instance
                msg_id = esp_mqtt_client_publish(client, topic, data, 0, 2, 0);
                ESP_LOGI(TAG, "sent publish successful, msg_id=%d", msg_id);
                printf("TOPIC=%s\r\n", topic);
                printf("DATA=%s\r\n", data);
                //vTaskDelay(1000 / portTICK_PERIOD_MS);
            }
            vTaskDelay(10000 / portTICK_PERIOD_MS);
        }

    }
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

    //initialize_sntp();
    mqtt_app_start();
}

static void set_time(){
    time_t now;
    struct tm timeinfo;
    time(&now);
    localtime_r(&now, &timeinfo);
    // Is time set? If not, tm_year will be (1970 - 1900).
    if (timeinfo.tm_year < (2016 - 1900)) {
        ESP_LOGI(TAG, "Time is not set yet. Connecting to WiFi and getting time over NTP.");
        initialize_sntp();
        // update 'now' variable with current time
        time(&now);
    }

}



static void initialize_sntp(void)
{
    //ESP_LOGI(TAG, "Initializing SNTP");
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, "pool.ntp.org");
    sntp_init();

    // wait for time to be set
    time_t now = 0;
    struct tm timeinfo = { 0 };
    int retry = 0;
    const int retry_count = 10;
    while (sntp_get_sync_status() == SNTP_SYNC_STATUS_RESET && ++retry < retry_count) {
        ESP_LOGI(TAG, "Waiting for system time to be set... (%d/%d)", retry, retry_count);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
    }
    time(&now);
    localtime_r(&now, &timeinfo);
}


