// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

void aw8693x_bst_mode_config(struct aw_haptic *haptic, u8 mode)
{
    if (mode == 0U)
        goto bypass;
    if (mode != 1U)
        goto invalid;

    printk(KERN_INFO "[%s][%04d]%s: haptic bst mode = bst\n",
           "haptic_hv", 504, __func__);
    (void)i2c_w_bits(haptic, 6U, 0xffffffdfU, 0x20U);
    return;

bypass:
    printk(KERN_INFO "[%s][%04d]%s: haptic bst mode = bypass\n",
           "haptic_hv", 510, __func__);
    (void)i2c_w_bits(haptic, 6U, 0xffffffdfU, 0U);
    return;

invalid:
    printk(KERN_ERR "[%s][%04d]%s: mode = %d error\n",
           "haptic_hv", 516, __func__, mode);
}
