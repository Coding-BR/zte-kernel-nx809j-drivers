// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

void aw8693x_set_bst_vol(struct aw_haptic *haptic, u8 bst_vol)
{
	if (bst_vol < 6U)
		bst_vol = 5U;
	if (bst_vol > 0x18U)
		bst_vol = 0x19U;

	(void)i2c_w_bits(haptic, 6U, 0xffffffe0U, bst_vol);
}
