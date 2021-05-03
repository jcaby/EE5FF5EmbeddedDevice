//
// Created by Jérémy Caby on 01/05/2021.
//

#include <esp_log.h>
#include "mymqtt.h"
#include "mysntp.h"

static const char *TAG = "MQTT";
esp_mqtt_client_handle_t mqtt_client;


void mqtt_app_start(void) {
    esp_mqtt_client_config_t mqtt_cfg = {
            .uri = CONFIG_BROKER_URL,
    };

    mqtt_client = esp_mqtt_client_init(&mqtt_cfg); //config
    esp_mqtt_client_start(mqtt_client);
    //sensor_sim(mqtt_client);

}

void mqtt_publish(uint8_t sensor_id, uint16_t value) {
    int msg_id;

    char topic[16] = "EE5FF5/measure";
    char sensor_id_string[14];
    char value_string[14];
    char time_string[64];


    //Initialize the values
    sprintf(sensor_id_string, "%d", sensor_id);
    sprintf(value_string, "%d",value);
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
    msg_id = esp_mqtt_client_publish(mqtt_client, topic, data, 0, 2, 0);
    ESP_LOGI(TAG, "sent publish successful, msg_id=%d", msg_id);
}