// SPDX-License-Identifier: GPL-2.0
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

long aw8693x_get_reg(struct aw_haptic *haptic, long length, char *buf)
{
    u8 reg_data[0x83] = { 0 };
    unsigned long reg;
    u32 reg_low;
    int written;

    (void)i2c_r_bytes(haptic, 0, reg_data, 0x32);
    (void)i2c_r_bytes(haptic, 0x33, reg_data + 0x33, 0x0f);
    (void)i2c_r_bytes(haptic, 0x43, reg_data + 0x43, 0x40);

    reg = 0;
    do {
        reg_low = (u32)reg & 0xff;
        if (reg_low != 0x32 && reg_low != 0x42) {
            written = snprintf(buf + length, 0x1000 - length,
                               "reg:0x%02X=0x%02X\n",
                               (u32)reg, reg_data[reg]);
            length += written;
        }
        reg++;
    } while (reg != 0x83);

    return length;
}
