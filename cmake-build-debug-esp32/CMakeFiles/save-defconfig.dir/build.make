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

# Utility rule file for save-defconfig.

# Include any custom commands dependencies for this target.
include CMakeFiles/save-defconfig.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/save-defconfig.dir/progress.make

CMakeFiles/save-defconfig:
	python /Users/kaeshev/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --list-separator=semicolon --env-file /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/config.env
	python -m kconfgen --list-separator=semicolon --kconfig /Users/kaeshev/esp/esp-idf/Kconfig --sdkconfig-rename /Users/kaeshev/esp/esp-idf/sdkconfig.rename --config /Users/kaeshev/esp/IED_project/sdkconfig --env-file /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/config.env --dont-write-deprecated --output savedefconfig /Users/kaeshev/esp/IED_project/sdkconfig.defaults

save-defconfig: CMakeFiles/save-defconfig
save-defconfig: CMakeFiles/save-defconfig.dir/build.make
.PHONY : save-defconfig

# Rule to build all files generated by this target.
CMakeFiles/save-defconfig.dir/build: save-defconfig
.PHONY : CMakeFiles/save-defconfig.dir/build

CMakeFiles/save-defconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/save-defconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/save-defconfig.dir/clean

CMakeFiles/save-defconfig.dir/depend:
	cd /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kaeshev/esp/IED_project /Users/kaeshev/esp/IED_project /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32 /Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/CMakeFiles/save-defconfig.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/save-defconfig.dir/depend

