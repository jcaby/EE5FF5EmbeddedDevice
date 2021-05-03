//
// Created by Jérémy Caby on 01/05/2021.
//

#ifndef MYMQTT_H
#define MYMQTT_H
#include "mqtt_client.h"
#include <hal/twai_types.h>
extern esp_mqtt_client_handle_t mqtt_client;
void mqtt_app_start(void);
void mqtt_publish(uint8_t sensor_id, uint16_t value);
#endif //UNTITLED_MYMQTT_H
