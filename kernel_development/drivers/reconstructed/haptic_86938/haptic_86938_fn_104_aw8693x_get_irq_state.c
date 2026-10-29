// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
struct aw_i2c {
	u8 reserved[2];
	u16 fifo_level;
};

extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

int aw8693x_get_irq_state(struct aw_haptic *haptic)
{
	s8 irq_state = 0;
	int result;

	if (*(u8 *)((u8 *)haptic + 0x11) == 1U) {
		struct aw_i2c *i2c = *(struct aw_i2c **)((u8 *)haptic + 0x328);

		i2c->fifo_level = 0x5bU;
	}
	i2c_r_bytes(haptic, 2U, (u8 *)&irq_state, 1U);
	if (*(u8 *)((u8 *)haptic + 0x11) == 1U) {
		struct aw_i2c *i2c = *(struct aw_i2c **)((u8 *)haptic + 0x328);

		i2c->fifo_level = 0U;
	}

	if (irq_state < 0) {
		*(u8 *)((u8 *)haptic + 0x1d) = 0U;
		printk(KERN_ERR "[%s][%04d]%s: chip scp int error\n",
		       "haptic_hv", 0x46b, __func__);
		result = 3;
	} else {
		result = -1;
	}
	if (((u8)irq_state & 0x40U) != 0U) {
		*(u8 *)((u8 *)haptic + 0x1d) = 0U;
		printk(KERN_ERR "[%s][%04d]%s: chip ov int error\n",
		       "haptic_hv", 0x471, __func__);
		result = 4;
	}
	if (((u8)irq_state & 0x20U) != 0U) {
		*(u8 *)((u8 *)haptic + 0x1d) = 0U;
		printk(KERN_ERR "[%s][%04d]%s: chip uvlo int error\n",
		       "haptic_hv", 0x477, __func__);
		result = 5;
	}
	if (((u8)irq_state & 0x04U) != 0U) {
		*(u8 *)((u8 *)haptic + 0x1d) = 0U;
		printk(KERN_ERR "[%s][%04d]%s: chip over current int error\n",
		       "haptic_hv", 0x47d, __func__);
		result = 6;
	}
	if (((u8)irq_state & 0x02U) != 0U) {
		*(u8 *)((u8 *)haptic + 0x1d) = 0U;
		printk(KERN_ERR "[%s][%04d]%s: chip over temperature int error\n",
		       "haptic_hv", 0x483, __func__);
		result = 7;
	}
	if (((u8)irq_state & 0x01U) != 0U) {
		*(u8 *)((u8 *)haptic + 0x1d) = 0U;
		printk(KERN_INFO "[%s][%04d]%s: chip playback done\n",
		       "haptic_hv", 0x489, __func__);
		result = 10;
	}
	if (((u8)irq_state & 0x08U) != 0U) {
		printk(KERN_INFO
		       "[%s][%04d]%s: aw_haptic rtp mode fifo almost full!\n",
		       "haptic_hv", 0x48e, __func__);
		result = 2;
	}
	if (((u8)irq_state & 0x10U) != 0U)
		result = 0;

	return result;
}
