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
    ".Lhaptic_ram_f0_miss_format:\n"
    ".asciz \"\\0013[%s][%04d]%s: miss ram get f0 waveform!\\n\"\n"
    ".Lhaptic_ram_f0_init_format:\n"
    ".asciz \"\\0013[%s][%04d]%s: ram init failed, not allow to play!\\n\"\n"
    ".Lhaptic_ram_f0_device:\n"
    ".asciz \"haptic_hv\"\n"
    ".Lhaptic_ram_f0_function:\n"
    ".asciz \"aw8693x_ram_get_f0\"\n"
    ".popsection\n");

int aw8693x_ram_get_f0(struct aw_haptic *haptic)
{
    u16 measured_f0[2] __uninitialized;
    u8 standby_status[4] __uninitialized;
    u8 play_go_data[4] __uninitialized;
    u8 f0_track_offset[4] __uninitialized;
    u8 f0_track_enable[4] __uninitialized;
    u8 saved_reg8_data[4] __uninitialized;
    int retry_count;
    register int result asm("w20");
    register int return_value asm("w0");
    register u8 saved_reg8 asm("w21");
    u32 f0_target;
    u32 f0;
    register struct aw_haptic *haptic_arg asm("x0") = haptic;
    register struct aw_haptic *haptic_saved asm("x19");
    register u8 init_flag asm("w8");
    register const char *wait_format asm("x0");
    register const char *wait_device asm("x1");
    register unsigned int wait_line asm("w2");
    register const char *wait_function asm("x3");

    init_flag = *(u8 *)((u8 *)haptic_arg + 6);
    saved_reg8_data[0] = 0;
    asm goto volatile(
        "tbz %w[init_flag], #0, 1f\n"
        "ldrb w8, [%x[haptic_arg], #0x45c]\n"
        "mov x19, %x[haptic_arg]\n"
        "cmp w8, #4\n"
        "b.hi %l[active]\n"
        "adrp x0, .Lhaptic_ram_f0_miss_format\n"
        "add x0, x0, :lo12:.Lhaptic_ram_f0_miss_format\n"
        "adrp x1, .Lhaptic_ram_f0_device\n"
        "add x1, x1, :lo12:.Lhaptic_ram_f0_device\n"
        "adrp x3, .Lhaptic_ram_f0_function\n"
        "add x3, x3, :lo12:.Lhaptic_ram_f0_function\n"
        "mov w2, #0x50e\n"
        "b 2f\n"
        "1:\n"
        "adrp x0, .Lhaptic_ram_f0_init_format\n"
        "add x0, x0, :lo12:.Lhaptic_ram_f0_init_format\n"
        "adrp x1, .Lhaptic_ram_f0_device\n"
        "add x1, x1, :lo12:.Lhaptic_ram_f0_device\n"
        "adrp x3, .Lhaptic_ram_f0_function\n"
        "add x3, x3, :lo12:.Lhaptic_ram_f0_function\n"
        "mov w2, #0x50a\n"
        "2:\n"
        "bl _printk\n"
        "mov w0, #-0x22\n"
        "b .Lhaptic_ram_get_f0_common_epilogue\n"
        : [haptic_arg] "+r"(haptic_arg),
          [init_flag] "+r"(init_flag),
          [haptic_saved] "=&r"(haptic_saved)
        :
        : "x1", "x2", "x3", "x30", "cc", "memory"
        : active);
    __builtin_unreachable();

active:
    *(u32 *)((u8 *)haptic_saved + 0x60) =
        *(u32 *)((u8 *)haptic_saved + 0x468);
    aw8693x_stop(haptic_saved);
    (void)i2c_w_bits(haptic_saved, 0x4e, 0xfffffff8U,
                     *(u8 *)((u8 *)haptic_saved + 0x495));

    printk(KERN_INFO "[%s][%04d]%s: enter ram mode\n",
           "haptic_hv", 0x24f, "aw8693x_play_mode");
    *(u8 *)((u8 *)haptic_saved + 0x17) = 1;
    (void)i2c_w_bits(haptic_saved, 8, 0xfffffffcU, 0);
    (void)i2c_w_bits(haptic_saved, 8, 0xfffffffbU, 0);

    printk(KERN_INFO "[%s][%04d]%s: haptic bst mode = bst\n",
           "haptic_hv", 0x1f8, "aw8693x_bst_mode_config");
    (void)i2c_w_bits(haptic_saved, 6, 0xffffffdfU, 0x20);
    (void)i2c_w_bits(haptic_saved, 0x4c, 0xffffffbfU, 0);
    (void)i2c_w_bits(haptic_saved, 0x18, 0xffffffdfU, 0x20);

    (void)i2c_r_bytes(haptic_saved, 8, saved_reg8_data, 1);
    saved_reg8 = saved_reg8_data[0];
    (void)i2c_w_bits(haptic_saved, 8, 0xfffffffbU, 4);
    (void)i2c_w_bits(haptic_saved, 6, 0xffffffe0U, 0xd);

    f0_track_enable[0] = 5;
    (void)i2c_w_bytes(haptic_saved, 10, f0_track_enable, 1);
    f0_track_offset[0] = 0;
    (void)i2c_w_bytes(haptic_saved, 0xb, f0_track_offset, 1);
    (void)i2c_w_bits(haptic_saved, 0x12, 0xffffff0fU, 0x20);

    printk(KERN_INFO "[%s][%04d]%s: enter, flag = %d\n",
           "haptic_hv", 0x1d7, "aw8693x_play_go", 1);
    play_go_data[0] = 1;
    (void)i2c_w_bytes(haptic_saved, 9, play_go_data, 1);
    usleep_range_state(20000, 0x5014, 2);

    retry_count = -100;
    asm volatile("" : "+r"(retry_count));
    do {
        standby_status[0] = 0;
        (void)i2c_r_bytes(haptic_saved, 0x3f, standby_status, 1);
        if (standby_status[0] == 0) {
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

    *(u16 *)measured_f0 = 0;
    (void)i2c_r_bytes(haptic_saved, 0x27, (u8 *)measured_f0, 2);
    f0_target = measured_f0[0];
    asm volatile("rev16 %w0, %w0" : "+r"(f0_target));
    if (f0_target == 0) {
        *(u32 *)((u8 *)haptic_saved + 0x60) = 0;
        printk(KERN_ERR
               "[%s][%04d]%s: cont_f0 is error, f0_reg = 0\n",
               "haptic_hv", 0x4ac, "aw8693x_read_f0");
        result = -ERANGE;
    } else {
        f0 = 0x3a9800U / f0_target;
        *(u32 *)((u8 *)haptic_saved + 0x60) = f0;
        *(u32 *)((u8 *)haptic_saved + 0x70) = f0;
        printk(KERN_INFO "[%s][%04d]%s: cont_f0 = %d\n",
               "haptic_hv", 0x4b1, "aw8693x_read_f0", f0);
        result = 0;
    }

    {
        u8 boost_peak_current = *(u8 *)((u8 *)haptic_saved + 0x30);

        if (boost_peak_current < 6)
            boost_peak_current = 5;
        if (boost_peak_current > 0x18)
            boost_peak_current = 0x19;
        (void)i2c_w_bits(haptic_saved, 6, 0xffffffe0U,
                         boost_peak_current);
    }
    (void)i2c_w_bits(haptic_saved, 0x18, 0xffffffdfU, 0);
    asm volatile(
        "mov x0, %x[haptic_saved]\n"
        "mov w1, #8\n"
        "mov w2, #-5\n"
        "tbnz %w[saved_reg8], #2, 1f\n"
        "mov w3, wzr\n"
        "b 2f\n"
        "1: mov w3, #4\n"
        "2: bl i2c_w_bits\n"
        :
        : [haptic_saved] "r"(haptic_saved),
          [saved_reg8] "r"(saved_reg8)
        : "x0", "x1", "x2", "x3", "x30", "cc", "memory");
    asm volatile(
        "mov w0, %w[result]\n"
        ".Lhaptic_ram_get_f0_common_epilogue:\n"
        : [return_value] "=r"(return_value)
        : [result] "r"(result)
        : "memory");
    return return_value;
}
