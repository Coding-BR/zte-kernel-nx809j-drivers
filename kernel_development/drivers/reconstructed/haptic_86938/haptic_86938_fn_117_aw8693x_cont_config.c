// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler.h>
#include <linux/compiler_attributes.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);

void aw8693x_cont_config(struct aw_haptic *haptic)
{
    u8 play_value[4] __uninitialized;
    u8 cont_value[4] __uninitialized;
    register u32 play_code asm("w21");

    cont_value[0] = 0xff;
    printk(KERN_INFO "[%s][%04d]%s: enter cont mode\n",
           "haptic_hv", 0x275, "aw8693x_play_mode");
    *(u8 *)((u8 *)haptic + 0x17) = 4;
    (void)i2c_w_bits(haptic, 8, 0xfffffffcU, 2);
    (void)i2c_w_bits(haptic, 8, 0xfffffffbU, 4);

    printk(KERN_INFO "[%s][%04d]%s: haptic bst mode = bypass\n",
           "haptic_hv", 0x1fe, "aw8693x_bst_mode_config");
    (void)i2c_w_bits(haptic, 6, 0xffffffdfU, 0);
    (void)i2c_w_bits(haptic, 0x4c, 0xffffffbfU, 0x40);
    (void)i2c_w_bits(haptic, 0x1d, 0xffffff7fU,
                     (u8)(*(u8 *)((u8 *)haptic + 0x4c0) << 7));
    (void)i2c_w_bits(haptic, 0x1d, 0xffffff80U,
                     *(u8 *)((u8 *)haptic + 0x49a));

    asm volatile("mov %w0, #1" : "=r"(play_code));
    (void)i2c_w_bytes(haptic, 0x1e, (u8 *)haptic + 0x49b, 1);
    (void)i2c_w_bytes(haptic, 0x20, cont_value, 1);

    printk(KERN_INFO "[%s][%04d]%s: enter, flag = %d\n",
           "haptic_hv", 0x1d7, "aw8693x_play_go", 1);
    barrier();
    play_value[0] = (u8)play_code;
    (void)i2c_w_bytes(haptic, 9, play_value, 1);
}
