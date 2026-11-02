// SPDX-License-Identifier: GPL-2.0
#include <linux/kernel.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

int aw8693x_judge_rtp_going(struct aw_haptic *haptic)
{
	u8 status = 0;

	(void)i2c_r_bytes(haptic, 0x3f, &status, 1);
	if (status == 0x08) {
		printk(KERN_INFO "[%s][%04d]%s: rtp is going on\n",
		       "haptic_hv", 0x3fe, __func__);
		return 1;
	}
	return 0;
}
