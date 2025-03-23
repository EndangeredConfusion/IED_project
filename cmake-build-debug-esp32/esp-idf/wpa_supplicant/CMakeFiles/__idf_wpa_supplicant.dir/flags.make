# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# compile C with /Users/kaeshev/.espressif/tools/xtensa-esp-elf/esp-14.2.0_20241119/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DCONFIG_CRYPTO_MBEDTLS -DCONFIG_ECC -DCONFIG_FAST_PBKDF2 -DCONFIG_GMAC -DCONFIG_IEEE80211W -DCONFIG_NO_RADIUS -DCONFIG_OWE_STA -DCONFIG_SAE -DCONFIG_SAE_PK -DCONFIG_SHA256 -DCONFIG_WPA3_SAE -DCONFIG_WPS -DEAP_MSCHAPv2 -DEAP_PEAP -DEAP_PEER_METHOD -DEAP_TLS -DEAP_TTLS -DESPRESSIF_USE -DESP_PLATFORM -DESP_SUPPLICANT -DIDF_VER=\"v5.4\" -DIEEE8021X_EAPOL -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -DSOC_XTAL_FREQ_MHZ=CONFIG_XTAL_FREQ -DUSE_WPA2_TASK -DUSE_WPS_TASK -D_GLIBCXX_HAVE_POSIX_SEMAPHORE -D_GLIBCXX_USE_POSIX_SEMAPHORE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS -D__ets__

C_INCLUDES = -I/Users/kaeshev/esp/IED_project/cmake-build-debug-esp32/config -I/Users/kaeshev/esp/esp-idf/components/wpa_supplicant/include -I/Users/kaeshev/esp/esp-idf/components/wpa_supplicant/port/include -I/Users/kaeshev/esp/esp-idf/components/wpa_supplicant/esp_supplicant/include -I/Users/kaeshev/esp/esp-idf/components/wpa_supplicant/src -I/Users/kaeshev/esp/esp-idf/components/wpa_supplicant/src/utils -I/Users/kaeshev/esp/esp-idf/components/wpa_supplicant/esp_supplicant/src -I/Users/kaeshev/esp/esp-idf/components/wpa_supplicant/src/crypto -I/Users/kaeshev/esp/esp-idf/components/esp_wifi/wifi_apps/roaming_app/include -I/Users/kaeshev/esp/esp-idf/components/newlib/platform_include -I/Users/kaeshev/esp/esp-idf/components/freertos/config/include -I/Users/kaeshev/esp/esp-idf/components/freertos/config/include/freertos -I/Users/kaeshev/esp/esp-idf/components/freertos/config/xtensa/include -I/Users/kaeshev/esp/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/Users/kaeshev/esp/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/Users/kaeshev/esp/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos -I/Users/kaeshev/esp/esp-idf/components/freertos/esp_additions/include -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/include -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/include/soc -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/include/soc/esp32 -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/dma/include -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/ldo/include -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/debug_probe/include -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/port/esp32/. -I/Users/kaeshev/esp/esp-idf/components/esp_hw_support/port/esp32/include -I/Users/kaeshev/esp/esp-idf/components/heap/include -I/Users/kaeshev/esp/esp-idf/components/heap/tlsf -I/Users/kaeshev/esp/esp-idf/components/log/include -I/Users/kaeshev/esp/esp-idf/components/soc/include -I/Users/kaeshev/esp/esp-idf/components/soc/esp32 -I/Users/kaeshev/esp/esp-idf/components/soc/esp32/include -I/Users/kaeshev/esp/esp-idf/components/soc/esp32/register -I/Users/kaeshev/esp/esp-idf/components/hal/platform_port/include -I/Users/kaeshev/esp/esp-idf/components/hal/esp32/include -I/Users/kaeshev/esp/esp-idf/components/hal/include -I/Users/kaeshev/esp/esp-idf/components/esp_rom/include -I/Users/kaeshev/esp/esp-idf/components/esp_rom/esp32/include -I/Users/kaeshev/esp/esp-idf/components/esp_rom/esp32/include/esp32 -I/Users/kaeshev/esp/esp-idf/components/esp_rom/esp32 -I/Users/kaeshev/esp/esp-idf/components/esp_common/include -I/Users/kaeshev/esp/esp-idf/components/esp_system/include -I/Users/kaeshev/esp/esp-idf/components/esp_system/port/soc -I/Users/kaeshev/esp/esp-idf/components/esp_system/port/include/private -I/Users/kaeshev/esp/esp-idf/components/xtensa/esp32/include -I/Users/kaeshev/esp/esp-idf/components/xtensa/include -I/Users/kaeshev/esp/esp-idf/components/xtensa/deprecated_include -I/Users/kaeshev/esp/esp-idf/components/lwip/include -I/Users/kaeshev/esp/esp-idf/components/lwip/include/apps -I/Users/kaeshev/esp/esp-idf/components/lwip/include/apps/sntp -I/Users/kaeshev/esp/esp-idf/components/lwip/lwip/src/include -I/Users/kaeshev/esp/esp-idf/components/lwip/port/include -I/Users/kaeshev/esp/esp-idf/components/lwip/port/freertos/include -I/Users/kaeshev/esp/esp-idf/components/lwip/port/esp32xx/include -I/Users/kaeshev/esp/esp-idf/components/lwip/port/esp32xx/include/arch -I/Users/kaeshev/esp/esp-idf/components/lwip/port/esp32xx/include/sys -I/Users/kaeshev/esp/esp-idf/components/mbedtls/port/include -I/Users/kaeshev/esp/esp-idf/components/mbedtls/mbedtls/include -I/Users/kaeshev/esp/esp-idf/components/mbedtls/mbedtls/library -I/Users/kaeshev/esp/esp-idf/components/mbedtls/esp_crt_bundle/include -I/Users/kaeshev/esp/esp-idf/components/mbedtls/mbedtls/3rdparty/everest/include -I/Users/kaeshev/esp/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m -I/Users/kaeshev/esp/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m/p256-m -I/Users/kaeshev/esp/esp-idf/components/esp_timer/include -I/Users/kaeshev/esp/esp-idf/components/esp_wifi/include -I/Users/kaeshev/esp/esp-idf/components/esp_wifi/include/local -I/Users/kaeshev/esp/esp-idf/components/esp_wifi/wifi_apps/include -I/Users/kaeshev/esp/esp-idf/components/esp_wifi/wifi_apps/nan_app/include -I/Users/kaeshev/esp/esp-idf/components/esp_event/include -I/Users/kaeshev/esp/esp-idf/components/esp_phy/include -I/Users/kaeshev/esp/esp-idf/components/esp_phy/esp32/include -I/Users/kaeshev/esp/esp-idf/components/esp_netif/include

C_FLAGS = -mlongcalls -Wno-frame-address  -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-builtin-stpcpy -fno-builtin-strncpy -g -fdiagnostics-color=always -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-error=extra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fno-shrink-wrap -fmacro-prefix-map=/Users/kaeshev/esp/IED_project=. -fmacro-prefix-map=/Users/kaeshev/esp/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -std=gnu17 -Wno-old-style-declaration -Wno-strict-aliasing -Wno-write-strings -Werror -Wno-format

