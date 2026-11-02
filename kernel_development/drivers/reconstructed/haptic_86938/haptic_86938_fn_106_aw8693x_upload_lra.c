// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

void aw8693x_upload_lra(struct aw_haptic *haptic, unsigned int mode)
{
	u8 trim_lra;
	u8 trim_value;
	u32 log_value;

	trim_lra = 0U;
	if (__builtin_expect(mode == 2, 0))
		goto mode_2;
	asm goto("cmp %w[mode], #1\n\t"
		 "b.eq %l[mode_1]\n\t"
		 "cbnz %w[mode], %l[invalid_mode]\n\t"
		 :
		 : [mode] "r" (mode)
		 : "cc"
		 : invalid_mode, mode_1);

	printk(KERN_INFO "[%s][%04d]%s: write zero to trim_lra!\n",
	       "haptic_hv", 0x2bf, __func__);
	asm goto("b %l[write_value]" : : : : write_value);

mode_1:
	asm volatile("ldr %w0, [%1, #0x88]"
		     : "=r" (log_value)
		     : "r" (haptic)
		     : "x0", "x1", "x2", "x3");
	printk(KERN_INFO
	       "[%s][%04d]%s: write f0_cali_data to trim_lra = 0x%02X\n",
	       "haptic_hv", 0x2c2, __func__,
	       log_value);
	asm goto("b %l[f0_value]" : : : : f0_value);

mode_2:
	asm volatile("ldr %w0, [%1, #0x98]"
		     : "=r" (log_value)
		     : "r" (haptic)
		     : "x0", "x1", "x2", "x3");
	printk(KERN_INFO
	       "[%s][%04d]%s: write osc_cali_data to trim_lra = 0x%02X\n",
	       "haptic_hv", 0x2c6, __func__,
	       log_value);
	asm volatile("ldrb %w0, [%1, #0x98]"
		     : "=r" (trim_value)
		     : "r" (haptic));
	trim_lra = trim_value;
	asm goto("b %l[mask_value]" : : : : mask_value);

invalid_mode:
	printk(KERN_ERR
	       "[%s][%04d]%s: error param, write f0_cali_data to trim_lra!\n",
	       "haptic_hv", 0x2ca, __func__);
f0_value:
	asm volatile("ldrb %w0, [%1, #0x88]"
		     : "=r" (trim_value)
		     : "r" (haptic));
	trim_lra = trim_value;
mask_value:
	trim_lra &= 0x7fU;

write_value:
	(void)i2c_w_bytes(haptic, 0x5dU, &trim_lra, 1U);
}
