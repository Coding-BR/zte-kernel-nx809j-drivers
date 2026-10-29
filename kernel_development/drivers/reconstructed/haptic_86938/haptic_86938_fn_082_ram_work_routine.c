// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/firmware.h>
#include <linux/gfp_types.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/workqueue.h>

extern char *aw_ram_name;
extern void ram_load(const struct firmware *firmware, void *context);

void ram_work_routine(struct work_struct *work)
{
    char *haptic = (char *)work - 0x3c0;

    *(u16 *)(haptic + 5) = 0;
    (void)request_firmware_nowait(
        THIS_MODULE, true, aw_ram_name,
        *(struct device **)(haptic + 0x320), GFP_KERNEL, haptic, ram_load);
}
