// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

u8 aw8693x_rtp_get_fifo_aes(struct aw_haptic *haptic)
{
	u8 data = 0;

	(void)i2c_r_bytes(haptic, 0x01U, &data, 1U);
	return (u8)((data >> 4) & 1U);
}
