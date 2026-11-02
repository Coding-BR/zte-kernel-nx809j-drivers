// SPDX-License-Identifier: GPL-2.0
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);

void aw8693x_play_go(struct aw_haptic *haptic, u8 flag)
{
    u8 play_state;
    register u32 play_code asm("w20") = (flag & 1U) ? 1U : 2U;

    printk(KERN_INFO "[%s][%04d]%s: enter, flag = %d\n",
           "haptic_hv", 471, __func__, flag & 1U);
    play_state = (u8)play_code;
    (void)i2c_w_bytes(haptic, 9U, &play_state, 1U);
}
