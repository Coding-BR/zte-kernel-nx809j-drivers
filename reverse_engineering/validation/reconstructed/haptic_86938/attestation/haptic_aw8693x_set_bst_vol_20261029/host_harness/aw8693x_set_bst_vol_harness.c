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
	u8 input;
	u8 expected;
};

int main(void)
{
	static const struct test_case cases[] = {
		{ 0, 5 }, { 4, 5 }, { 5, 5 }, { 6, 6 },
		{ 24, 24 }, { 25, 25 }, { 26, 25 }, { 255, 25 },
	};
	unsigned int i;

	for (i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
		unsigned int before = call_count;
		aw8693x_set_bst_vol(&haptic, cases[i].input);
		if (call_count != before + 1 || observed_haptic != &haptic ||
		    observed_reg != 6 || observed_mask != UINT32_C(0xffffffe0) ||
		    observed_value != cases[i].expected) {
			fputs("FAIL: clamp, register, mask, or call count mismatch", stderr);
			fputc(10, stderr);
			return 1;
		}
	}
	puts("PASS: boost-voltage clamp and masked register-write contract");
	return 0;
}
