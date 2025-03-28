# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kaeshev/esp/IED_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32

# Utility rule file for bootloader-flash.

# Include any custom commands dependencies for this target.
include esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/progress.make

esp-idf/bootloader/CMakeFiles/bootloader-flash:
	cd /Users/kaeshev/esp/esp-idf/components/bootloader && /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -D IDF_PATH=/Users/kaeshev/esp/esp-idf -D "SERIAL_TOOL=python;;/Users/kaeshev/esp/esp-idf/components/esptool_py/esptool/esptool.py;--chip;esp32" -D "SERIAL_TOOL_ARGS=--before=default_reset;--after=hard_reset;write_flash;@bootloader-flash_args" -D WORKING_DIRECTORY=/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 -P /Users/kaeshev/esp/esp-idf/components/esptool_py/run_serial_tool.cmake

bootloader-flash: esp-idf/bootloader/CMakeFiles/bootloader-flash
bootloader-flash: esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/build.make
.PHONY : bootloader-flash

# Rule to build all files generated by this target.
esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/build: bootloader-flash
.PHONY : esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/build

esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/clean:
	cd /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/esp-idf/bootloader && $(CMAKE_COMMAND) -P CMakeFiles/bootloader-flash.dir/cmake_clean.cmake
.PHONY : esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/clean

esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/depend:
	cd /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kaeshev/esp/IED_project /Users/kaeshev/esp/esp-idf/components/bootloader /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/esp-idf/bootloader /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/bootloader/CMakeFiles/bootloader-flash.dir/depend

