// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>
#include <linux/workqueue.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

ssize_t rtp_auto_sin_store(struct device *dev, struct device_attribute *attr,
                           const char *buf, size_t count)
{
    u8 *driver_data = dev_get_drvdata(dev);
    u32 value = 0;
    struct aw_haptic *haptic;
    int ret;

    (void)attr;
    ret = kstrtouint(buf, 0, &value);
    if (ret < 0) {
        printk("\0013[%s][%04d]%s: kstrtouint fail\n",
               "haptic_hv", 0x8dd, "rtp_auto_sin_store");
        return ret;
    }

    haptic = (struct aw_haptic *)(driver_data - 0xa8);
    mutex_lock((struct mutex *)(driver_data + 0x248));
    if (value == 0) {
        *(u32 *)(driver_data - 0x68) = 0;
        i2c_w_bits(haptic, 0x2d, -0x21, 0);
    } else if (value < *(u32 *)(driver_data + 0x638)) {
        *(u32 *)(driver_data - 0x68) = 1;
        *(u32 *)(driver_data - 0x18) = value;
        i2c_w_bits(haptic, 0x2d, -0x21, 0x20);
    } else {
        *(u32 *)(driver_data - 0x68) = 0;
        printk("\0013[%s][%04d]%s: input number error:%d\n",
               "haptic_hv", 0x8ee, "rtp_auto_sin_store", value);
    }
    mutex_unlock((struct mutex *)(driver_data + 0x248));

    queue_work_on(0x20,
                  *(struct workqueue_struct **)(driver_data + 0x3a0),
                  (struct work_struct *)(driver_data + 0x2f8));
    return count;
}
