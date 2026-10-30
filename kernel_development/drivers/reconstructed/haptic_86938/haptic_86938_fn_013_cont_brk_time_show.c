// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t cont_brk_time_show(struct device *dev, struct device_attribute *attr,
                           char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned char value = *(unsigned char *)((char *)driver_data + 0x3f5);

    (void)attr;
    return snprintf(buf, 0x1000, "cont_brk_time = 0x%02X\n", value);
}
