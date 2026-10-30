// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

#if defined(__aarch64__)
__attribute__((naked))
void aw8693x_set_rtp_aei(struct aw_haptic *haptic, u8 flag)
{
	asm volatile(
#include "haptic_86938_fn_040_aw8693x_set_rtp_aei_arm64.inc"
	);
}
#else
void aw8693x_set_rtp_aei(struct aw_haptic *haptic, u8 flag)
{
	u8 value = (flag & 1) ? 0 : 0x10;

	(void)i2c_w_bits(haptic, 0x03, 0xffffffef, value);
}
#endif
