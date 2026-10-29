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
static u8 observed_value;
static u32 observed_length;
static unsigned int calls;

int i2c_w_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	observed_haptic = arg;
	observed_reg = reg;
	observed_value = data ? data[0] : 0;
	observed_length = length;
	calls++;
	return -121;
}

#include STRINGIFY(CANDIDATE_SOURCE)

struct test_case { u8 gain; };

int main(void)
{
	static const struct test_case cases[] = { { 0 }, { 1 }, { 127 }, { 255 } };
	unsigned int i;

	for (i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
		unsigned int before = calls;
		aw8693x_set_gain(&haptic, cases[i].gain);
		if (calls != before + 1 || observed_haptic != &haptic ||
		    observed_reg != 7 || observed_value != cases[i].gain ||
		    observed_length != 1) {
			fputs("FAIL: gain byte, register, transfer length, or call count mismatch", stderr);
			fputc(10, stderr);
			return 1;
		}
	}
	puts("PASS: single-byte gain register write");
	return 0;
}
