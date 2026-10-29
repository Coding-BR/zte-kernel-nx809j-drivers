// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_i2c {
	u8 reserved[2];
	u16 fifo_level;
};

struct aw_haptic {
	u8 reserved0[0x11];
	u8 rtp_mode;
	u8 reserved1[0x328 - 0x12];
	struct aw_i2c *i2c;
};

extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

u8 aw8693x_rtp_get_fifo_afi(struct aw_haptic *haptic)
{
	u8 data = 0;

	if (haptic->rtp_mode == 1U)
		haptic->i2c->fifo_level = 0x005bU;
	(void)i2c_r_bytes(haptic, 0x02U, &data, 1U);
	if (haptic->rtp_mode == 1U)
		haptic->i2c->fifo_level = 0;
	return (u8)((data >> 3) & 1U);
}
