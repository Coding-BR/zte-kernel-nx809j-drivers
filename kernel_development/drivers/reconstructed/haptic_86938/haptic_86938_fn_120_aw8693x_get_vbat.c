// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler_attributes.h>
#include <linux/delay.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern void aw8693x_stop(struct aw_haptic *haptic);
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);
extern void usleep_range_state(unsigned long min, unsigned long max,
                               u32 state);

void aw8693x_get_vbat(struct aw_haptic *haptic)
{
    u8 voltage_bytes[2] __uninitialized;
    u32 voltage_code;
    u32 millivolts;

    voltage_bytes[0] = 0;
    voltage_bytes[1] = 0;
    aw8693x_stop(haptic);
    (void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 4);
    usleep_range_state(500, 600, 2);
    (void)i2c_w_bits(haptic, 0x4e, 0xffffff87U, 0);
    (void)i2c_w_bits(haptic, 0x4d, 0xfffffffcU, 1);
    usleep_range_state(3000, 0xdac, 2);
    (void)i2c_w_bits(haptic, 0x4d, 0xfffffffcU, 0);
    (void)i2c_r_bytes(haptic, 0x4f, voltage_bytes, 2);
    (void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 0);

    voltage_code = (((u32)voltage_bytes[0] & 3U) << 8) |
                   (u32)voltage_bytes[1];
    millivolts = voltage_code * 0x17d4U / 0x3ffU;
    *(u32 *)((u8 *)haptic + 0x68) = millivolts;
    if (voltage_code > 0x2f2U) {
        *(u32 *)((u8 *)haptic + 0x68) = 0x1194U;
        printk(KERN_INFO "[%s][%04d]%s: vbat max limit = %d\n",
               "haptic_hv", 0x5d7, __func__, 0x1194);
        millivolts = *(u32 *)((u8 *)haptic + 0x68);
    }
    if (millivolts < 3000U) {
        *(u32 *)((u8 *)haptic + 0x68) = 3000U;
        printk(KERN_INFO "[%s][%04d]%s: vbat min limit = %d\n",
               "haptic_hv", 0x5db, __func__, 3000);
        millivolts = *(u32 *)((u8 *)haptic + 0x68);
    }
    printk(KERN_INFO "[%s][%04d]%s: awinic->vbat=%dmV, vbat_code=0x%02X\n",
           "haptic_hv", 0x5dd, __func__, millivolts, voltage_code);
}
