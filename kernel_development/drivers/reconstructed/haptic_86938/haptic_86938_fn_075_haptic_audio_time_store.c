// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

ssize_t haptic_audio_time_store(struct device *dev, struct device_attribute *attr,
                                const char *buf, size_t count)
{
    u8 *driver_data = dev_get_drvdata(dev);
    u32 values[2] = {0, 0};
    int parsed;

    (void)attr;
    parsed = sscanf(buf, "%d %d", &values[0], &values[1]);
    if (parsed == 2) {
        *(u32 *)(driver_data + 0x430) = values[0];
        *(u32 *)(driver_data + 0x434) = values[1];
    }
    return count;
}
