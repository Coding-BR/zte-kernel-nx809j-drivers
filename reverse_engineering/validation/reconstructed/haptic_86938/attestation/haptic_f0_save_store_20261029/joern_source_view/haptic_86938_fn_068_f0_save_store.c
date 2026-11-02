// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

ssize_t f0_save_store(struct device *dev, struct device_attribute *attr,
                      const char *buf, size_t count)
{
    u8 *driver_data = dev_get_drvdata(dev);
    u32 value = 0;
    int ret;

    (void)attr;
    ret = kstrtouint(buf, 0, &value);
    if (ret < 0)
        return ret;

    *(u32 *)(driver_data - 0x20) = value;
    return count;
}
