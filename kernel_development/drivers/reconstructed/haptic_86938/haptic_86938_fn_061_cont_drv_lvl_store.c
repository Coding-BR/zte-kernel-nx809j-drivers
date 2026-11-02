// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

ssize_t cont_drv_lvl_store(struct device *dev, struct device_attribute *attr,
                           const char *buf, size_t count)
{
    void *driver_data = dev_get_drvdata(dev);
    u64 parsed_values = 0;
    u32 *parsed_words = (u32 *)&parsed_values;
    u16 transfer = 0;
    u8 *transfer_bytes = (u8 *)&transfer;
    u8 *state = (u8 *)driver_data;
    struct aw_haptic *haptic;
    int parsed;

    (void)attr;
    parsed = sscanf(buf, "%x %x", &parsed_words[0],
                    (u32 *)((unsigned long)parsed_words | 4UL));
    if (parsed == 2) {
        state[0x3f2] = (u8)parsed_words[0];
        state[0x3f3] = (u8)parsed_words[1];

        haptic = (struct aw_haptic *)(state - 0xa8);
        mutex_lock((struct mutex *)(state + 0x248));
        i2c_r_bytes(haptic, 0x1d, transfer_bytes, 1);
        transfer_bytes[0] = state[0x3f2] | (transfer_bytes[0] & 0x80);
        transfer_bytes[1] = state[0x3f3];
        i2c_w_bytes(haptic, 0x1d, transfer_bytes, 2);
        mutex_unlock((struct mutex *)(state + 0x248));
    }

    return count;
}
