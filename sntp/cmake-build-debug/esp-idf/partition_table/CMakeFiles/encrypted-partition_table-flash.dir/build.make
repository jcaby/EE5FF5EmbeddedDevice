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

# Utility rule file for encrypted-partition_table-flash.

# Include the progress variables for this target.
include esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/progress.make

esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash:
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/partition_table && "/Users/jeremy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E echo "Error: The target encrypted-partition_table-flash requires"
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/partition_table && "/Users/jeremy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E echo "CONFIG_SECURE_FLASH_ENCRYPTION_MODE_DEVELOPMENT to be enabled."
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/partition_table && "/Users/jeremy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E env "FAIL_MESSAGE=Failed executing target (see errors on lines above)" "/Users/jeremy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/CLion.app/Contents/bin/cmake/mac/bin/cmake" -P /Users/jeremy/esp/esp-idf/tools/cmake/scripts/fail.cmake

encrypted-partition_table-flash: esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash
encrypted-partition_table-flash: esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/build.make

.PHONY : encrypted-partition_table-flash

# Rule to build all files generated by this target.
esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/build: encrypted-partition_table-flash

.PHONY : esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/build

esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/clean:
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/partition_table && $(CMAKE_COMMAND) -P CMakeFiles/encrypted-partition_table-flash.dir/cmake_clean.cmake
.PHONY : esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/clean

esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/depend:
	cd /Users/jeremy/CLionProjects/sntp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremy/CLionProjects/sntp /Users/jeremy/esp/esp-idf/components/partition_table /Users/jeremy/CLionProjects/sntp/cmake-build-debug /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/partition_table /Users/jeremy/CLionProjects/sntp/cmake-build-debug/esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/partition_table/CMakeFiles/encrypted-partition_table-flash.dir/depend

