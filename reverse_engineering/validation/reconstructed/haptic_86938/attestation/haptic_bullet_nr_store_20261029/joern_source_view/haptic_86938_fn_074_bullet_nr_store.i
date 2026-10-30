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

#line 1 "haptic_86938_fn_074_bullet_nr_store.c"
// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>

ssize_t bullet_nr_store(struct device *dev, struct device_attribute *attr,
                        const char *buf, size_t count)
{
    u8 *driver_data = dev_get_drvdata(dev);
    u32 value = 0;
    int ret;

    (void)attr;
    ret = kstrtouint(buf, 0, &value);
    if (ret < 0)
        return ret;

    mutex_lock((struct mutex *)(driver_data + 0x248));
    *(u32 *)(driver_data - 0x28) = value;
    mutex_unlock((struct mutex *)(driver_data + 0x248));
    return count;
}
