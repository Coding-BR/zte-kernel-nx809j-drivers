// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);

u64 aw8693x_get_theory_time(struct aw_haptic *haptic)
{
    u8 mode = 0;
    register u32 masked_mode asm("w8");
    register u64 theory_time asm("x20");

    (void)i2c_r_bytes(haptic, 0x46U, &mode, 1U);
    masked_mode = mode;

    /* Preserve the stock branch layout and 32-bit arithmetic exactly. */
    asm volatile(
        "and w8, %w[mode], #0x60\n"
        "cmp w8, #0x40\n"
        "b.eq 1f\n"
        "cmp w8, #0x20\n"
        "b.eq 2f\n"
        "cbnz w8, 3f\n"
        "mov w8, #24\n"
        "b 4f\n"
        "2: mov w8, #48\n"
        "b 4f\n"
        "1: mov w8, #12\n"
        "4: ldr w9, [%x[haptic], #0x78]\n"
        "mov w10, #1000\n"
        "mul w9, w9, w10\n"
        "udiv %w[result], w9, w8\n"
        "b 5f\n"
        "3: mov %x[result], xzr\n"
        "5:"
        : [mode] "+r" (masked_mode), [result] "=r" (theory_time)
        : [haptic] "r" (haptic)
        : "x0", "x1", "x2", "x3", "x4", "x5", "x9", "x10", "cc",
          "memory");

    printk(KERN_INFO "[%s][%04d]%s: microsecond = %llu  theory_time = %llu\n",
           "haptic_hv", 0x6a0, __func__,
           *(u64 *)((u8 *)haptic + 0xa0), theory_time);
    return theory_time;
}
