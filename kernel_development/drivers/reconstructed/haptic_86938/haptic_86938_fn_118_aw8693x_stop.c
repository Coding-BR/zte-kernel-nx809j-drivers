// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler_attributes.h>
#include <linux/delay.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);
extern void usleep_range_state(unsigned long min, unsigned long max,
                               u32 state);

void aw8693x_stop(struct aw_haptic *haptic)
{
    u8 global_state[4] __uninitialized;
    u8 standby_value[4] __uninitialized;
    int retry_count = -100;

    printk(KERN_INFO "[%s][%04d]%s: enter\n",
           "haptic_hv", 0x2a9, __func__);
    *(u8 *)((u8 *)haptic + 0x17) = 0;
    standby_value[0] = 1;
    (void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 4);
    usleep_range_state(500, 600, 2);
    (void)i2c_w_bits(haptic, 8, 0xfffffffcU, 3);
    (void)i2c_w_bytes(haptic, 9, standby_value, 1);
    (void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 0);

    do {
        global_state[0] = 0;
        (void)i2c_r_bytes(haptic, 0x3f, global_state, 1);
        if (global_state[0] == 0) {
            printk(KERN_INFO "[%s][%04d]%s: entered standby!\n",
                   "haptic_hv", 0x1ea, "aw8693x_wait_enter_standby");
            goto standby_reached;
        }
        usleep_range_state(2000, 0x9c4, 2);
        /* Preserve the stock increment-and-carry loop under Clang. */
        asm volatile("" : "+r"(retry_count));
    } while (retry_count++ != -1);

    printk(KERN_ERR "[%s][%04d]%s: do not enter standby automatically\n",
           "haptic_hv", 0x1ef, "aw8693x_wait_enter_standby");
    printk(KERN_ERR "[%s][%04d]%s: force to enter standby mode!\n",
           "haptic_hv", 0x2b4, __func__);
    printk(KERN_INFO "[%s][%04d]%s: enter standby mode\n",
           "haptic_hv", 0x23e, "aw8693x_play_mode");
    *(u8 *)((u8 *)haptic + 0x17) = 0;
    (void)i2c_w_bits(haptic, 0x45, 0xffffffdfU, 0x20);
    (void)i2c_w_bits(haptic, 0x45, 0xffffffdfU, 0);

standby_reached:
    return;
}
