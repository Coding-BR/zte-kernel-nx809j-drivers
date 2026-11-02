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

#line 1 "haptic_86938_fn_067_ram_work_init.c"
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
