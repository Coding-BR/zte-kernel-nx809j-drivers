// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/hrtimer.h>
#include <linux/kernel.h>
#include <linux/types.h>

ssize_t duration_aw_show(struct device *dev, struct device_attribute *attr,
                         char *buf)
{
    u8 *driver_data = dev_get_drvdata(dev);
    struct hrtimer *timer = (struct hrtimer *)(driver_data + 0x288);
    long long remaining_ms;

    (void)attr;
    if (hrtimer_active(timer))
        remaining_ms = __hrtimer_get_remaining(timer, false) / 1000000;
    else
        remaining_ms = 0;

    return snprintf(buf, 0x1000, "duration = %lldms\n", remaining_ms);
}
