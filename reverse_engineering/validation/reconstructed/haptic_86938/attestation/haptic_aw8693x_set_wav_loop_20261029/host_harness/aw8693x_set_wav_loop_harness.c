// SPDX-License-Identifier: GPL-2.0
#include <stdint.h>
#include <stdio.h>
#include <linux/types.h>

#ifndef CANDIDATE_SOURCE
#error "CANDIDATE_SOURCE must name the source under test"
#endif
#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)

struct aw_haptic { u8 opaque[16]; };
static struct aw_haptic haptic;
static struct aw_haptic *observed_haptic;
static u8 observed_reg;
static u32 observed_mask;
static u8 observed_value;
static unsigned int call_count;

int i2c_w_bits(struct aw_haptic *arg, u8 reg, u32 mask, u8 value)
{
	observed_haptic = arg;
	observed_reg = reg;
	observed_mask = mask;
	observed_value = value;
	call_count++;
	return -121;
}

#include STRINGIFY(CANDIDATE_SOURCE)

struct test_case {
	u8 index;
	u8 loop;
	u8 expected_reg;
	u32 expected_mask;
	u8 expected_value;
};

int main(void)
{
	static const struct test_case cases[] = {
		{ 0, 0x1f, 0x12, UINT32_C(0xffffff0f), 0xf0 },
		{ 1, 0x1f, 0x12, UINT32_C(0xfffffff0), 0x1f },
		{ 2, 0x03, 0x13, UINT32_C(0xffffff0f), 0x30 },
		{ 0xfe, 0x80, 0x91, UINT32_C(0xffffff0f), 0x00 },
		{ 0xff, 0x80, 0x91, UINT32_C(0xfffffff0), 0x80 },
		{ 0xff, 0xff, 0x91, UINT32_C(0xfffffff0), 0xff },
	};
	unsigned int i;

	for (i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
		unsigned int before = call_count;
		aw8693x_set_wav_loop(&haptic, cases[i].index, cases[i].loop);
		if (call_count != before + 1 || observed_haptic != &haptic ||
		    observed_reg != cases[i].expected_reg ||
		    observed_mask != cases[i].expected_mask ||
		    observed_value != cases[i].expected_value) {
			fputs("FAIL: index, mask, loop value, or call count mismatch", stderr);
			fputc(10, stderr);
			return 1;
		}
	}
	puts("PASS: wav-loop register, mask, and low-byte update contract");
	return 0;
}