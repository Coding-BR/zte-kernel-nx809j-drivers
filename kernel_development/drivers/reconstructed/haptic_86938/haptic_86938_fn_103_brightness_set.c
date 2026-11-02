// SPDX-License-Identifier: GPL-2.0
#include <linux/leds.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/types.h>
#include <linux/workqueue.h>

void brightness_set(struct led_classdev *led_cdev,
                    enum led_brightness value)
{
    u8 *object = (u8 *)led_cdev;

    printk(KERN_INFO "[%s][%04d]%s: enter\n",
           "haptic_hv", 0x889, __func__);
    if ((*(u8 *)(object - 0xa2) & 1U) == 0U) {
        printk(KERN_ERR "[%s][%04d]%s: ram init failed, not allow to play!\n",
               "haptic_hv", 0x88b, __func__);
    } else {
        mutex_lock((struct mutex *)(object + 0x248));
        *(u32 *)(object - 0x50) = (u32)value;
        *(u32 *)(object - 0x68) = (u32)value;
        *(u8 *)(object - 0x8d) = 1U;
        mutex_unlock((struct mutex *)(object + 0x248));
        (void)queue_work_on(0x20,
                            *(struct workqueue_struct **)(object + 0x3a0),
                            (struct work_struct *)(object + 0x380));
    }
}
