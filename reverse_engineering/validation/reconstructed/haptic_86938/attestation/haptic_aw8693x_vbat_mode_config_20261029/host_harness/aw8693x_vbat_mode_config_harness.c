// SPDX-License-Identifier: GPL-2.0
#include <stdint.h>
#include <stdio.h>
#include <string.h>
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

static int check_case(u8 flag, u8 expected)
{
	unsigned int before = call_count;
	memset(&haptic, 0, sizeof(haptic));
	aw8693x_vbat_mode_config(&haptic, flag);
	return call_count == before + 1 &&
	       observed_haptic == &haptic &&
	       observed_reg == 0x4c &&
	       observed_mask == UINT32_C(0xffffffbf) &&
	       observed_value == expected;
}

int main(void)
{
	if (!check_case(0, 0x00) ||
	    !check_case(1, 0x40) ||
	    !check_case(2, 0x00) ||
	    !check_case(0xff, 0x00)) {
		fputs("FAIL: register, mask, equality predicate, shift, or call count mismatch", stderr); fputc(10, stderr);
		return 1;
	}
	puts("PASS: exact flag==1 condition updates bit 6 of register 0x4c");
	return 0;
}