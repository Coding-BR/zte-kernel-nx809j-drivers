// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>
#include <linux/compiler_attributes.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

void aw8693x_set_repeat_seq(struct aw_haptic *haptic, u8 sequence)
{
	/* Stock initializes only the byte passed to the synchronous helper. */
	u8 data[4] __uninitialized;

	data[0] = sequence;
	(void)i2c_w_bytes(haptic, 0x0aU, data, 1U);
	(void)i2c_w_bits(haptic, 0x12U, 0xffffff0fU, 0xf0U);
}
