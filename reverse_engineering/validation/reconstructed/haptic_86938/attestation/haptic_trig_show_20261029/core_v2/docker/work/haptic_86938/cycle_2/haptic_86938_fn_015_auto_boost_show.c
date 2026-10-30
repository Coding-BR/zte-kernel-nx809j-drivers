// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t auto_boost_show(struct device *dev, struct device_attribute *attr,
                        char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned char enabled = *(unsigned char *)((char *)driver_data - 0x90);

    (void)attr;
    return snprintf(buf, 0x1000, "auto_boost = %d\n", enabled);
}
