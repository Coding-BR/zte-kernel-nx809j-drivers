// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

void aw8693x_protect_config(struct aw_haptic *haptic, u8 value, u8 level)
{
	u8 threshold;
	u8 protection;

	threshold = value;
	(void)i2c_w_bits(haptic, 0x48U, 0xffffff7fU, 0U);
	if (level == 0U) {
		printk(KERN_INFO "[%s][%04d]%s: disable protection mode\n",
		       "haptic_hv", 0x2ed, __func__);
		(void)i2c_w_bits(haptic, 0x4aU, 0xffffff7fU, 0U);
	} else {
		printk(KERN_INFO "[%s][%04d]%s: enable protection mode\n",
		       "haptic_hv", 0x2e6, __func__);
		protection = level | 0x80U;
		(void)i2c_w_bytes(haptic, 0x4aU, &protection, 1U);
		(void)i2c_w_bytes(haptic, 0x4bU, &threshold, 1U);
	}
}
