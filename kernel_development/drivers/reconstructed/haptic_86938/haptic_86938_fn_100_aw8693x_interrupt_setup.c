// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

void aw8693x_interrupt_setup(struct aw_haptic *haptic)
{
    u8 interrupt_status = 0;

    (void)i2c_r_bytes(haptic, 2U, &interrupt_status, 1U);
    (void)i2c_w_bits(haptic, 0x46U, 0xffffffe7U, 8U);
    (void)i2c_w_bits(haptic, 3U, 0xffffff19U, 0x40U);
}
