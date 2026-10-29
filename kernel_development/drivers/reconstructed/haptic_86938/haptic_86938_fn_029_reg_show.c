// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

struct aw_haptic;
typedef ssize_t (*get_reg_fn)(struct aw_haptic *haptic, ssize_t length, char *buf);

ssize_t reg_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    void *function_table = *(void **)((char *)driver_data + 0x520);
    get_reg_fn get_reg = *(get_reg_fn *)((char *)function_table + 0x148);
    struct aw_haptic *haptic = (struct aw_haptic *)((char *)driver_data - 0xa8);

    (void)attr;
    return get_reg(haptic, 0, buf);
}
