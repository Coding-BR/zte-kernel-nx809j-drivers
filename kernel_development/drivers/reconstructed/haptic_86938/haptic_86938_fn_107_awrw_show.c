// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/printk.h>
#include <linux/types.h>

ssize_t awrw_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	u8 *private_data;
	u8 *data;
	ssize_t total;
	u32 count;
	u32 index;
	int written;

	(void)attr;
	private_data = *(u8 **)((u8 *)dev + 0x98);
	if (*(u32 *)(private_data + 0x528) == 1U) {
		data = *(u8 **)(private_data + 0x530);
		if (data != NULL) {
			count = *(u32 *)(private_data + 0x52c);
			if (count == 0U) {
				total = 0;
			} else {
				total = 0;
				index = 0U;
				do {
					data = *(u8 **)(private_data + 0x530);
					written = snprintf(buf + total,
							   0x1000UL - total,
							   "0x%02x,",
							   data[(s32)index]);
					total += written;
					index++;
					count = *(u32 *)(private_data + 0x52c);
				} while (index < count);
			}
			return total + snprintf(buf + total - 1,
						0x1000UL - total, "\n");
		}
		printk(KERN_ERR "[%s][%04d]%s: awrw lack param\n",
		       "haptic_hv", 0xc54, __func__);
		return -ERANGE;
	}
	printk(KERN_ERR "[%s][%04d]%s: no read mode\n",
	       "haptic_hv", 0xc50, __func__);
	return -ERANGE;
}
