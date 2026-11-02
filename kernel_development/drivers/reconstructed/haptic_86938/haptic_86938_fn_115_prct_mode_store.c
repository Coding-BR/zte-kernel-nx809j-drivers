// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
typedef void (*aw_haptic_two_u8_op_fn)(struct aw_haptic *haptic,
                                      u8 first, u8 second);

ssize_t prct_mode_store(struct device *dev, struct device_attribute *attr,
                        const char *buf, size_t count)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    struct aw_haptic *haptic;
    void *operations;
    aw_haptic_two_u8_op_fn set_prct_mode;
    u32 values[2] = { 0, 0 };
    int parsed;

    (void)attr;
    parsed = sscanf(buf, "%x %x", &values[0],
                    (u32 *)((unsigned long)&values[0] | 4UL));
    if (parsed == 2) {
        register u32 parsed_first asm("x20") = values[0];
        register u32 parsed_second asm("x21") = values[1];

        /* Stock keeps these parsed words in callee-saved registers across the lock. */
        asm volatile("" : "+r"(parsed_first), "+r"(parsed_second));
        haptic = (struct aw_haptic *)((char *)driver_data - 0xa8);
        mutex_lock((struct mutex *)((char *)driver_data + 0x248));
        operations = *(void **)((char *)driver_data + 0x520);
        set_prct_mode = *(aw_haptic_two_u8_op_fn *)
            ((char *)operations + 0xd8);
        set_prct_mode(haptic, parsed_first, parsed_second);
        mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
    }
    return count;
}
