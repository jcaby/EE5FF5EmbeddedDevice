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
CMAKE_SOURCE_DIR = /Users/jeremy/CLionProjects/testproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jeremy/CLionProjects/testproject/cmake-build-debug

# Include any dependencies generated for this target.
include esp-idf/vfs/CMakeFiles/__idf_vfs.dir/depend.make

# Include the progress variables for this target.
include esp-idf/vfs/CMakeFiles/__idf_vfs.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/vfs/CMakeFiles/__idf_vfs.dir/flags.make

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs.c.obj: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/flags.make
esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs.c.obj: /Users/jeremy/esp/esp-idf/components/vfs/vfs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/testproject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs.c.obj"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_vfs.dir/vfs.c.obj   -c /Users/jeremy/esp/esp-idf/components/vfs/vfs.c

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_vfs.dir/vfs.c.i"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/esp/esp-idf/components/vfs/vfs.c > CMakeFiles/__idf_vfs.dir/vfs.c.i

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_vfs.dir/vfs.c.s"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/esp/esp-idf/components/vfs/vfs.c -o CMakeFiles/__idf_vfs.dir/vfs.c.s

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_uart.c.obj: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/flags.make
esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_uart.c.obj: /Users/jeremy/esp/esp-idf/components/vfs/vfs_uart.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/testproject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_uart.c.obj"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_vfs.dir/vfs_uart.c.obj   -c /Users/jeremy/esp/esp-idf/components/vfs/vfs_uart.c

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_uart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_vfs.dir/vfs_uart.c.i"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/esp/esp-idf/components/vfs/vfs_uart.c > CMakeFiles/__idf_vfs.dir/vfs_uart.c.i

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_uart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_vfs.dir/vfs_uart.c.s"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/esp/esp-idf/components/vfs/vfs_uart.c -o CMakeFiles/__idf_vfs.dir/vfs_uart.c.s

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_semihost.c.obj: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/flags.make
esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_semihost.c.obj: /Users/jeremy/esp/esp-idf/components/vfs/vfs_semihost.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremy/CLionProjects/testproject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_semihost.c.obj"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_vfs.dir/vfs_semihost.c.obj   -c /Users/jeremy/esp/esp-idf/components/vfs/vfs_semihost.c

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_semihost.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_vfs.dir/vfs_semihost.c.i"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremy/esp/esp-idf/components/vfs/vfs_semihost.c > CMakeFiles/__idf_vfs.dir/vfs_semihost.c.i

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_semihost.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_vfs.dir/vfs_semihost.c.s"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && /Users/jeremy/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremy/esp/esp-idf/components/vfs/vfs_semihost.c -o CMakeFiles/__idf_vfs.dir/vfs_semihost.c.s

# Object files for target __idf_vfs
__idf_vfs_OBJECTS = \
"CMakeFiles/__idf_vfs.dir/vfs.c.obj" \
"CMakeFiles/__idf_vfs.dir/vfs_uart.c.obj" \
"CMakeFiles/__idf_vfs.dir/vfs_semihost.c.obj"

# External object files for target __idf_vfs
__idf_vfs_EXTERNAL_OBJECTS =

esp-idf/vfs/libvfs.a: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs.c.obj
esp-idf/vfs/libvfs.a: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_uart.c.obj
esp-idf/vfs/libvfs.a: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/vfs_semihost.c.obj
esp-idf/vfs/libvfs.a: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/build.make
esp-idf/vfs/libvfs.a: esp-idf/vfs/CMakeFiles/__idf_vfs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jeremy/CLionProjects/testproject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libvfs.a"
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && $(CMAKE_COMMAND) -P CMakeFiles/__idf_vfs.dir/cmake_clean_target.cmake
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_vfs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/vfs/CMakeFiles/__idf_vfs.dir/build: esp-idf/vfs/libvfs.a

.PHONY : esp-idf/vfs/CMakeFiles/__idf_vfs.dir/build

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/clean:
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs && $(CMAKE_COMMAND) -P CMakeFiles/__idf_vfs.dir/cmake_clean.cmake
.PHONY : esp-idf/vfs/CMakeFiles/__idf_vfs.dir/clean

esp-idf/vfs/CMakeFiles/__idf_vfs.dir/depend:
	cd /Users/jeremy/CLionProjects/testproject/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremy/CLionProjects/testproject /Users/jeremy/esp/esp-idf/components/vfs /Users/jeremy/CLionProjects/testproject/cmake-build-debug /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs /Users/jeremy/CLionProjects/testproject/cmake-build-debug/esp-idf/vfs/CMakeFiles/__idf_vfs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/vfs/CMakeFiles/__idf_vfs.dir/depend

