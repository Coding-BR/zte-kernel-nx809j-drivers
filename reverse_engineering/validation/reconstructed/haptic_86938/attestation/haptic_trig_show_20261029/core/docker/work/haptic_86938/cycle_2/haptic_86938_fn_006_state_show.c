// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t state_show(struct device *dev, struct device_attribute *attr,
                   char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned int state = *(unsigned int *)((char *)driver_data - 0x68);

    (void)attr;
    return snprintf(buf, 0x1000, "state = %d\n", state);
}
