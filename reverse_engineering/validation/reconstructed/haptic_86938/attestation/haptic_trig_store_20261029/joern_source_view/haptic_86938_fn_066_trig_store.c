// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/compiler.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
extern void aw8693x_trig1_param_config(struct aw_haptic *haptic);
extern void aw8693x_trig2_param_config(struct aw_haptic *haptic);
extern void aw8693x_trig3_param_config(struct aw_haptic *haptic);

ssize_t trig_store(struct device *dev, struct device_attribute *attr,
                   const char *buf, size_t count)
{
    u8 *driver_data;
    u32 value[9] = { 0 };
    u32 *last_sscanf_value;
    u32 slot;
    u32 pos_enable;
    u32 neg_enable;
    u32 dispatch;
    volatile u8 *trigger_data;
    struct aw_haptic *haptic;
    int parsed;

    (void)attr;
    last_sscanf_value = &value[6];
    driver_data = dev_get_drvdata(dev);
    parsed = sscanf(buf, "%u %u %u %u %u %u %u %u %u",
                    &value[0], &value[1], &value[2], &value[3], &value[4],
                    &value[5], last_sscanf_value, &value[7], &value[8]);
    if (parsed == 9) {
        printk("\0016[%s][%04d]%s: %d, %d, %d, %d, %d, %d, %d, %d, %d\n",
               "haptic_hv", 0x89a, "trig_store",
               (int)value[0], (int)value[1], (int)value[2], (int)value[3],
               (int)value[4], (int)value[5], (int)value[6], (int)value[7],
               (int)value[8]);
        if ((int)value[0] - 4U < 0xfffffffdU) {
            printk("\0016[%s][%04d]%s: input trig_num out of range!\n",
                   "haptic_hv", 0x89c, "trig_store");
        } else {
            slot = value[0] - 1;
            if ((slot == 0) && (driver_data[0x417] == 1)) {
                printk("\0016[%s][%04d]%s: trig1 pin used for one wire!\n",
                       "haptic_hv", 0x8a0, "trig_store");
            } else if ((driver_data[-0xa2] & 1) == 0) {
                printk("\0013[%s][%04d]%s: ram init failed, not allow to play!\n",
                       "haptic_hv", 0x8a4, "trig_store");
            } else if ((value[4] > driver_data[0x3b4]) ||
                       (value[6] > driver_data[0x3b4])) {
                printk("\0013[%s][%04d]%s: input seq value out of range!\n",
                       "haptic_hv", 0x8a9, "trig_store");
            } else {
                value[0] = slot;
                trigger_data = driver_data + (size_t)value[0] * 0xd;
                haptic = (struct aw_haptic *)(driver_data - 0xa8);

                trigger_data[0x53f] = (u8)value[1];
                trigger_data[0x540] = (u8)value[2];
                pos_enable = READ_ONCE(value[3]);
                trigger_data[0x543] = (u8)value[4];
                trigger_data[0x541] = (u8)pos_enable;
                neg_enable = READ_ONCE(value[5]);
                trigger_data[0x544] = (u8)value[6];
                trigger_data[0x542] = (u8)neg_enable;
                trigger_data[0x53d] = (u8)value[7];
                trigger_data[0x53e] = (u8)value[8];

                mutex_lock((struct mutex *)(driver_data + 0x248));
                dispatch = READ_ONCE(value[0]);
                if (dispatch == 2)
                    goto configure_trig3;
                if (dispatch == 1)
                    goto configure_trig2;
                if (dispatch != 0)
                    goto unlock_trigger;
                aw8693x_trig1_param_config(haptic);
                goto unlock_trigger;
configure_trig2:
                aw8693x_trig2_param_config(haptic);
                goto unlock_trigger;
configure_trig3:
                aw8693x_trig3_param_config(haptic);
unlock_trigger:
                mutex_unlock((struct mutex *)(driver_data + 0x248));
            }
        }
    }

    return count;
}
