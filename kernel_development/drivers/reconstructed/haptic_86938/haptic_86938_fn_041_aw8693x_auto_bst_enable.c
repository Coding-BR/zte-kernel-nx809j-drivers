// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

void aw8693x_auto_bst_enable(struct aw_haptic *haptic, u8 flag)
{
	*((u8 *)haptic + 0x18) = flag;
	(void)i2c_w_bits(haptic, 0x08, 0xffffffef, (u8)((flag != 0) << 4));
}
