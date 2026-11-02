/* SPDX-License-Identifier: GPL-2.0 */
#include <stdint.h>
#include <stdio.h>

#include <linux/types.h>

#ifndef CANDIDATE_SOURCE
#error "CANDIDATE_SOURCE must name the source under test"
#endif

#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)

struct aw_haptic {
	unsigned int marker;
};

static struct aw_haptic haptic = { .marker = 0x8693 };
static struct aw_haptic *observed_haptic;
static u8 observed_reg;
static u32 observed_mask;
static u8 observed_value;
static unsigned int call_count;

int i2c_w_bits(struct aw_haptic *argument_haptic, u8 reg, u32 mask, u8 value)
{
	observed_haptic = argument_haptic;
	observed_reg = reg;
	observed_mask = mask;
	observed_value = value;
	call_count++;
	return -121;
}

#include STRINGIFY(CANDIDATE_SOURCE)

static int check_case(u8 flag, u8 expected_value)
{
	unsigned int calls_before = call_count;

	aw8693x_set_rtp_aei(&haptic, flag);
	if (call_count != calls_before + 1)
		return 0;
	if (observed_haptic != &haptic || observed_reg != 0x03 ||
	    observed_mask != UINT32_C(0xffffffef) ||
	    observed_value != expected_value)
		return 0;
	return 1;
}

int main(void)
{
	if (!check_case(0, 0x10))
		goto fail;
	if (!check_case(1, 0x00))
		goto fail;
	if (!check_case(2, 0x10))
		goto fail;
	if (!check_case(3, 0x00))
		goto fail;
	puts("PASS: flag bit 0 maps to active-low RTP_AEI mask update");
	return 0;

fail:
	fputs("FAIL: i2c_w_bits arguments or call count mismatch\n", stderr);
	return 1;
}
