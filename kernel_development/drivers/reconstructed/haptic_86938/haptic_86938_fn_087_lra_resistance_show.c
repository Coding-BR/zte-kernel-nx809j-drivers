// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

struct aw_haptic;
typedef void (*get_lra_resistance_fn)(struct aw_haptic *haptic);

ssize_t lra_resistance_show(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	void *function_table = *(void **)((char *)driver_data + 0x520);
	get_lra_resistance_fn get_lra_resistance =
		*(get_lra_resistance_fn *)((char *)function_table + 0x78);
	struct aw_haptic *haptic =
		(struct aw_haptic *)((char *)driver_data - 0xa8);
	unsigned int value;

	(void)attr;
	get_lra_resistance(haptic);
	value = *(unsigned int *)((char *)driver_data - 0x44);
	return snprintf(buf, 0x1000, "lra_resistance = %d\n", value);
}
