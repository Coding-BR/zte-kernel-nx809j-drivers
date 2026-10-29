// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

struct aw_haptic;
typedef unsigned long (*get_wav_loop_fn)(struct aw_haptic *haptic, char *buf);

ssize_t loop_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    void *function_table = *(void **)((char *)driver_data + 0x520);
    get_wav_loop_fn get_wav_loop = *(get_wav_loop_fn *)((char *)function_table + 0x138);
    struct aw_haptic *haptic = (struct aw_haptic *)((char *)driver_data - 0xa8);

    (void)attr;
    return (ssize_t)get_wav_loop(haptic, buf);
}
