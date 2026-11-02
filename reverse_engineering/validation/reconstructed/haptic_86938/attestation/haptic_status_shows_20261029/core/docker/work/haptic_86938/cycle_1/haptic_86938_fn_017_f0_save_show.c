// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t f0_save_show(struct device *dev, struct device_attribute *attr,
                     char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned int value = *(unsigned int *)((char *)driver_data - 0x20);

    (void)attr;
    return snprintf(buf, 0x1000, "f0_cali_data = 0x%02X\n", value);
}
