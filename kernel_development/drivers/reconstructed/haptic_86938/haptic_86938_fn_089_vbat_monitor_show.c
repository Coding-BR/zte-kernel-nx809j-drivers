// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>

struct aw_haptic;
typedef void (*get_vbat_fn)(struct aw_haptic *haptic);

ssize_t vbat_monitor_show(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	struct aw_haptic *haptic =
		(struct aw_haptic *)((char *)driver_data - 0xa8);
	void *function_table;
	get_vbat_fn get_vbat;
	unsigned int value;
	ssize_t count;

	(void)attr;
	mutex_lock((struct mutex *)((char *)driver_data + 0x248));
	function_table = *(void **)((char *)driver_data + 0x520);
	get_vbat = *(get_vbat_fn *)((char *)function_table + 0x40);
	get_vbat(haptic);
	value = *(unsigned int *)((char *)driver_data - 0x40);
	count = snprintf(buf, 0x1000, "vbat_monitor = %d\n", value);
	mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	return count;
}
