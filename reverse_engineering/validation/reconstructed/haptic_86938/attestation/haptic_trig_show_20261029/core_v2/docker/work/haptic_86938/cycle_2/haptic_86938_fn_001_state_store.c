// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct device;
struct device_attribute;

ssize_t state_store(struct device *dev, struct device_attribute *attr,
                    const char *buf, size_t count)
{
	(void)dev;
	(void)attr;
	(void)buf;
	return count;
}
