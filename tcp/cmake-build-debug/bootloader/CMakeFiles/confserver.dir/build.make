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
CMAKE_SOURCE_DIR = /Users/jeremy/esp/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/cmake-build-debug/bootloader

# Utility rule file for confserver.

# Include the progress variables for this target.
include CMakeFiles/confserver.dir/progress.make

CMakeFiles/confserver:
	/Users/jeremy/.espressif/python_env/idf4.4_py2.7_env/bin/python /Users/jeremy/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/cmake-build-debug/bootloader/config.env
	/Users/jeremy/.espressif/python_env/idf4.4_py2.7_env/bin/python /Users/jeremy/esp/esp-idf/tools/kconfig_new/confserver.py --env-file /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/cmake-build-debug/bootloader/config.env --kconfig /Users/jeremy/esp/esp-idf/Kconfig --sdkconfig-rename /Users/jeremy/esp/esp-idf/sdkconfig.rename --config /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/sdkconfig

confserver: CMakeFiles/confserver
confserver: CMakeFiles/confserver.dir/build.make

.PHONY : confserver

# Rule to build all files generated by this target.
CMakeFiles/confserver.dir/build: confserver

.PHONY : CMakeFiles/confserver.dir/build

CMakeFiles/confserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/confserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/confserver.dir/clean

CMakeFiles/confserver.dir/depend:
	cd /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/cmake-build-debug/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremy/esp/esp-idf/components/bootloader/subproject /Users/jeremy/esp/esp-idf/components/bootloader/subproject /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/cmake-build-debug/bootloader /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/cmake-build-debug/bootloader /Users/jeremy/esp/esp-idf/examples/protocols/mqtt/tcp/cmake-build-debug/bootloader/CMakeFiles/confserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/confserver.dir/depend

