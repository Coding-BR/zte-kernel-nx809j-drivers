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

#line 1 "haptic_86938_fn_081_prct_mode_show.c"
// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;
typedef u8 (*aw8693x_get_prctmode_fn)(struct aw_haptic *haptic);

ssize_t prct_mode_show(struct device *dev, struct device_attribute *attr,
                       char *buf)
{
    void *driver_data = *(void **)((char *)dev + 0x98);
    void *function_table = *(void **)((char *)driver_data + 0x520);
    aw8693x_get_prctmode_fn get_prctmode =
        *(aw8693x_get_prctmode_fn *)((char *)function_table + 0x150);
    struct aw_haptic *haptic =
        (struct aw_haptic *)((char *)driver_data - 0xa8);
    u8 prctmode;

    (void)attr;
    prctmode = get_prctmode(haptic);
    return snprintf(buf, 0x1000, "prctmode = %d\n", (u32)prctmode);
}
