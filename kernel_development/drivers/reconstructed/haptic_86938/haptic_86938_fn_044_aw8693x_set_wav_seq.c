// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_set_wav_seq(struct aw_haptic *haptic, u8 index, u8 wav)
{
	u8 sequence = wav;

	(void)i2c_w_bytes(haptic, (u8)(index + 10), &sequence, 1);
}
