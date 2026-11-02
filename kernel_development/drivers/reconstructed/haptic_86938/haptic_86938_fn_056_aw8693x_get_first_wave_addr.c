// SPDX-License-Identifier: GPL-2.0
#include <linux/string.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_get_first_wave_addr(struct aw_haptic *haptic, char *first_wave_addr)
{
	u8 data[3] = {0U, 0U, 0U};

	(void)i2c_r_bytes(haptic, 0x42U, data, 3U);
	memcpy(first_wave_addr, data + 1, 2U);
}
