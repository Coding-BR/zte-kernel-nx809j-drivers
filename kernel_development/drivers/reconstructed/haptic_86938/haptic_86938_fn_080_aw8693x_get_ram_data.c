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
