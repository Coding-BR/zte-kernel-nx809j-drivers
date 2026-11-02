// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

#if defined(__aarch64__)
__attribute__((naked))
void aw8693x_set_wav_loop(struct aw_haptic *haptic, u8 index, u8 loop)
{
	asm volatile(
#include "haptic_86938_fn_043_aw8693x_set_wav_loop_arm64.inc"
	);
}
#else
void aw8693x_set_wav_loop(struct aw_haptic *haptic, u8 index, u8 loop)
{
	u32 loop_value = loop;
	u32 mask;

	if ((index & 1U) == 0U) {
		loop_value <<= 4;
		mask = 0xffffff0fU;
	} else {
		mask = 0xfffffff0U;
	}

	(void)i2c_w_bits(haptic,
			 (u8)(((index >> 1) & 0x7fU) + 0x12U),
			 mask, (u8)loop_value);
}
#endif
