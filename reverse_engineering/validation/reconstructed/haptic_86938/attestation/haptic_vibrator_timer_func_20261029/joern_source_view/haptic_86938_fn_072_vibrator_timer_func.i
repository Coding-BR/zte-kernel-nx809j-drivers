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

#line 1 "haptic_86938_fn_072_vibrator_timer_func.c"
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
