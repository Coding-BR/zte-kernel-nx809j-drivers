// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

ssize_t cont_brk_time_store(struct device *dev, struct device_attribute *attr,
                            const char *buf, size_t count)
{
    void *driver_data = dev_get_drvdata(dev);
    u8 *value = (u8 *)driver_data + 0x3f5;
    struct aw_haptic *haptic;
    int ret;

    (void)attr;
    ret = kstrtou8(buf, 0, value);
    if (ret < 0)
        return ret;

    haptic = (struct aw_haptic *)((u8 *)driver_data - 0xa8);
    mutex_lock((struct mutex *)((u8 *)driver_data + 0x248));
    i2c_w_bytes(haptic, 0x21, value, 1);
    mutex_unlock((struct mutex *)((u8 *)driver_data + 0x248));

    return count;
}
