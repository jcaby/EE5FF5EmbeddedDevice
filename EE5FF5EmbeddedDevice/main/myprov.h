//
// Created by Jérémy Caby on 25/05/2021.
//
#include <wifi_provisioning/manager.h>
#include <wifi_provisioning/scheme_softap.h>
#include <freertos/event_groups.h>
#include <esp_log.h>
#include <esp_wifi.h>
#include <nvs_flash.h>


#ifndef UNTITLED_MYPROV_H
#define UNTITLED_MYPROV_H

extern const int WIFI_CONNECTED_EVENT;
extern EventGroupHandle_t wifi_event_group;

 void event_handler(void *arg, esp_event_base_t event_base,
                          int32_t event_id, void *event_data);

 void wifi_init_sta(void);

 void get_device_service_name(char *service_name, size_t max);

 void provisioning_handler(void);

#endif //UNTITLED_MYPROV_H
