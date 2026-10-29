// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_set_gain(struct aw_haptic *haptic, u8 gain)
{
	u8 data = gain;

	(void)i2c_w_bytes(haptic, 7U, &data, 1U);
}
