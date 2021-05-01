//
// Created by Jérémy Caby on 01/05/2021.
//

#include <esp_log.h>
#include "mymqtt.h"
#include "mysntp.h"

static const char *TAG = "MQTT";


 void mqtt_app_start(void) {
    esp_mqtt_client_config_t mqtt_cfg = {
            .uri = CONFIG_BROKER_URL,
    };

    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg); //config
    esp_mqtt_client_start(client);
    sensor_sim(client);

}

 void sensor_sim(esp_mqtt_client_handle_t client) {
    int msg_id;

    char sensor_id_string[14];
    char value_string[14];
    char time_string[64];


    for (int measure = 0; measure <= 3; measure++) {
        set_time();
        for (int i = 0; i <= 15; i++) {

            char topic[14] = "EE5FF5/temp";

            //Initialize the values
            sprintf(sensor_id_string, "%d", i);
            sprintf(value_string, "%d", rand() % 800);
            sprintf(time_string, "%u", (unsigned) time(NULL));

            char data[512]; //JSON String
            //Concat the different components of the JSON string
            strcpy(data, "{\"sensor_id\":");
            strcat(data, sensor_id_string);
            strcat(data, ",\"value\":");
            strcat(data, value_string);
            strcat(data, ",\"time\":");
            strcat(data, time_string);
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