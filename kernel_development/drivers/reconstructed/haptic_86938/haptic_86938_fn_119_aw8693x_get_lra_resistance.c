// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler_attributes.h>
#include <linux/delay.h>
#include <linux/types.h>

struct aw_haptic;
extern void aw8693x_stop(struct aw_haptic *haptic);
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);
extern void usleep_range_state(unsigned long min, unsigned long max,
                               u32 state);

void aw8693x_get_lra_resistance(struct aw_haptic *haptic)
{
    u8 resistance_bytes[2] __uninitialized;
    u8 register_value[4] __uninitialized;
    u8 saved_4d;
    u8 saved_4e;
    u32 raw_resistance;

    register_value[0] = 0;
    resistance_bytes[0] = 0;
    resistance_bytes[1] = 0;
    aw8693x_stop(haptic);
    (void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 4);
    usleep_range_state(500, 600, 2);
    (void)i2c_w_bits(haptic, 0x4e, 0xffffff87U, 0x18);
    (void)i2c_r_bytes(haptic, 0x4d, register_value, 1);
    saved_4d = register_value[0];
    (void)i2c_r_bytes(haptic, 0x4e, register_value, 1);
    saved_4e = register_value[0];
    (void)i2c_w_bits(haptic, 0x4e, 0xfffffff8U, 4);
    (void)i2c_w_bits(haptic, 0x4d, 0xfffffff0U, 5);
    usleep_range_state(3000, 0xdac, 2);
    (void)i2c_w_bits(haptic, 0x4d, 0xfffffffcU, 0);
    (void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 0);
    (void)i2c_w_bits(haptic, 0x4d, 0xfffffff3U, saved_4d & 0x0c);
    (void)i2c_w_bits(haptic, 0x4e, 0xfffffff8U, saved_4e & 7);
    (void)i2c_r_bytes(haptic, 0x4f, resistance_bytes, 2);
    raw_resistance = (((u32)resistance_bytes[0] & 3U) << 8) |
                     (u32)resistance_bytes[1];
    *(u32 *)((u8 *)haptic + 0x64) =
        raw_resistance * 610000U / 0x27f6U;
}
