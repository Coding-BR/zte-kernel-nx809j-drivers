// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t haptic_audio_time_show(struct device *dev, struct device_attribute *attr,
                               char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    ssize_t length;

    (void)attr;
    length = snprintf(buf, 0x1000, "haptic_audio.delay_val=%dus\n",
                      *(unsigned int *)((char *)driver_data + 0x430));
    length += snprintf(buf + length, 0x1000 - length,
                       "haptic_audio.timer_val=%dus\n",
                       *(unsigned int *)((char *)driver_data + 0x434));
    return length;
}
