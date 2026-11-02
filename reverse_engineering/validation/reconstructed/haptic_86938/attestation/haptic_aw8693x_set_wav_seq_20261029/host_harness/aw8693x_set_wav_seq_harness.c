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
static unsigned int call_count;

int i2c_w_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	observed_haptic = arg;
	observed_reg = reg;
	observed_value = data ? data[0] : 0;
	observed_length = length;
	call_count++;
	return -121;
}

#include STRINGIFY(CANDIDATE_SOURCE)

struct test_case {
	int index;
	u8 wav;
	u8 expected_reg;
};

int main(void)
{
	static const struct test_case cases[] = {
		{ 0, 0x00, 10 },
		{ 1, 0xa5, 11 },
		{ 245, 0xff, 255 },
		{ 246, 0x72, 0 },
		{ -1, 0x34, 9 },
		{ 0x12345, 0x01, (u8)(0x12345 + 10) },
	};
	unsigned int i;

	for (i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
		unsigned int before = call_count;
		aw8693x_set_wav_seq(&haptic, cases[i].index, cases[i].wav);
		if (call_count != before + 1 || observed_haptic != &haptic ||
		    observed_reg != cases[i].expected_reg ||
		    observed_value != cases[i].wav || observed_length != 1) {
			fputs("FAIL: register, byte value, length, or call count mismatch", stderr);
			fputc(10, stderr);
			return 1;
		}
	}
	puts("PASS: wav-sequence register and single-byte write contract");
	return 0;
}
