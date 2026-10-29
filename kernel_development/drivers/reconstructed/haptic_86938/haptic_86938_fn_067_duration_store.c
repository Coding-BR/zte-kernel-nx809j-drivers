// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

ssize_t duration_store(struct device *dev, struct device_attribute *attr,
                       const char *buf, size_t count)
{
    u8 *driver_data = dev_get_drvdata(dev);
    u32 value = 0;
    int ret;

    (void)attr;
    ret = kstrtouint(buf, 0, &value);
    if (ret < 0)
        return ret;

    if (value)
        *(u32 *)(driver_data - 0x54) = value;

    return count;
}
