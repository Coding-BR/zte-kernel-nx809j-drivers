// SPDX-License-Identifier: GPL-2.0
/* Joern-only semantic model; the Makefile builds the verified exact .S body. */
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

void aw8693x_trig_init(struct aw_haptic *haptic)
{
	u8 *object = (u8 *)haptic;
	u8 value;
	u8 trig1;
	u8 trig2;
	u8 trig3;

	printk(KERN_INFO "[%s][%04d]%s: enter\n", "haptic_hv", 0x619,
	       __func__);
	if (object[0x4bf] == 1U) {
		printk(KERN_INFO "[%s][%04d]%s: one wire is enabled\n", "haptic_hv",
		       0x61b, __func__);
		printk(KERN_INFO "[%s][%04d]%s: enter\n", "haptic_hv", 0x30b,
		       "aw8693x_one_wire_init");
		value = 0x6cU;
		(void)i2c_w_bytes(haptic, 0x3eU, &value, 1U);
		value = 0x75U;
		(void)i2c_w_bytes(haptic, 0x3cU, &value, 1U);
		(void)i2c_w_bits(haptic, 0x3aU, 0xfffffff7U, 8U);
	} else {
		object[0x5e7] = object[0x4a5];
		object[0x5e8] = object[0x4a6];
		object[0x5e9] = object[0x4a7];
		object[0x5eb] = object[0x4a8];
		object[0x5ea] = object[0x4a9];
		object[0x5ec] = object[0x4aa];
		trig1 = (object[0x4a5] != 0U ? 0x40U : 0U) |
			(object[0x4a6] != 0U ? 0x80U : 0U) |
			(object[0x4ab] != 0U ? 0x20U : 0U) |
			(object[0x4ac] != 0U ? 0x10U : 0U);
		object[0x5e5] = object[0x4ab];
		object[0x5e6] = object[0x4ac];
		(void)i2c_w_bits(haptic, 0x39U, 0xffffff0fU, trig1);
		value = object[0x5eb] |
			(object[0x5e9] != 0U ? 0x80U : 0U);
		(void)i2c_w_bytes(haptic, 0x33U, &value, 1U);
		value = object[0x5ec] |
			(object[0x5ea] != 0U ? 0x80U : 0U);
		(void)i2c_w_bytes(haptic, 0x36U, &value, 1U);
	}

	object[0x5f4] = object[0x4ad];
	object[0x5f5] = object[0x4ae];
	object[0x5f6] = object[0x4af];
	object[0x5f7] = object[0x4b1];
	object[0x5f8] = object[0x4b0];
	object[0x5f9] = object[0x4b2];
	object[0x5f2] = object[0x4b3];
	object[0x5f3] = object[0x4b4];
	object[0x601] = object[0x4b5];
	object[0x602] = object[0x4b6];
	object[0x603] = object[0x4b7];
	object[0x604] = object[0x4b9];
	object[0x605] = object[0x4b8];
	object[0x606] = object[0x4ba];
	object[0x5ff] = object[0x4bb];
	object[0x600] = object[0x4bc];

	trig2 = (object[0x4ad] != 0U ? 0x04U : 0U) |
		(object[0x4ae] != 0U ? 0x08U : 0U) |
		(object[0x4b3] != 0U ? 0x02U : 0U) |
		(object[0x4b4] != 0U ? 0x01U : 0U);
	(void)i2c_w_bits(haptic, 0x39U, 0xfffffff0U, trig2);
	value = object[0x5f8] |
		(object[0x5f6] != 0U ? 0x80U : 0U);
	(void)i2c_w_bytes(haptic, 0x34U, &value, 1U);
	value = object[0x5f9] |
		(object[0x5f7] != 0U ? 0x80U : 0U);
	(void)i2c_w_bytes(haptic, 0x37U, &value, 1U);

	trig3 = (object[0x601] != 0U ? 0x40U : 0U) |
		(object[0x602] != 0U ? 0x80U : 0U) |
		(object[0x5ff] != 0U ? 0x20U : 0U) |
		(object[0x600] != 0U ? 0x10U : 0U);
	(void)i2c_w_bits(haptic, 0x3aU, 0xffffff0fU, trig3);
	value = object[0x605] |
		(object[0x603] != 0U ? 0x80U : 0U);
	(void)i2c_w_bytes(haptic, 0x35U, &value, 1U);
	value = object[0x606] |
		(object[0x604] != 0U ? 0x80U : 0U);
	(void)i2c_w_bytes(haptic, 0x38U, &value, 1U);

}
