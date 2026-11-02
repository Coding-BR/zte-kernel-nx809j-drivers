// SPDX-License-Identifier: GPL-2.0
#include <linux/i2c.h>
#include <linux/kernel.h>

struct aw_haptic;

int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length)
{
    struct i2c_client *client =
        *(struct i2c_client **)((char *)haptic + 0x328);
    struct i2c_msg messages[2] = {
        {
            .addr = client->addr,
            .flags = 0,
            .len = 1,
            .buf = &reg,
        },
        {
            .addr = client->addr,
            .flags = I2C_M_RD,
            .len = length,
            .buf = data,
        },
    };
    int result;

    result = i2c_transfer(client->adapter, messages, 2);
    if (result < 0) {
        printk("\0013[%s][%04d]%s: transfer failed.\n",
               "haptic_hv", 0x65, "i2c_r_bytes");
    } else if (result != 2) {
        printk("\0013[%s][%04d]%s: transfer failed(size error).\n",
               "haptic_hv", 0x68, "i2c_r_bytes");
        result = -6;
    }

    return result;
}
