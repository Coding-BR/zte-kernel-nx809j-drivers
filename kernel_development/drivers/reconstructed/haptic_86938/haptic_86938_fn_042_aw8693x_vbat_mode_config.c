// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

void aw8693x_vbat_mode_config(struct aw_haptic *haptic, u8 flag)
{
	(void)i2c_w_bits(haptic, 0x4c, 0xffffffbf, (u8)((flag == 1) << 6));
}