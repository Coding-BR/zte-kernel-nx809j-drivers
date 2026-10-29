// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u32 reg, u8 *data,
		       u32 length);

ssize_t reg_store(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	unsigned int values[2] = { 0 };
	u8 data;
	int parsed;

	(void)attr;
	parsed = sscanf(buf, "%x %x", &values[0], &values[1]);
	if (parsed == 2) {
		data = (u8)values[1];
		(void)i2c_w_bytes((struct aw_haptic *)((char *)driver_data - 0xa8),
				  values[0], &data, 1);
	}
	return count;
}
