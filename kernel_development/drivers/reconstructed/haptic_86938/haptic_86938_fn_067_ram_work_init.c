// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>
#include <linux/workqueue.h>

struct aw_haptic;
extern void ram_work_routine(struct work_struct *work);

void ram_work_init(struct aw_haptic *haptic)
{
    INIT_DELAYED_WORK(
        (struct delayed_work *)((u8 *)haptic + 0x3c0), ram_work_routine);
    queue_delayed_work_on(
        0x20, system_wq,
        (struct delayed_work *)((u8 *)haptic + 0x3c0), 2000);
}
