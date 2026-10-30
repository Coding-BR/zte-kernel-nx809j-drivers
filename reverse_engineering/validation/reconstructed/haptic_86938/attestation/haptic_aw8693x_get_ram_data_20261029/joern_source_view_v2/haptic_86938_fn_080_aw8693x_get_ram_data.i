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

#line 1 "haptic_86938_fn_080_aw8693x_get_ram_data.c"
// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

long aw8693x_get_ram_data(struct aw_haptic *haptic, u8 *ram_data)
{
    u32 ram_length = *(u32 *)((char *)haptic + 0x450);
    u32 offset;

    if (ram_length == 0)
        return 0;

    offset = 0;
    do {
        u32 chunk = ram_length - offset;

        if (chunk > 0x400)
            chunk = 0x400;

        (void)i2c_r_bytes(haptic, 0x42, ram_data + (s32)offset, chunk);
        ram_length = *(u32 *)((char *)haptic + 0x450);
        offset = chunk + offset;
    } while (offset < ram_length);

    return (long)(s32)offset;
}
