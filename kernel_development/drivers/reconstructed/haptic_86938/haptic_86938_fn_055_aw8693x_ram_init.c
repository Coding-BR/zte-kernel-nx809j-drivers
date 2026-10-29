// SPDX-License-Identifier: GPL-2.0
#include <linux/delay.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

#if defined(__aarch64__)
__attribute__((naked))
void aw8693x_ram_init(struct aw_haptic *aw __attribute__((unused)),
		      u8 ram_mode __attribute__((unused)))
{
	asm volatile(
		"paciasp\n"
		"stp x29, x30, [sp, #-16]!\n"
		"mov x29, sp\n"
		"tbz w1, #0, 1f\n"
		"mov w1, #0x45\n"
		"mov w2, #-5\n"
		"mov w3, #4\n"
		"bl i2c_w_bits\n"
		"mov w0, #500\n"
		"mov w1, #600\n"
		"mov w2, #2\n"
		"bl usleep_range_state\n"
		"b 2f\n"
		"1:\n"
		"mov w1, #0x45\n"
		"mov w2, #-5\n"
		"mov w3, wzr\n"
		"bl i2c_w_bits\n"
		"2:\n"
		"ldp x29, x30, [sp], #16\n"
		"autiasp\n"
		"ret\n");
}
#else
void aw8693x_ram_init(struct aw_haptic *aw, u8 ram_mode)
{
	if ((ram_mode & 1U) == 0U) {
		(void)i2c_w_bits(aw, 0x45U, 0xfffffffbU, 0U);
	} else {
		(void)i2c_w_bits(aw, 0x45U, 0xfffffffbU, 4U);
		usleep_range_state(500U, 600U, 2U);
	}
}
#endif
