// SPDX-License-Identifier: GPL-2.0
#include <linux/string.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

void aw8693x_get_wav_seq(struct aw_haptic *haptic, unsigned int count)
{
	u64 sequence = 0;
	u32 read_length = count;

	if (read_length > 8)
		read_length = 8;
	(void)i2c_r_bytes(haptic, 10, (u8 *)&sequence, read_length);
	if (count != 0)
		memcpy((u8 *)haptic + 0x1e, &sequence, read_length);
}
