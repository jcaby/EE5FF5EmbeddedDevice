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
include esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/flags.make

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/flags.make
esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj: /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj   -c /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls.c

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp-tls.dir/esp_tls.c.i"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls.c > CMakeFiles/__idf_esp-tls.dir/esp_tls.c.i

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp-tls.dir/esp_tls.c.s"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls.c -o CMakeFiles/__idf_esp-tls.dir/esp_tls.c.s

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.obj: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/flags.make
esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.obj: /Users/jeremy/esp/esp-idf/components/esp-tls/esp-tls-crypto/esp_tls_crypto.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.obj"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.obj   -c /Users/jeremy/esp/esp-idf/components/esp-tls/esp-tls-crypto/esp_tls_crypto.c

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.i"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/esp/esp-idf/components/esp-tls/esp-tls-crypto/esp_tls_crypto.c > CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.i

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.s"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/esp/esp-idf/components/esp-tls/esp-tls-crypto/esp_tls_crypto.c -o CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.s

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.obj: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/flags.make
esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.obj: /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_error_capture.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.obj"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.obj   -c /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_error_capture.c

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.i"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_error_capture.c > CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.i

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.s"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_error_capture.c -o CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.s

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.obj: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/flags.make
esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.obj: /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_mbedtls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.obj"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.obj   -c /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_mbedtls.c

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.i"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_mbedtls.c > CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.i

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.s"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/esp/esp-idf/components/esp-tls/esp_tls_mbedtls.c -o CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.s

# Object files for target __idf_esp-tls
__idf_esp__tls_OBJECTS = \
"CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj" \
"CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.obj" \
"CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.obj" \
"CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.obj"

# External object files for target __idf_esp-tls
__idf_esp__tls_EXTERNAL_OBJECTS =

esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj
esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp-tls-crypto/esp_tls_crypto.c.obj
esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_error_capture.c.obj
esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls_mbedtls.c.obj
esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/build.make
esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jeremy/CLionProjects/sntp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libesp-tls.a"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp-tls.dir/cmake_clean_target.cmake
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp-tls.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/build: esp-idf/esp-tls/libesp-tls.a

.PHONY : esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/build

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/clean:
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp-tls.dir/cmake_clean.cmake
.PHONY : esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/clean

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/depend:
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremy/CLionProjects/sntp /Users/jeremy/esp/esp-idf/components/esp-tls /Users/jeremy/CLionProjects/sntp/cmake-build-debug /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/depend

