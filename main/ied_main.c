// Kaeshev Alapati
// 05/22/2025

#include "driver/gpio.h"
#include "driver/i2c.h"
#include "driver/i2c_master.h"
#include "driver/i2c_slave.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"

#define ADDR 0b1101000

void configure_i2c() {
    i2c_config_t config = {
            .mode = I2C_MODE_MASTER,
            .sda_io_num = GPIO_NUM_21,
            .sda_pullup_en = GPIO_PULLUP_ENABLE,
            .scl_io_num = GPIO_NUM_22,
            .scl_pullup_en = GPIO_PULLUP_ENABLE,
            .master.clk_speed = 400000
    };
    i2c_param_config(I2C_NUM_0, &config);

    esp_err_t res = i2c_driver_install(I2C_NUM_0, config.mode,0, 0, 0);
    if (res != ESP_OK) {
        ESP_LOGE("I2C", "Config failed line 24");
    }
}

void wake_up_mpu6050() {
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (ADDR << 1) | I2C_MASTER_WRITE, true);
    i2c_master_write_byte(cmd, 0x6B, true);  // PWR_MGMT_1 register
    i2c_master_write_byte(cmd, 0x00, true);  // Wake up
    i2c_master_stop(cmd);

    esp_err_t res = i2c_master_cmd_begin(I2C_NUM_0, cmd, 1000 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);

    if (res != ESP_OK) {
        ESP_LOGE("I2C", "Failed to wake up MPU-6050");
    } else {
        ESP_LOGI("I2C", "MPU-6050 is awake");
    }
}

void read_gyroscope(uint8_t * data) {
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    // write addr and what regs i want
    i2c_master_write_byte(cmd, (ADDR << 1) | I2C_MASTER_WRITE, true);
    uint8_t gyroscope_regs[6] = {0x43, 0x44, 0x45, 0x46, 0x47, 0x48};
    i2c_master_write_byte(cmd, gyroscope_regs[0], true);

    // write addr and read
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (ADDR << 1) | I2C_MASTER_READ, true);

    i2c_master_read(cmd, data, 5, I2C_MASTER_ACK);
    i2c_master_read_byte(cmd, &data[5], I2C_MASTER_NACK);
    i2c_master_stop(cmd);

    esp_err_t res = i2c_master_cmd_begin(I2C_NUM_0, cmd, 1000 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);
    if (res != ESP_OK) {
        ESP_LOGE("I2C", "Failed to wake up MPU-6050, error: %d", res);
    }
}

void i2c_scan() {
    printf("Scanning I2C bus...\n");
    for (uint8_t addr = 1; addr < 127; addr++) {
        i2c_cmd_handle_t cmd = i2c_cmd_link_create();
        i2c_master_start(cmd);
        i2c_master_write_byte(cmd, (addr << 1) | I2C_MASTER_WRITE, true);
        i2c_master_stop(cmd);

        esp_err_t res = i2c_master_cmd_begin(I2C_NUM_0, cmd, 1000 / portTICK_PERIOD_MS);
        i2c_cmd_link_delete(cmd);

        if (res == ESP_OK) {
            printf("Found device at 0x%02X\n", addr);
        }
    }
    printf("I2C scan complete.\n");
}

void app_main(void) {
    configure_i2c();
    i2c_scan();
    wake_up_mpu6050();

    gpio_set_direction(GPIO_NUM_23, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_18, GPIO_MODE_OUTPUT);

    uint8_t data[6];
    uint16_t gx = 0;
    uint16_t gy = 0;
    uint16_t gz = 0;

    bool level_23 = 0;
    bool level_18 = 0;

    while (true) {
        gpio_set_level(GPIO_NUM_23, level_23);
        gpio_set_level(GPIO_NUM_18, level_18);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        level_23 = !level_23;
        level_18 = !level_18;

        read_gyroscope(data);
        gx = data[0] << 8 | data[1];
        gy = data[2] << 8 | data[3];
        gz = data[4] << 8 | data[5];
        printf("\033[2J\033[H");  // Clear screen and move cursor to top-left
        printf("X: %d, Y: %d, Z: %d", gx, gy, gz);
    }
}
