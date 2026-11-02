// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_set_rtp_data(struct aw_haptic *haptic, u8 *data, u32 length)
{
	(void)i2c_w_bytes(haptic, 0x32, data, length);
}
