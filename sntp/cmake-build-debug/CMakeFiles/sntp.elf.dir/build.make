# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/jeremy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/jeremy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jeremy/CLionProjects/sntp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jeremy/CLionProjects/sntp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sntp.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sntp.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sntp.elf.dir/flags.make

project_elf_src_esp32.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src_esp32.c"
	"/Users/jeremy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E touch /Users/jeremy/CLionProjects/sntp/cmake-build-debug/project_elf_src_esp32.c

CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/sntp.elf.dir/flags.make
CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.obj: project_elf_src_esp32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.obj"
	/Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.obj   -c /Users/jeremy/CLionProjects/sntp/cmake-build-debug/project_elf_src_esp32.c

CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.i"
	/Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/CLionProjects/sntp/cmake-build-debug/project_elf_src_esp32.c > CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.i

CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.s"
	/Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/CLionProjects/sntp/cmake-build-debug/project_elf_src_esp32.c -o CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.s

# Object files for target sntp.elf
sntp_elf_OBJECTS = \
"CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.obj"

# External object files for target sntp.elf
sntp_elf_EXTERNAL_OBJECTS =

sntp.elf: CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.obj
sntp.elf: CMakeFiles/sntp.elf.dir/build.make
sntp.elf: esp-idf/esp_pm/libesp_pm.a
sntp.elf: esp-idf/mbedtls/libmbedtls.a
sntp.elf: esp-idf/efuse/libefuse.a
sntp.elf: esp-idf/bootloader_support/libbootloader_support.a
sntp.elf: esp-idf/app_update/libapp_update.a
sntp.elf: esp-idf/esp_ipc/libesp_ipc.a
sntp.elf: esp-idf/spi_flash/libspi_flash.a
sntp.elf: esp-idf/nvs_flash/libnvs_flash.a
sntp.elf: esp-idf/pthread/libpthread.a
sntp.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
sntp.elf: esp-idf/esp_system/libesp_system.a
sntp.elf: esp-idf/esp_rom/libesp_rom.a
sntp.elf: esp-idf/hal/libhal.a
sntp.elf: esp-idf/vfs/libvfs.a
sntp.elf: esp-idf/esp_eth/libesp_eth.a
sntp.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
sntp.elf: esp-idf/esp_netif/libesp_netif.a
sntp.elf: esp-idf/esp_event/libesp_event.a
sntp.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
sntp.elf: esp-idf/esp_wifi/libesp_wifi.a
sntp.elf: esp-idf/lwip/liblwip.a
sntp.elf: esp-idf/log/liblog.a
sntp.elf: esp-idf/heap/libheap.a
sntp.elf: esp-idf/soc/libsoc.a
sntp.elf: esp-idf/esp_hw_support/libesp_hw_support.a
sntp.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
sntp.elf: esp-idf/driver/libdriver.a
sntp.elf: esp-idf/xtensa/libxtensa.a
sntp.elf: esp-idf/espcoredump/libespcoredump.a
sntp.elf: esp-idf/perfmon/libperfmon.a
sntp.elf: esp-idf/esp32/libesp32.a
sntp.elf: esp-idf/esp_common/libesp_common.a
sntp.elf: esp-idf/esp_timer/libesp_timer.a
sntp.elf: esp-idf/freertos/libfreertos.a
sntp.elf: esp-idf/newlib/libnewlib.a
sntp.elf: esp-idf/cxx/libcxx.a
sntp.elf: esp-idf/app_trace/libapp_trace.a
sntp.elf: esp-idf/asio/libasio.a
sntp.elf: esp-idf/cbor/libcbor.a
sntp.elf: esp-idf/unity/libunity.a
sntp.elf: esp-idf/cmock/libcmock.a
sntp.elf: esp-idf/coap/libcoap.a
sntp.elf: esp-idf/console/libconsole.a
sntp.elf: esp-idf/nghttp/libnghttp.a
sntp.elf: esp-idf/esp-tls/libesp-tls.a
sntp.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
sntp.elf: esp-idf/esp_hid/libesp_hid.a
sntp.elf: esp-idf/tcp_transport/libtcp_transport.a
sntp.elf: esp-idf/esp_http_client/libesp_http_client.a
sntp.elf: esp-idf/esp_http_server/libesp_http_server.a
sntp.elf: esp-idf/esp_https_ota/libesp_https_ota.a
sntp.elf: esp-idf/protobuf-c/libprotobuf-c.a
sntp.elf: esp-idf/protocomm/libprotocomm.a
sntp.elf: esp-idf/mdns/libmdns.a
sntp.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
sntp.elf: esp-idf/sdmmc/libsdmmc.a
sntp.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
sntp.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
sntp.elf: esp-idf/expat/libexpat.a
sntp.elf: esp-idf/wear_levelling/libwear_levelling.a
sntp.elf: esp-idf/fatfs/libfatfs.a
sntp.elf: esp-idf/freemodbus/libfreemodbus.a
sntp.elf: esp-idf/jsmn/libjsmn.a
sntp.elf: esp-idf/json/libjson.a
sntp.elf: esp-idf/libsodium/liblibsodium.a
sntp.elf: esp-idf/mqtt/libmqtt.a
sntp.elf: esp-idf/openssl/libopenssl.a
sntp.elf: esp-idf/spiffs/libspiffs.a
sntp.elf: esp-idf/ulp/libulp.a
sntp.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
sntp.elf: esp-idf/protocol_examples_common/libprotocol_examples_common.a
sntp.elf: esp-idf/main/libmain.a
sntp.elf: esp-idf/asio/libasio.a
sntp.elf: esp-idf/cbor/libcbor.a
sntp.elf: esp-idf/cmock/libcmock.a
sntp.elf: esp-idf/unity/libunity.a
sntp.elf: esp-idf/coap/libcoap.a
sntp.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
sntp.elf: esp-idf/esp_hid/libesp_hid.a
sntp.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
sntp.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
sntp.elf: esp-idf/expat/libexpat.a
sntp.elf: esp-idf/fatfs/libfatfs.a
sntp.elf: esp-idf/wear_levelling/libwear_levelling.a
sntp.elf: esp-idf/freemodbus/libfreemodbus.a
sntp.elf: esp-idf/jsmn/libjsmn.a
sntp.elf: esp-idf/libsodium/liblibsodium.a
sntp.elf: esp-idf/mqtt/libmqtt.a
sntp.elf: esp-idf/openssl/libopenssl.a
sntp.elf: esp-idf/spiffs/libspiffs.a
sntp.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
sntp.elf: esp-idf/protocomm/libprotocomm.a
sntp.elf: esp-idf/protobuf-c/libprotobuf-c.a
sntp.elf: esp-idf/mdns/libmdns.a
sntp.elf: esp-idf/console/libconsole.a
sntp.elf: esp-idf/json/libjson.a
sntp.elf: esp-idf/protocol_examples_common/libprotocol_examples_common.a
sntp.elf: esp-idf/esp_pm/libesp_pm.a
sntp.elf: esp-idf/mbedtls/libmbedtls.a
sntp.elf: esp-idf/efuse/libefuse.a
sntp.elf: esp-idf/bootloader_support/libbootloader_support.a
sntp.elf: esp-idf/app_update/libapp_update.a
sntp.elf: esp-idf/esp_ipc/libesp_ipc.a
sntp.elf: esp-idf/spi_flash/libspi_flash.a
sntp.elf: esp-idf/nvs_flash/libnvs_flash.a
sntp.elf: esp-idf/pthread/libpthread.a
sntp.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
sntp.elf: esp-idf/esp_system/libesp_system.a
sntp.elf: esp-idf/esp_rom/libesp_rom.a
sntp.elf: esp-idf/hal/libhal.a
sntp.elf: esp-idf/vfs/libvfs.a
sntp.elf: esp-idf/esp_eth/libesp_eth.a
sntp.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
sntp.elf: esp-idf/esp_netif/libesp_netif.a
sntp.elf: esp-idf/esp_event/libesp_event.a
sntp.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
sntp.elf: esp-idf/esp_wifi/libesp_wifi.a
sntp.elf: esp-idf/lwip/liblwip.a
sntp.elf: esp-idf/log/liblog.a
sntp.elf: esp-idf/heap/libheap.a
sntp.elf: esp-idf/soc/libsoc.a
sntp.elf: esp-idf/esp_hw_support/libesp_hw_support.a
sntp.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
sntp.elf: esp-idf/driver/libdriver.a
sntp.elf: esp-idf/xtensa/libxtensa.a
sntp.elf: esp-idf/espcoredump/libespcoredump.a
sntp.elf: esp-idf/perfmon/libperfmon.a
sntp.elf: esp-idf/esp32/libesp32.a
sntp.elf: esp-idf/esp_common/libesp_common.a
sntp.elf: esp-idf/esp_timer/libesp_timer.a
sntp.elf: esp-idf/freertos/libfreertos.a
sntp.elf: esp-idf/newlib/libnewlib.a
sntp.elf: esp-idf/cxx/libcxx.a
sntp.elf: esp-idf/app_trace/libapp_trace.a
sntp.elf: esp-idf/nghttp/libnghttp.a
sntp.elf: esp-idf/esp-tls/libesp-tls.a
sntp.elf: esp-idf/tcp_transport/libtcp_transport.a
sntp.elf: esp-idf/esp_http_client/libesp_http_client.a
sntp.elf: esp-idf/esp_http_server/libesp_http_server.a
sntp.elf: esp-idf/esp_https_ota/libesp_https_ota.a
sntp.elf: esp-idf/sdmmc/libsdmmc.a
sntp.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
sntp.elf: esp-idf/ulp/libulp.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
sntp.elf: esp-idf/esp_pm/libesp_pm.a
sntp.elf: esp-idf/mbedtls/libmbedtls.a
sntp.elf: esp-idf/efuse/libefuse.a
sntp.elf: esp-idf/bootloader_support/libbootloader_support.a
sntp.elf: esp-idf/app_update/libapp_update.a
sntp.elf: esp-idf/esp_ipc/libesp_ipc.a
sntp.elf: esp-idf/spi_flash/libspi_flash.a
sntp.elf: esp-idf/nvs_flash/libnvs_flash.a
sntp.elf: esp-idf/pthread/libpthread.a
sntp.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
sntp.elf: esp-idf/esp_system/libesp_system.a
sntp.elf: esp-idf/esp_rom/libesp_rom.a
sntp.elf: esp-idf/hal/libhal.a
sntp.elf: esp-idf/vfs/libvfs.a
sntp.elf: esp-idf/esp_eth/libesp_eth.a
sntp.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
sntp.elf: esp-idf/esp_netif/libesp_netif.a
sntp.elf: esp-idf/esp_event/libesp_event.a
sntp.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
sntp.elf: esp-idf/esp_wifi/libesp_wifi.a
sntp.elf: esp-idf/lwip/liblwip.a
sntp.elf: esp-idf/log/liblog.a
sntp.elf: esp-idf/heap/libheap.a
sntp.elf: esp-idf/soc/libsoc.a
sntp.elf: esp-idf/esp_hw_support/libesp_hw_support.a
sntp.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
sntp.elf: esp-idf/driver/libdriver.a
sntp.elf: esp-idf/xtensa/libxtensa.a
sntp.elf: esp-idf/espcoredump/libespcoredump.a
sntp.elf: esp-idf/perfmon/libperfmon.a
sntp.elf: esp-idf/esp32/libesp32.a
sntp.elf: esp-idf/esp_common/libesp_common.a
sntp.elf: esp-idf/esp_timer/libesp_timer.a
sntp.elf: esp-idf/freertos/libfreertos.a
sntp.elf: esp-idf/newlib/libnewlib.a
sntp.elf: esp-idf/cxx/libcxx.a
sntp.elf: esp-idf/app_trace/libapp_trace.a
sntp.elf: esp-idf/nghttp/libnghttp.a
sntp.elf: esp-idf/esp-tls/libesp-tls.a
sntp.elf: esp-idf/tcp_transport/libtcp_transport.a
sntp.elf: esp-idf/esp_http_client/libesp_http_client.a
sntp.elf: esp-idf/esp_http_server/libesp_http_server.a
sntp.elf: esp-idf/esp_https_ota/libesp_https_ota.a
sntp.elf: esp-idf/sdmmc/libsdmmc.a
sntp.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
sntp.elf: esp-idf/ulp/libulp.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
sntp.elf: esp-idf/esp_pm/libesp_pm.a
sntp.elf: esp-idf/mbedtls/libmbedtls.a
sntp.elf: esp-idf/efuse/libefuse.a
sntp.elf: esp-idf/bootloader_support/libbootloader_support.a
sntp.elf: esp-idf/app_update/libapp_update.a
sntp.elf: esp-idf/esp_ipc/libesp_ipc.a
sntp.elf: esp-idf/spi_flash/libspi_flash.a
sntp.elf: esp-idf/nvs_flash/libnvs_flash.a
sntp.elf: esp-idf/pthread/libpthread.a
sntp.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
sntp.elf: esp-idf/esp_system/libesp_system.a
sntp.elf: esp-idf/esp_rom/libesp_rom.a
sntp.elf: esp-idf/hal/libhal.a
sntp.elf: esp-idf/vfs/libvfs.a
sntp.elf: esp-idf/esp_eth/libesp_eth.a
sntp.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
sntp.elf: esp-idf/esp_netif/libesp_netif.a
sntp.elf: esp-idf/esp_event/libesp_event.a
sntp.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
sntp.elf: esp-idf/esp_wifi/libesp_wifi.a
sntp.elf: esp-idf/lwip/liblwip.a
sntp.elf: esp-idf/log/liblog.a
sntp.elf: esp-idf/heap/libheap.a
sntp.elf: esp-idf/soc/libsoc.a
sntp.elf: esp-idf/esp_hw_support/libesp_hw_support.a
sntp.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
sntp.elf: esp-idf/driver/libdriver.a
sntp.elf: esp-idf/xtensa/libxtensa.a
sntp.elf: esp-idf/espcoredump/libespcoredump.a
sntp.elf: esp-idf/perfmon/libperfmon.a
sntp.elf: esp-idf/esp32/libesp32.a
sntp.elf: esp-idf/esp_common/libesp_common.a
sntp.elf: esp-idf/esp_timer/libesp_timer.a
sntp.elf: esp-idf/freertos/libfreertos.a
sntp.elf: esp-idf/newlib/libnewlib.a
sntp.elf: esp-idf/cxx/libcxx.a
sntp.elf: esp-idf/app_trace/libapp_trace.a
sntp.elf: esp-idf/nghttp/libnghttp.a
sntp.elf: esp-idf/esp-tls/libesp-tls.a
sntp.elf: esp-idf/tcp_transport/libtcp_transport.a
sntp.elf: esp-idf/esp_http_client/libesp_http_client.a
sntp.elf: esp-idf/esp_http_server/libesp_http_server.a
sntp.elf: esp-idf/esp_https_ota/libesp_https_ota.a
sntp.elf: esp-idf/sdmmc/libsdmmc.a
sntp.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
sntp.elf: esp-idf/ulp/libulp.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
sntp.elf: esp-idf/esp_pm/libesp_pm.a
sntp.elf: esp-idf/mbedtls/libmbedtls.a
sntp.elf: esp-idf/efuse/libefuse.a
sntp.elf: esp-idf/bootloader_support/libbootloader_support.a
sntp.elf: esp-idf/app_update/libapp_update.a
sntp.elf: esp-idf/esp_ipc/libesp_ipc.a
sntp.elf: esp-idf/spi_flash/libspi_flash.a
sntp.elf: esp-idf/nvs_flash/libnvs_flash.a
sntp.elf: esp-idf/pthread/libpthread.a
sntp.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
sntp.elf: esp-idf/esp_system/libesp_system.a
sntp.elf: esp-idf/esp_rom/libesp_rom.a
sntp.elf: esp-idf/hal/libhal.a
sntp.elf: esp-idf/vfs/libvfs.a
sntp.elf: esp-idf/esp_eth/libesp_eth.a
sntp.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
sntp.elf: esp-idf/esp_netif/libesp_netif.a
sntp.elf: esp-idf/esp_event/libesp_event.a
sntp.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
sntp.elf: esp-idf/esp_wifi/libesp_wifi.a
sntp.elf: esp-idf/lwip/liblwip.a
sntp.elf: esp-idf/log/liblog.a
sntp.elf: esp-idf/heap/libheap.a
sntp.elf: esp-idf/soc/libsoc.a
sntp.elf: esp-idf/esp_hw_support/libesp_hw_support.a
sntp.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
sntp.elf: esp-idf/driver/libdriver.a
sntp.elf: esp-idf/xtensa/libxtensa.a
sntp.elf: esp-idf/espcoredump/libespcoredump.a
sntp.elf: esp-idf/perfmon/libperfmon.a
sntp.elf: esp-idf/esp32/libesp32.a
sntp.elf: esp-idf/esp_common/libesp_common.a
sntp.elf: esp-idf/esp_timer/libesp_timer.a
sntp.elf: esp-idf/freertos/libfreertos.a
sntp.elf: esp-idf/newlib/libnewlib.a
sntp.elf: esp-idf/cxx/libcxx.a
sntp.elf: esp-idf/app_trace/libapp_trace.a
sntp.elf: esp-idf/nghttp/libnghttp.a
sntp.elf: esp-idf/esp-tls/libesp-tls.a
sntp.elf: esp-idf/tcp_transport/libtcp_transport.a
sntp.elf: esp-idf/esp_http_client/libesp_http_client.a
sntp.elf: esp-idf/esp_http_server/libesp_http_server.a
sntp.elf: esp-idf/esp_https_ota/libesp_https_ota.a
sntp.elf: esp-idf/sdmmc/libsdmmc.a
sntp.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
sntp.elf: esp-idf/ulp/libulp.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
sntp.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/xtensa/esp32/libxt_hal.a
sntp.elf: esp-idf/newlib/libnewlib.a
sntp.elf: esp-idf/pthread/libpthread.a
sntp.elf: esp-idf/app_trace/libapp_trace.a
sntp.elf: esp-idf/app_trace/libapp_trace.a
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.api.ld
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-time.ld
sntp.elf: esp-idf/esp32/esp32_out.ld
sntp.elf: esp-idf/esp32/ld/esp32.project.ld
sntp.elf: /Users/jeremy/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
sntp.elf: CMakeFiles/sntp.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sntp.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sntp.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sntp.elf.dir/build: sntp.elf

.PHONY : CMakeFiles/sntp.elf.dir/build

CMakeFiles/sntp.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sntp.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sntp.elf.dir/clean

CMakeFiles/sntp.elf.dir/depend: project_elf_src_esp32.c
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremy/CLionProjects/sntp /Users/jeremy/CLionProjects/sntp /Users/jeremy/CLionProjects/sntp/cmake-build-debug /Users/jeremy/CLionProjects/sntp/cmake-build-debug /Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles/sntp.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sntp.elf.dir/depend
