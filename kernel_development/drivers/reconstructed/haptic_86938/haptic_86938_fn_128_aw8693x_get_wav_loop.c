// SPDX-License-Identifier: GPL-2.0
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;

extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
                       u32 length);

unsigned long aw8693x_get_wav_loop(struct aw_haptic *haptic, char *buf)
{
    u32 loop_bytes = 0;
    u8 *data = (u8 *)&loop_bytes;
    u8 byte_value;
    u8 high_nibble;
    unsigned long length;

    (void)i2c_r_bytes(haptic, 0x12, data, 4);

    byte_value = data[0];
    high_nibble = byte_value >> 4;
    byte_value &= 0x0f;
    *(u8 *)((char *)haptic + 0x27) = byte_value;
    *(u8 *)((char *)haptic + 0x26) = high_nibble;
    length = snprintf(buf, 0x1000, "seq%d loop: 0x%02x\n", 1,
                      high_nibble);
    length += snprintf(buf + length, 0x1000 - length,
                       "seq%d loop: 0x%02x\n", 2,
                       *(u8 *)((char *)haptic + 0x27));

    byte_value = data[1];
    high_nibble = byte_value >> 4;
    byte_value &= 0x0f;
    *(u8 *)((char *)haptic + 0x29) = byte_value;
    *(u8 *)((char *)haptic + 0x28) = high_nibble;
    length += snprintf(buf + length, 0x1000 - length,
                       "seq%d loop: 0x%02x\n", 3, high_nibble);
    length += snprintf(buf + length, 0x1000 - length,
                       "seq%d loop: 0x%02x\n", 4,
                       *(u8 *)((char *)haptic + 0x29));

    byte_value = data[2];
    high_nibble = byte_value >> 4;
    byte_value &= 0x0f;
    *(u8 *)((char *)haptic + 0x2b) = byte_value;
    *(u8 *)((char *)haptic + 0x2a) = high_nibble;
    length += snprintf(buf + length, 0x1000 - length,
                       "seq%d loop: 0x%02x\n", 5, high_nibble);
    length += snprintf(buf + length, 0x1000 - length,
                       "seq%d loop: 0x%02x\n", 6,
                       *(u8 *)((char *)haptic + 0x2b));

    byte_value = data[3];
    high_nibble = byte_value >> 4;
    byte_value &= 0x0f;
    *(u8 *)((char *)haptic + 0x2d) = byte_value;
    *(u8 *)((char *)haptic + 0x2c) = high_nibble;
    length += snprintf(buf + length, 0x1000 - length,
                       "seq%d loop: 0x%02x\n", 7, high_nibble);
    length += snprintf(buf + length, 0x1000 - length,
                       "seq%d loop: 0x%02x\n", 8,
                       *(u8 *)((char *)haptic + 0x2d));

    return length;
}
