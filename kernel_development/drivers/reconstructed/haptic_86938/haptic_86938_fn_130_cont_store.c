// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kstrtox.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw_haptic_op_fn)(struct aw_haptic *haptic);
typedef void (*aw_haptic_mode_fn)(struct aw_haptic *haptic,
                                  unsigned int mode);

ssize_t cont_store(struct device *dev, struct device_attribute *attr,
                   const char *buf, size_t count)
{
    void *driver_data = *(void **)((u8 *)dev + 0x98);
    struct aw_haptic *haptic;
    void *operations;
    aw_haptic_op_fn stop;
    aw_haptic_mode_fn upload_lra;
    aw_haptic_op_fn cont_config;
    u32 value = 0;
    int ret;

    (void)attr;
    ret = kstrtouint(buf, 0, &value);
    if (ret < 0)
        return ret;

    haptic = (struct aw_haptic *)((u8 *)driver_data - 0xa8);
    operations = *(void **)((u8 *)driver_data + 0x520);
    stop = *(aw_haptic_op_fn *)((u8 *)operations + 0x38);
    stop(haptic);

    if (value != 0) {
        operations = *(void **)((u8 *)driver_data + 0x520);
        upload_lra = *(aw_haptic_mode_fn *)((u8 *)operations + 0x118);
        upload_lra(haptic, 1);

        operations = *(void **)((u8 *)driver_data + 0x520);
        cont_config = *(aw_haptic_op_fn *)((u8 *)operations + 0x48);
        cont_config(haptic);
    }

    return count;
}
