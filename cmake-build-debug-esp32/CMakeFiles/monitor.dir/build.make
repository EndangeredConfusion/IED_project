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

# Utility rule file for monitor.

# Include any custom commands dependencies for this target.
include CMakeFiles/monitor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/monitor.dir/progress.make

CMakeFiles/monitor:
	cd /Users/kaeshev/esp/esp-idf/components/esptool_py && /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -D IDF_PATH=/Users/kaeshev/esp/esp-idf -D "SERIAL_TOOL=python;-m;esp_idf_monitor" -D "SERIAL_TOOL_ARGS=--toolchain-prefix;xtensa-esp32-elf-;;--target;esp32;;--revision;0;;/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/IED_project.elf" -D WORKING_DIRECTORY=/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 -P run_serial_tool.cmake

monitor: CMakeFiles/monitor
monitor: CMakeFiles/monitor.dir/build.make
.PHONY : monitor

# Rule to build all files generated by this target.
CMakeFiles/monitor.dir/build: monitor
.PHONY : CMakeFiles/monitor.dir/build

CMakeFiles/monitor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/monitor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/monitor.dir/clean

CMakeFiles/monitor.dir/depend:
	cd /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kaeshev/esp/IED_project /Users/kaeshev/esp/IED_project /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/CMakeFiles/monitor.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/monitor.dir/depend

