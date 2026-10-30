// SPDX-License-Identifier: GPL-2.0
#include <linux/i2c.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/string.h>

struct aw_haptic;

int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length)
{
    char *buffer = kmalloc(length + 1, GFP_KERNEL);
    int result;

    buffer[0] = reg;
    memcpy(buffer + 1, data, length);
    result = i2c_transfer_buffer_flags(
        *(struct i2c_client **)((char *)haptic + 0x328),
        buffer, length + 1, 0);
    if (result < 0) {
        printk("\0013[%s][%04d]%s: i2c master send 0x%02x err\n",
               "haptic_hv", 0x7a, "i2c_w_bytes", reg);
    }
    kfree(buffer);
    return result;
}
