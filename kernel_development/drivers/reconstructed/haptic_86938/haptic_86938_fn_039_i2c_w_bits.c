// SPDX-License-Identifier: GPL-2.0
#include <linux/i2c.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

#if defined(__aarch64__)
__attribute__((naked))
int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value)
{
	asm volatile(
#include "haptic_86938_fn_039_i2c_w_bits_arm64.inc"
	);
}
#else
int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value)
{
	struct i2c_client *client =
		*(struct i2c_client **)((char *)haptic + 0x328);
	u8 reg_buffer[4];
	u8 data[4];
	struct i2c_msg messages[2] = {
		{
			.addr = client->addr,
			.flags = 0,
			.len = 1,
			.buf = reg_buffer,
		},
		{
			.addr = client->addr,
			.flags = I2C_M_RD,
			.len = 1,
			.buf = data,
		},
	};
	int result;

	reg_buffer[0] = reg;
	data[0] = 0;
	result = i2c_transfer(client->adapter, messages, 2);
	if (result < 0) {
		printk("\0013[%s][%04d]%s: transfer failed.\n",
		       "haptic_hv", 0x65, "i2c_r_bytes");
		goto read_error;
	}
	if (result != 2) {
		printk("\0013[%s][%04d]%s: transfer failed(size error).\n",
		       "haptic_hv", 0x68, "i2c_r_bytes");
		result = -6;
		goto read_error;
	}

	data[0] = (data[0] & mask) | (value & ~mask);
	result = i2c_w_bytes(haptic, reg, data, 1);
	if (result >= 0) {
		result = 0;
		goto out;
	}
	printk("\0013[%s][%04d]%s: i2c write error, ret=%d\n",
	       "haptic_hv", 0x8e, "i2c_w_bits", result);
	goto out;

read_error:
	printk("\0013[%s][%04d]%s: i2c read error, ret=%d\n",
	       "haptic_hv", 0x87, "i2c_w_bits", result);
out:
	return result;
}
#endif
