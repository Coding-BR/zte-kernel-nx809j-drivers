// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler_attributes.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_irq_clear(struct aw_haptic *haptic)
{
	/* Stock initializes only byte zero before the one-byte read. */
	u8 data[4] __uninitialized;

	data[0] = 0U;
	(void)i2c_r_bytes(haptic, 0x02U, data, 1U);
	printk("\0016[%s][%04d]%s: reg SYSINT=0x%02X\n",
	       "haptic_hv", 1099, "aw8693x_irq_clear", data[0]);
}
