// SPDX-License-Identifier: GPL-2.0
/* Joern-only semantic model; the Makefile builds the verified exact .S body. */
#include <linux/printk.h>
#include <linux/string.h>
#include <linux/types.h>

struct aw_haptic;

extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

void aw8693x_misc_para_init(struct aw_haptic *haptic)
{
	u8 *object = (u8 *)haptic;
	u8 data[8] = { 0 };
	u8 value;
	u32 period;
	u32 sample_rate;

	object[0x12] = *(u8 *)(*(unsigned long *)(object + 0x328) + 2U);
	data[0] = object[0x12];
	(void)i2c_w_bytes(haptic, 0x47U, data, 1U);

	period = *(u32 *)(object + 0x468) > 0x707U ? 0x7c6U : 0x711U;
	sample_rate = *(u32 *)(object + 0x4c4);
	sample_rate = (period * sample_rate) / 40000U;
	if (sample_rate > 0x7eU)
		sample_rate = 0x7fU;
	object[0x49b] = (u8)sample_rate;
	*(u32 *)(object + 0x30) = object[0x463];

	(void)i2c_r_bytes(haptic, 7U, data, 1U);
	*(u32 *)(object + 0x34) = data[0];
	(void)i2c_r_bytes(haptic, 10U, data, 8U);
	*(u32 *)(object + 0x44) = data[0];
	memcpy(object + 0x1e, data, sizeof(data));

	(void)i2c_w_bits(haptic, 0x46U, 0xfffffffeU, object[0x4c1]);
	(void)i2c_w_bits(haptic, 0x18U, 0xffffff7fU,
			 (u8)(object[0x4c3] << 7));
	(void)i2c_w_bits(haptic, 0x1cU, 0xfffffff0U, object[0x49f]);
	(void)i2c_w_bytes(haptic, 0x21U, object + 0x49d, 1U);
	(void)i2c_w_bits(haptic, 0x48U, 0xffffff7fU, 0U);
	printk(KERN_INFO "[%s][%04d]%s: enable protection mode\n",
	       "haptic_hv", 0x2e6, "aw8693x_protect_config");
	value = 0xbfU;
	(void)i2c_w_bytes(haptic, 0x4aU, &value, 1U);
	value = 0x32U;
	(void)i2c_w_bytes(haptic, 0x4bU, &value, 1U);
	printk(KERN_INFO "[%s][%04d]%s: enter\n", "haptic_hv", 0x20d,
	       "aw8693x_vbat_ref_config");
	(void)i2c_w_bits(haptic, 0x4dU, 0xffffff8fU, 0x40U);

	data[0] = 0x1cU;
	data[1] = 0x0eU;
	data[2] = 0x03U;
	data[3] = 0x80U;
	data[4] = 0x41U;
	data[5] = 0x25U;
	value = 0x7dU;
	(void)i2c_w_bytes(haptic, 0x5eU, &value, 1U);
	(void)i2c_w_bits(haptic, 0x56U, 0xfffffffcU, object[0x4c2]);
	(void)i2c_w_bytes(haptic, 0x6fU, data, 2U);
	(void)i2c_w_bytes(haptic, 0x72U, data + 2, 1U);
	(void)i2c_w_bytes(haptic, 0x77U, data + 3, 1U);
	(void)i2c_w_bytes(haptic, 0x7dU, data + 4, 1U);
	(void)i2c_w_bytes(haptic, 0x6bU, data + 5, 1U);
	value = 0U;
	(void)i2c_w_bytes(haptic, 0x5eU, &value, 1U);
}
