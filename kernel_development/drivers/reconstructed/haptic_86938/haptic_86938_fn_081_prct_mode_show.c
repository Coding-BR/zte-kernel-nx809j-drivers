// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;
typedef u8 (*aw8693x_get_prctmode_fn)(struct aw_haptic *haptic);

ssize_t prct_mode_show(struct device *dev, struct device_attribute *attr,
                       char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    void *function_table = *(void **)((char *)driver_data + 0x520);
    aw8693x_get_prctmode_fn get_prctmode =
        *(aw8693x_get_prctmode_fn *)((char *)function_table + 0x150);
    struct aw_haptic *haptic =
        (struct aw_haptic *)((char *)driver_data - 0xa8);
    u8 prctmode;

    (void)attr;
    prctmode = get_prctmode(haptic);
    return snprintf(buf, 0x1000, "prctmode = %d\n", (u32)prctmode);
}
