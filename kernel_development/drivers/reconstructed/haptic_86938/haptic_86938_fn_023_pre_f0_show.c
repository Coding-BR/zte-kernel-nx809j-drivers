// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t pre_f0_show(struct device *dev, struct device_attribute *attr,
                    char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned int value = *(unsigned int *)((char *)driver_data + 0x3c0);

    (void)attr;
    return snprintf(buf, 0x1000, "pre_f0 = %d\n", value);
}
