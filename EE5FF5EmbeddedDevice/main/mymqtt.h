//
// Created by Jérémy Caby on 01/05/2021.
//

#include "mqtt_client.h"
#include <esp_log.h>

#ifndef MYMQTT_H
#define MYMQTT_H
extern esp_mqtt_client_handle_t mqtt_client;
void mqtt_app_start(void);
void mqtt_publish(uint8_t sensor_id, uint16_t value, uint32_t timestamp);
#endif //UNTITLED_MYMQTT_H
