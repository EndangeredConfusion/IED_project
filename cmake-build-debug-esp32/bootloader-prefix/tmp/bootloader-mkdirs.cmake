# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/kaeshev/esp/esp-idf/components/bootloader/subproject")
  file(MAKE_DIRECTORY "/Users/kaeshev/esp/esp-idf/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader"
  "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader-prefix"
  "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader-prefix/tmp"
  "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader-prefix/src/bootloader-stamp"
  "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader-prefix/src"
  "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
