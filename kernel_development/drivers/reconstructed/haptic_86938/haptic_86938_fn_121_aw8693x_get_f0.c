// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler_attributes.h>
#include <linux/delay.h>
#include <linux/errno.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;

extern void aw8693x_stop(struct aw_haptic *haptic);
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);
extern void usleep_range_state(unsigned long min, unsigned long max,
                               u32 state);

asm(".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Lhaptic_get_f0_play_format:\n"
    ".asciz \"\\0016[%s][%04d]%s: enter, flag = %d\\n\"\n"
    ".Lhaptic_get_f0_play_device:\n"
    ".asciz \"haptic_hv\"\n"
    ".Lhaptic_get_f0_play_function:\n"
    ".asciz \"aw8693x_play_go\"\n"
    ".popsection\n");

int aw8693x_get_f0(struct aw_haptic *haptic)
{
    u8 f0_register[4] __uninitialized;
    u8 f0_parameters[4] __uninitialized;
    u8 saved_reg8_data[4] __uninitialized;
    u32 f0_pre;
    u32 f0;
    u32 f0_target;
    int retry_count = 1;
    u32 saved_reg8;
    register const char *wait_format asm("x0");
    register const char *wait_device asm("x1");
    register unsigned int wait_line asm("w2");
    register const char *wait_function asm("x3");

    saved_reg8_data[0] = 0;
    *(u32 *)((u8 *)haptic + 0x60) =
        *(u32 *)((u8 *)haptic + 0x468);
    aw8693x_stop(haptic);

    printk(KERN_INFO "[%s][%04d]%s: enter\n", "haptic_hv", 0x20d,
           "aw8693x_vbat_ref_config");
    (void)i2c_w_bits(haptic, 0x4d, 0xffffff8fU, 0x20);
    (void)i2c_w_bits(haptic, 0x4e, 0xfffffff8U,
                     *(u8 *)((u8 *)haptic + 0x495));

    printk(KERN_INFO "[%s][%04d]%s: enter cont mode\n", "haptic_hv", 0x275,
           "aw8693x_play_mode");
    *(u8 *)((u8 *)haptic + 0x17) = 4;
    (void)i2c_w_bits(haptic, 8, 0xfffffffcU, 2);
    (void)i2c_w_bits(haptic, 8, 0xfffffffbU, 4);

    printk(KERN_INFO "[%s][%04d]%s: haptic bst mode = bypass\n",
           "haptic_hv", 0x1fe, "aw8693x_bst_mode_config");
    (void)i2c_w_bits(haptic, 6, 0xffffffdfU, 0);
    (void)i2c_w_bits(haptic, 0x4c, 0xffffffbfU, 0x40);
    (void)i2c_w_bits(haptic, 0x18, 0xffffffdfU, 0x20);
    (void)i2c_w_bits(haptic, 0x1d, 0xffffff7fU,
                     *(u8 *)((u8 *)haptic + 0x4c0) << 7);

    (void)i2c_r_bytes(haptic, 8, saved_reg8_data, 1);
    saved_reg8 = saved_reg8_data[0];
    asm volatile("" : "+r"(saved_reg8));
    (void)i2c_w_bits(haptic, 8, 0xfffffffbU, 4);
    (void)i2c_w_bits(haptic, 0x1d, 0xffffff80U,
                     *(u8 *)((u8 *)haptic + 0x49a));
    f0_parameters[0] = *(u8 *)((u8 *)haptic + 0x49b);
    *(u16 *)(f0_parameters + 1) =
        *(u16 *)((u8 *)haptic + 0x4a0);
    (void)i2c_w_bytes(haptic, 0x1e, f0_parameters, 3);

    f0_pre = *(u8 *)((u8 *)haptic + 0x4a3);
    if (f0_pre == 0) {
        printk(KERN_ERR
               "[%s][%04d]%s: aw_haptic->info.cont_track_margin = 0\n",
               "haptic_hv", 0x4dd, "aw8693x_get_f0");
    } else {
        (void)i2c_w_bytes(haptic, 0x22,
                          (u8 *)haptic + 0x4a3, 1);
    }

    f0 = *(u32 *)((u8 *)haptic + 0x468);
    if (f0 == 0)
        return -ERANGE;

    int result;

    {
        register u32 f0_divisor asm("w8") = f0;

        asm volatile("mov w9, #0xa980\n\t"
                     "ldrb w10, [x19, #0x4a3]\n\t"
                     "add x2, sp, #0x10\n\t"
                     "movk w9, #3, lsl #16\n\t"
                     "mov x0, x19\n\t"
                     "mov w1, #0x19\n\t"
                     "udiv w8, w9, w8\n\t"
                     "ldrb w9, [x19, #0x49f]\n\t"
                     "mov w3, #2\n\t"
                     "add w9, w9, w10\n\t"
                     "mov w10, #0xff\n\t"
                     "sub w9, w8, w9\n\t"
                     "sub w9, w9, #8\n\t"
                     "cmp w9, #0xff\n\t"
                     "csel w9, w9, w10, lt\n\t"
                     "cmp w8, #0xff\n\t"
                     "bic w9, w9, w9, asr #31\n\t"
                     "csel w8, w8, w10, lo\n\t"
                     "strb w8, [sp, #0x10]\n\t"
                     "strb w9, [sp, #0x11]\n\t"
                     "bl i2c_w_bytes"
                     : "+r"(f0_divisor)
                     :
                     : "x0", "x1", "x2", "x3", "x9", "x10",
                       "x30", "cc", "memory");
    }

    {
        u32 play_value;

        asm volatile("adrp x0, .Lhaptic_get_f0_play_format\n\t"
                     "add x0, x0, :lo12:.Lhaptic_get_f0_play_format\n\t"
                     "adrp x1, .Lhaptic_get_f0_play_device\n\t"
                     "add x1, x1, :lo12:.Lhaptic_get_f0_play_device\n\t"
                     "adrp x3, .Lhaptic_get_f0_play_function\n\t"
                     "add x3, x3, :lo12:.Lhaptic_get_f0_play_function\n\t"
                     "mov w2, #0x1d7\n\t"
                     "mov w4, #1\n\t"
                     "mov %w0, #1\n\t"
                     "bl _printk\n\t"
                     "sub x2, x29, #0xc\n\t"
                     "mov x0, x19\n\t"
                     "mov w1, #9\n\t"
                     "mov w3, #1\n\t"
                     "sturb %w0, [x29, #-0xc]\n\t"
                     "bl i2c_w_bytes"
                     : "=&r"(play_value)
                     :
                     : "x0", "x1", "x2", "x3", "x4", "x5", "x6",
                       "x7", "x8", "x9", "x10", "x11", "x12",
                       "x13", "x14", "x15", "x16", "x17", "x30",
                       "cc", "memory");
    }
    /* play_go and its one-byte I2C write are emitted by the asm block above. */
    usleep_range_state(20000, 0x5014, 2);

    retry_count = -100;
    asm volatile("" : "+r"(retry_count));
    do {
        f0_register[0] = 0;
        (void)i2c_r_bytes(haptic, 0x3f, f0_register, 1);
        if (f0_register[0] == 0) {
            wait_format = KERN_INFO
                "[%s][%04d]%s: entered standby!\n";
            wait_device = "haptic_hv";
            wait_line = 0x1ea;
            wait_function = "aw8693x_wait_enter_standby";
            asm volatile("" : "+r"(wait_format), "+r"(wait_device),
                         "+r"(wait_line), "+r"(wait_function));
            goto standby_log;
        }
        usleep_range_state(2000, 0x9c4, 2);
        /* Keep the stock signed increment/carry retry sequence under Clang. */
        asm volatile("" : "+r"(retry_count));
    } while (retry_count++ != -1);

    wait_format = KERN_ERR
        "[%s][%04d]%s: do not enter standby automatically\n";
    wait_device = "haptic_hv";
    wait_line = 0x1ef;
    wait_function = "aw8693x_wait_enter_standby";
    asm volatile("" : "+r"(wait_format), "+r"(wait_device),
                 "+r"(wait_line), "+r"(wait_function));
standby_log:
    printk(wait_format, wait_device, wait_line, wait_function);

    *(u16 *)f0_register = 0;
    (void)i2c_r_bytes(haptic, 0x27, f0_register, 2);
    f0_target = *(u16 *)f0_register;
    asm volatile("rev16 %w0, %w0" : "+r"(f0_target));
    if (f0_target == 0) {
        *(u32 *)((u8 *)haptic + 0x60) = 0;
        printk(KERN_ERR
               "[%s][%04d]%s: cont_f0 is error, f0_reg = 0\n",
               "haptic_hv", 0x4ac, "aw8693x_read_f0");
        result = -ERANGE;
        asm volatile("" : "+r"(result));
    } else {
        f0 = 0x3a9800U / f0_target;
        *(u32 *)((u8 *)haptic + 0x60) = f0;
        *(u32 *)((u8 *)haptic + 0x70) = f0;
        printk(KERN_INFO "[%s][%04d]%s: cont_f0 = %d\n",
               "haptic_hv", 0x4b1, "aw8693x_read_f0", f0);
        result = 0;
        asm volatile("" : "+r"(result));
    }

    (void)i2c_w_bits(haptic, 0x18, 0xffffffdfU, 0);
    (void)i2c_w_bits(haptic, 8, 0xfffffffbU, saved_reg8 & 4U);
    printk(KERN_INFO "[%s][%04d]%s: enter\n", "haptic_hv", 0x20d,
           "aw8693x_vbat_ref_config");
    (void)i2c_w_bits(haptic, 0x4d, 0xffffff8fU, 0x40);
    return result;
}
