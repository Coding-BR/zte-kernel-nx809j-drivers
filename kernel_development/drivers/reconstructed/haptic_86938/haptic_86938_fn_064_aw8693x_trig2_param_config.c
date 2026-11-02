// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>
#include <linux/compiler_attributes.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_trig2_param_config(struct aw_haptic *haptic)
{
    u32 trigger = (*(char *)((u8 *)haptic + 0x5f4) != 0);
    u32 control = trigger << 2;
    u8 data[4] __uninitialized;

    if (*(char *)((u8 *)haptic + 0x5f5) != 0)
        control = (trigger << 2) | 8;
    if (*(char *)((u8 *)haptic + 0x5f2) != 0)
        control |= 2;
    if (*(char *)((u8 *)haptic + 0x5f3) != 0)
        control += 1;

    i2c_w_bits(haptic, 0x39, -0x10, control);
    data[0] = ((*(char *)((u8 *)haptic + 0x5f6) != 0) << 7) |
              *(u8 *)((u8 *)haptic + 0x5f8);
    i2c_w_bytes(haptic, 0x34, data, 1);
    data[0] = ((*(char *)((u8 *)haptic + 0x5f7) != 0) << 7) |
              *(u8 *)((u8 *)haptic + 0x5f9);
    i2c_w_bytes(haptic, 0x37, data, 1);
}
