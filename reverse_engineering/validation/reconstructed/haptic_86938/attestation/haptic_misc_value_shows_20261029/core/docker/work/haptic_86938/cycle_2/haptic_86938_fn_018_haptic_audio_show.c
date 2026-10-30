// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t haptic_audio_show(struct device *dev, struct device_attribute *attr,
                          char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    unsigned char enabled = *(unsigned char *)((char *)driver_data + 0x4f8);

    (void)attr;
    return snprintf(buf, 0x1000, "%d\n", enabled);
}
