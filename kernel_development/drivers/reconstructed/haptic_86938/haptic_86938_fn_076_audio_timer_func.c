// SPDX-License-Identifier: GPL-2.0
#include <linux/hrtimer.h>
#include <linux/types.h>
#include <linux/workqueue.h>

enum hrtimer_restart audio_timer_func(struct hrtimer *timer)
{
    u8 *timer_bytes = (u8 *)timer;
    s32 interval_us;
    s64 interval_ns;

    queue_work_on(0x20,
                  *(struct workqueue_struct **)(timer_bytes - 0xd8),
                  (struct work_struct *)(timer_bytes + 0x40));

    interval_us = *(s32 *)(timer_bytes - 0x44);
    interval_ns = (s64)((interval_us % 1000000) * 1000) +
                  (s64)(interval_us / 1000000) * 1000000000;
    hrtimer_start_range_ns(timer, interval_ns, 0, HRTIMER_MODE_REL);
    return HRTIMER_NORESTART;
}
