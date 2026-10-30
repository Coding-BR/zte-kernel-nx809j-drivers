// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t vmax_show(struct device *dev, struct device_attribute *attr,
                  char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned int vmax = *(unsigned int *)((char *)driver_data - 0x78);

    (void)attr;
    return snprintf(buf, 0x1000, "vmax = 0x%02X\n", vmax);
}
