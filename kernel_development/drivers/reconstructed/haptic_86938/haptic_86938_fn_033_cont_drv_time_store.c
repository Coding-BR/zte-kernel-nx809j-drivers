// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

ssize_t cont_drv_time_store(struct device *dev, struct device_attribute *attr,
                            const char *buf, size_t count)
{
    unsigned char *driver_data = *(unsigned char **)((char *)dev + 0x98);
    u64 parsed_values = 0;
    struct {
        volatile u8 first;
        volatile u8 second;
    } transfer;
    u8 first;
    u8 second;
    struct aw_haptic *haptic;
    int parsed;

    (void)attr;
    parsed = sscanf(buf, "%x %x", (u32 *)&parsed_values,
                    (u32 *)((unsigned long)&parsed_values | 4UL));
    if (parsed == 2) {
        first = *(volatile u8 *)&parsed_values;
        driver_data[0x3f8] = first;
        second = *(volatile u8 *)((char *)&parsed_values + 4);
        driver_data[0x3f9] = second;
        transfer.first = first;
        transfer.second = second;
        haptic = (struct aw_haptic *)(driver_data - 0xa8);
        mutex_lock((struct mutex *)(driver_data + 0x248));
        i2c_w_bytes(haptic, 0x1f, (u8 *)&transfer, 2);
        mutex_unlock((struct mutex *)(driver_data + 0x248));
    }
    return count;
}
