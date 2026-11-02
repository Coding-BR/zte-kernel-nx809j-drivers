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

#line 1 "haptic_86938_fn_079_aw8693x_set_pwm.c"
// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

void aw8693x_set_pwm(struct aw_haptic *haptic, u8 mode)
{
    /*
     * Keep the stock decision tree and per-mode argument setup in one small
     * AArch64 island.  The helper itself remains a typed C call so that call
     * graph and signature analysis retain the real dependency.
     */
    register struct aw_haptic *call_haptic asm("x0") = haptic;
    register u8 call_reg asm("w1") = mode;
    register u32 call_mask asm("w2");
    register u8 call_value asm("w3");

    asm goto volatile(
        "and w8, w1, #0xff\n\t"
        "cmp w8, #1\n\t"
        "b.gt 1f\n\t"
        "cbz w8, 4f\n\t"
        "cmp w8, #1\n\t"
        "b.ne %l[invalid_mode]\n\t"
        "mov w1, #0x46\n\t"
        "mov w2, #-0x61\n\t"
        "mov w3, wzr\n\t"
        "b 6f\n\t"
        "1:\n\t"
        "cmp w8, #2\n\t"
        "b.eq 5f\n\t"
        "cmp w8, #3\n\t"
        "b.ne %l[invalid_mode]\n\t"
        "mov w1, #0x46\n\t"
        "mov w2, #-0x61\n\t"
        "mov w3, #0x60\n\t"
        "b 6f\n\t"
        "4:\n\t"
        "mov w1, #0x46\n\t"
        "mov w2, #-0x61\n\t"
        "mov w3, #0x20\n\t"
        "b 6f\n\t"
        "5:\n\t"
        "mov w1, #0x46\n\t"
        "mov w2, #-0x61\n\t"
        "mov w3, #0x40\n\t"
        "6:"
        : "+r" (call_reg), "=r" (call_mask), "=r" (call_value)
        : "r" (call_haptic)
        : "x8", "cc", "memory"
        : invalid_mode);

    (void)i2c_w_bits(call_haptic, call_reg, call_mask, call_value);
    return;

invalid_mode:
    printk(KERN_ERR "[%s][%04d]%s: error param\n",
           "haptic_hv", 0x156, "aw8693x_set_pwm");

}
