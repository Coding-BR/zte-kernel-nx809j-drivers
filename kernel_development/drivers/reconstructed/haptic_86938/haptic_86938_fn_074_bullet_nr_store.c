// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>

ssize_t bullet_nr_store(struct device *dev, struct device_attribute *attr,
                        const char *buf, size_t count)
{
    u8 *driver_data = dev_get_drvdata(dev);
    u32 value = 0;
    int ret;

    (void)attr;
    ret = kstrtouint(buf, 0, &value);
    if (ret < 0)
        return ret;

    mutex_lock((struct mutex *)(driver_data + 0x248));
    *(u32 *)(driver_data - 0x28) = value;
    mutex_unlock((struct mutex *)(driver_data + 0x248));
    return count;
}
