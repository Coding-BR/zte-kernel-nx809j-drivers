// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/mutex.h>
#include <linux/types.h>

ssize_t ram_vbat_comp_store(struct device *dev,
			    struct device_attribute *attr,
			    const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	unsigned int enabled = 0;
	int result;

	(void)attr;
	result = kstrtouint(buf, 0, &enabled);
	if (result < 0)
		return result;
	mutex_lock((struct mutex *)((char *)driver_data + 0x248));
	*(bool *)((char *)driver_data - 0x8c) = enabled != 0;
	mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	return count;
}
