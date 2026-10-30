// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/firmware.h>
#include <linux/gfp_types.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/module.h>
#include <linux/types.h>

extern char *aw_ram_name;
extern void ram_load(const struct firmware *firmware, void *context);

ssize_t ram_update_store(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	unsigned int ram_update = 0;
	int result;

	(void)attr;
	result = kstrtouint(buf, 0, &ram_update);
	if (result < 0)
		return result;
	if (ram_update != 0) {
		*(u16 *)((char *)driver_data - 0xa3) = 0;
		(void)request_firmware_nowait(
			THIS_MODULE, true, aw_ram_name,
			*(struct device **)((char *)driver_data + 0x278),
			GFP_KERNEL, (char *)driver_data - 0xa8, ram_load);
	}
	return count;
}
