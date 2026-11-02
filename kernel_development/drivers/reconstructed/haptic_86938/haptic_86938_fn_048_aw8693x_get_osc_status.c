// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

u8 aw8693x_get_osc_status(struct aw_haptic *haptic)
{
	u8 data = 0;

	(void)i2c_r_bytes(haptic, 0x04U, &data, 1U);
	return (u8)(data & 1U);
}
