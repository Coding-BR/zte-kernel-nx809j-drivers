// SPDX-License-Identifier: GPL-2.0
#include <linux/delay.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;

extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);
extern void usleep_range_state(unsigned long min, unsigned long max,
			       u32 state);

static const s32 d2s_gain[8] = {
	2046, 3069, 5115, 9207, 11253, 17391, 21483, 41943,
};

static inline s32 aw8693x_stock_sdiv(s32 dividend, s32 divisor)
{
#if defined(__aarch64__)
	s32 quotient;

	asm("sdiv %w0, %w1, %w2"
	    : "=r"(quotient) : "r"(dividend), "r"(divisor));
	return quotient;
#else
	/* AArch64 SDIV returns zero for a zero divisor; C division does not. */
	if (!divisor)
		return 0;
	if (dividend == (-2147483647 - 1) && divisor == -1)
		return dividend;
	return dividend / divisor;
#endif
}

void aw8693x_offset_cali(struct aw_haptic *haptic)
{
	u8 sample[3] = { 0 };
	u8 index;
	int divisor;
	int raw;
	int offset;

	(void)i2c_w_bits(haptic, 0x4e, 0xfffffff8U,
			 *(u8 *)((u8 *)haptic + 0x495));
	(void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 4U);
	usleep_range_state(500, 600, 2);
	(void)i2c_w_bits(haptic, 0x4e, 0xffffff87U, 0x20U);
	(void)i2c_w_bits(haptic, 0x4d, 0xfffffffcU, 1U);
	usleep_range_state(3000, 0xdac, 2);
	(void)i2c_w_bits(haptic, 0x4d, 0xfffffffcU, 0U);
	(void)i2c_r_bytes(haptic, 0x4f, sample, 2U);
	(void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 0U);

	index = *(u8 *)((u8 *)haptic + 0x495);
	if (index < 8U) {
		divisor = d2s_gain[index];
	} else {
		printk(KERN_ERR "[%s][%04d]%s: d2s_gain is error\n",
		       "haptic_hv", 0x609, __func__);
		divisor = 0;
	}

	raw = ((sample[0] & 3U) << 8) | sample[1];
	offset = aw8693x_stock_sdiv(0x988 * raw - 0x131000, divisor);
	printk(KERN_INFO "[%s][%04d]%s: os_code = %d\n",
	       "haptic_hv", 0x60e, __func__, offset);
	if (offset - 0x10U < 0xffffffe1U)
		printk(KERN_INFO
		       "[%s][%04d]%s: offset calibration out of range\n",
		       "haptic_hv", 0x610, __func__);
}
