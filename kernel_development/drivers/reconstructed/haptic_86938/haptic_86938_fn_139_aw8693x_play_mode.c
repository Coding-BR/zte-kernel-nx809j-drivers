// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic {
	u8 reserved_00[0x17];
	u8 play_mode;
};

_Static_assert(__builtin_offsetof(struct aw_haptic, play_mode) == 0x17,
	       "play mode field offset");

extern int i2c_w_bits(struct aw_haptic *aw, u8 reg, u32 mask, u8 value);

#if defined(__aarch64__)
__attribute__((naked))
void aw8693x_play_mode(struct aw_haptic *aw, u8 mode)
{
	asm volatile(
#include "haptic_86938_fn_139_aw8693x_play_mode_arm64.inc"
	);
}
#else
void aw8693x_play_mode(struct aw_haptic *aw, u8 mode)
{
	struct aw_haptic *haptic = aw;
	const char *driver_tag = "haptic_hv";
	u32 play_mode = mode;

	if ((s32)play_mode > 2) {
		if (play_mode != 3) {
			if (play_mode != 4) {
				if (play_mode != 5) {
					printk(KERN_ERR
					       "[%s][%04d]%s: play mode %d error\n",
					       driver_tag, 0x27f, __func__, play_mode);
					return;
				}
				printk(KERN_INFO
				       "[%s][%04d]%s: enter ram loop mode\n",
				       driver_tag, 0x259, __func__);
				haptic->play_mode = 5;
				(void)i2c_w_bits(haptic, 8, ~3U, 0);
				(void)i2c_w_bits(haptic, 8, ~4U, 0);
				printk(KERN_INFO
				       "[%s][%04d]%s: haptic bst mode = bypass\n",
				       driver_tag, 0x1fe, "aw8693x_bst_mode_config");
				(void)i2c_w_bits(haptic, 6, ~0x20U, 0);
				(void)i2c_w_bits(haptic, 0x4c, ~0x40U, 0x40);
				return;
			}
			printk(KERN_INFO "[%s][%04d]%s: enter cont mode\n",
			       driver_tag, 0x275, __func__);
			haptic->play_mode = 4;
			(void)i2c_w_bits(haptic, 8, ~3U, 2);
			(void)i2c_w_bits(haptic, 8, ~4U, 4);
			printk(KERN_INFO
			       "[%s][%04d]%s: haptic bst mode = bypass\n",
			       driver_tag, 0x1fe, "aw8693x_bst_mode_config");
			(void)i2c_w_bits(haptic, 6, ~0x20U, 0);
			(void)i2c_w_bits(haptic, 0x4c, ~0x40U, 0x40);
			return;
		}
		printk(KERN_INFO "[%s][%04d]%s: enter trig mode\n",
		       driver_tag, 0x26d, __func__);
		haptic->play_mode = 3;
		(void)i2c_w_bits(haptic, 8, ~3U, 0);
		(void)i2c_w_bits(haptic, 0x4c, ~0x40U, 0);
		return;
	}

	if (play_mode != 0) {
		if (play_mode == 1) {
				printk(KERN_INFO
				       "[%s][%04d]%s: enter ram mode\n",
				       driver_tag, 0x24f, __func__);
				haptic->play_mode = 1;
				(void)i2c_w_bits(haptic, 8, ~3U, 0);
				(void)i2c_w_bits(haptic, 8, ~4U, 0);
			} else {
				if (play_mode != 2) {
					printk(KERN_ERR
					       "[%s][%04d]%s: play mode %d error\n",
					       driver_tag, 0x27f, __func__, play_mode);
					return;
				}
				printk(KERN_INFO
				       "[%s][%04d]%s: enter rtp mode\n",
				       driver_tag, 0x263, __func__);
				haptic->play_mode = 2;
				(void)i2c_w_bits(haptic, 8, ~3U, 1);
				(void)i2c_w_bits(haptic, 8, ~4U, 4);
			}

			printk(KERN_INFO
			       "[%s][%04d]%s: haptic bst mode = bst\n",
			       driver_tag, 0x1f8, "aw8693x_bst_mode_config");
			(void)i2c_w_bits(haptic, 6, ~0x20U, 0x20);
			(void)i2c_w_bits(haptic, 0x4c, ~0x40U, 0);
			return;
		}

		printk(KERN_INFO "[%s][%04d]%s: enter standby mode\n",
		       driver_tag, 0x23e, __func__);
		haptic->play_mode = 0;
		(void)i2c_w_bits(haptic, 0x45, ~0x20U, 0x20);
		(void)i2c_w_bits(haptic, 0x45, ~0x20U, 0);
		return;
}
#endif
