// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

struct aw_haptic;
typedef int (*get_f0_fn)(struct aw_haptic *haptic);

ssize_t cont_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	void *function_table = *(void **)((char *)driver_data + 0x520);
	get_f0_fn get_f0 = *(get_f0_fn *)((char *)function_table + 0x10);
	struct aw_haptic *haptic =
		(struct aw_haptic *)((char *)driver_data - 0xa8);
	unsigned int value;

	(void)attr;
	get_f0(haptic);
	value = *(unsigned int *)((char *)driver_data - 0x38);
	return snprintf(buf, 0x1000, "cont_f0 = %d\n", value);
}
