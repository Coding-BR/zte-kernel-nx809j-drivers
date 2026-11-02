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

#line 1 "haptic_86938_fn_075_haptic_audio_time_store.c"
// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

ssize_t haptic_audio_time_store(struct device *dev, struct device_attribute *attr,
                                const char *buf, size_t count)
{
    u8 *driver_data = dev_get_drvdata(dev);
    u32 values[2] = {0, 0};
    int parsed;

    (void)attr;
    parsed = sscanf(buf, "%d %d", &values[0], &values[1]);
    if (parsed == 2) {
        *(u32 *)(driver_data + 0x430) = values[0];
        *(u32 *)(driver_data + 0x434) = values[1];
    }
    return count;
}
