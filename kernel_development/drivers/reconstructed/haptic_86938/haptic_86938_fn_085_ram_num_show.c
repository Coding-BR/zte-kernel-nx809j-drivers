// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;
void get_ram_num(struct aw_haptic *haptic);

ssize_t ram_num_show(struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	void *driver_data = *(void **)((u8 *)dev + 0x98);
	struct aw_haptic *haptic =
		(struct aw_haptic *)((u8 *)driver_data - 0xa8);

	(void)attr;
	get_ram_num(haptic);
	return snprintf(buf, 0x1000, "ram_num = %d\n",
			*(u8 *)((u8 *)driver_data + 0x3b4));
}
