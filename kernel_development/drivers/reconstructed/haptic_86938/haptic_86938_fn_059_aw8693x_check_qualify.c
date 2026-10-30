// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler_attributes.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

int aw8693x_check_qualify(struct aw_haptic *haptic)
{
	u8 data[4] __uninitialized;

	data[0] = 0U;
	(void)i2c_r_bytes(haptic, 100U, data, 1U);
	if ((s8)data[0] >= 0) {
		printk("\0013[%s][%04d]%s: unqualified chip\n",
		       "haptic_hv", 310, "aw8693x_check_qualify");
		return -ERANGE;
	}

	printk("\0016[%s][%04d]%s: qualified chip\n",
	       "haptic_hv", 313, "aw8693x_check_qualify");
	return 0;
}
