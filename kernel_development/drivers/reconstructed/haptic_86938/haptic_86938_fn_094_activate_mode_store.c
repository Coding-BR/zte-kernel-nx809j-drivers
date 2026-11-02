// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/mutex.h>
#include <linux/types.h>

ssize_t activate_mode_store(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	unsigned int activate_mode = 0;
	int result;

	(void)attr;
	result = kstrtouint(buf, 0, &activate_mode);
	if (result < 0)
		return result;
	mutex_lock((struct mutex *)((char *)driver_data + 0x248));
	*(char *)((char *)driver_data - 0x8d) = (char)activate_mode;
	mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	return count;
}
