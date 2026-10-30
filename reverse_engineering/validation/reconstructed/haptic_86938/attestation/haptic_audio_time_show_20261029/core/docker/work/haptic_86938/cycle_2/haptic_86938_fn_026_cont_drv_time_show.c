// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t cont_drv_time_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned char first = *((unsigned char *)driver_data + 0x3f8);
    unsigned char second = *((unsigned char *)driver_data + 0x3f9);

    (void)attr;
    return snprintf(buf, 0x1000, "cont_drv1_time = 0x%02X, cont_drv2_time = 0x%02X\n", first, second);
}
