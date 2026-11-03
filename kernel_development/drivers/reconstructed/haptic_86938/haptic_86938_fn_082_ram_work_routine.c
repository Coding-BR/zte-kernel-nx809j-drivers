// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/firmware.h>
#include <linux/gfp_types.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/workqueue.h>

#include "haptic_86938_internal.h"

extern char *aw_ram_name;
extern void ram_load(const struct firmware *firmware, void *context);

void ram_work_routine(struct work_struct *work)
{
    char *haptic = (char *)work - 0x3c0;

    if (haptic_lifetime_is_shutting_down())
        return;

    *(u16 *)(haptic + 5) = 0;
    (void)haptic_lifetime_request_ram_firmware(haptic);
}
