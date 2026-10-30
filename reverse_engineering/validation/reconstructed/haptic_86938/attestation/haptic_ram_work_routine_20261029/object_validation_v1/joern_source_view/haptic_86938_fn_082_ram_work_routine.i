/* Analysis-only declarations for partial recovered kernel translation units. */
#ifndef NX809J_JOERN_KERNEL_COMPAT_H
#define NX809J_JOERN_KERNEL_COMPAT_H
#define __user
#define __fastcall
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
typedef long ssize_t;
typedef long long loff_t;
typedef _Bool bool;
struct file;
struct inode;
struct kobject;
struct device;
struct platform_device;
#endif

#line 1 "haptic_86938_fn_082_ram_work_routine.c"
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
