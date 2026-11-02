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
static u8 response;
static int write_response;
static int helper_status;
static struct aw_haptic *observed_haptic;
static u8 observed_reg;
static u32 observed_length;
static unsigned int calls;

int i2c_r_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	observed_haptic = arg;
	observed_reg = reg;
	observed_length = length;
	calls++;
	if (write_response && length > 0)
		data[0] = response;
	return helper_status;
}

#include STRINGIFY(CANDIDATE_SOURCE)

struct test_case { u8 response; int write; int helper_status; u8 expected; };

int main(void)
{
	static const struct test_case cases[] = {
		{ 0x01, 1, 0, 1 },
		{ 0xff, 1, 0, 1 },
		{ 0x02, 1, 0, 0 },
		{ 0x00, 1, 0, 0 },
		{ 0x55, 0, -6, 0 },
	};
	unsigned int i;

	for (i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
		unsigned int before = calls;
		response = cases[i].response;
		write_response = cases[i].write;
		helper_status = cases[i].helper_status;
		if (aw8693x_get_osc_status(&haptic) != cases[i].expected ||
		    calls != before + 1 || observed_haptic != &haptic ||
		    observed_reg != 0x04 || observed_length != 1) {
			fputs("FAIL: return bit, register, transfer length, or call count mismatch", stderr);
			fputc(10, stderr);
			return 1;
		}
	}
	puts("PASS: oscillator-status bit read and return contract");
	return 0;
}
