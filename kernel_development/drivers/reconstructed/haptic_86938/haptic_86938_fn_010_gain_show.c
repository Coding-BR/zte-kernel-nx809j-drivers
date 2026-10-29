// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t gain_show(struct device *dev, struct device_attribute *attr,
                  char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned int gain = *(unsigned int *)((char *)driver_data - 0x74);

    (void)attr;
    return snprintf(buf, 0x1000, "gain = 0x%02X\n", gain);
}
