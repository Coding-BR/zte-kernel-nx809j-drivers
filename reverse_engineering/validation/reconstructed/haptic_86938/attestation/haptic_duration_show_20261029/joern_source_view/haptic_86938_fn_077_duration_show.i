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

#line 1 "haptic_86938_fn_077_duration_show.c"
// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/hrtimer.h>
#include <linux/kernel.h>
#include <linux/types.h>

ssize_t duration_show(struct device *dev, struct device_attribute *attr,
                      char *buf)
{
    u8 *driver_data = dev_get_drvdata(dev);
    struct hrtimer *timer = (struct hrtimer *)(driver_data + 0x288);
    long long remaining_ms;

    (void)attr;
    if (hrtimer_active(timer))
        remaining_ms = __hrtimer_get_remaining(timer, false) / 1000000;
    else
        remaining_ms = 0;

    return snprintf(buf, 0x1000, "duration = %lldms\n", remaining_ms);
}
