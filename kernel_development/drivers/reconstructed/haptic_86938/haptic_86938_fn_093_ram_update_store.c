// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/gfp_types.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/types.h>

#include "haptic_86938_internal.h"

ssize_t ram_update_store(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	unsigned int ram_update = 0;
	int result;

	(void)attr;
	if (haptic_lifetime_is_shutting_down())
		return -ENODEV;
	result = kstrtouint(buf, 0, &ram_update);
	if (result < 0)
		return result;
	if (ram_update != 0) {
		*(u16 *)((char *)driver_data - 0xa3) = 0;
		(void)haptic_lifetime_request_ram_firmware(
			(char *)driver_data - 0xa8);
	}
	return count;
}
