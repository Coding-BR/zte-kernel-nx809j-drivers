// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>
#include <linux/compiler_attributes.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_trig3_param_config(struct aw_haptic *haptic)
{
    u32 trigger = (*(char *)((u8 *)haptic + 0x601) != 0);
    u32 control = trigger << 6;
    u8 data[4] __uninitialized;

    if (*(char *)((u8 *)haptic + 0x602) != 0)
        control = (trigger << 6) | 0xffffff80U;
    if (*(char *)((u8 *)haptic + 0x5ff) != 0)
        control |= 0x20;
    if (*(char *)((u8 *)haptic + 0x600) != 0)
        control |= 0x10;

    i2c_w_bits(haptic, 0x3a, -0xf1, control);
    data[0] = ((*(char *)((u8 *)haptic + 0x603) != 0) << 7) |
              *(u8 *)((u8 *)haptic + 0x605);
    i2c_w_bytes(haptic, 0x35, data, 1);
    data[0] = ((*(char *)((u8 *)haptic + 0x604) != 0) << 7) |
              *(u8 *)((u8 *)haptic + 0x606);
    i2c_w_bytes(haptic, 0x38, data, 1);
}
