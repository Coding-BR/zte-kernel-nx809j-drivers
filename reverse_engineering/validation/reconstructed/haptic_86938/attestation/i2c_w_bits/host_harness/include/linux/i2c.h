#ifndef I2C_W_BITS_HOST_I2C_H
#define I2C_W_BITS_HOST_I2C_H
#include <linux/types.h>

#define I2C_M_RD 0x0001

struct i2c_adapter {
	unsigned int marker;
};

struct i2c_client {
	u16 flags;
	u16 addr;
	unsigned char padding[20];
	struct i2c_adapter *adapter;
};

struct i2c_msg {
	u16 addr;
	u16 flags;
	u16 len;
	u8 *buf;
};

int i2c_transfer(struct i2c_adapter *adapter, struct i2c_msg *messages, int count);

#endif
