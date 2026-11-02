// SPDX-License-Identifier: GPL-2.0
#include <linux/hrtimer.h>
#include <linux/types.h>
#include <linux/workqueue.h>

enum hrtimer_restart vibrator_timer_func(struct hrtimer *timer)
{
    u8 *timer_bytes = (u8 *)timer;

    *(u32 *)(timer_bytes - 0x2f0) = 0;
    queue_work_on(0x20,
                  *(struct workqueue_struct **)(timer_bytes + 0x118),
                  (struct work_struct *)(timer_bytes + 0xf8));
    return HRTIMER_NORESTART;
}
