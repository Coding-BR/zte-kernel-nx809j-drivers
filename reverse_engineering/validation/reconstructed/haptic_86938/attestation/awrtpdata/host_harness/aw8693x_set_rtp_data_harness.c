/* SPDX-License-Identifier: GPL-2.0 */
#include <stdio.h>
#include <string.h>

#ifndef CANDIDATE_SOURCE
#error "CANDIDATE_SOURCE must name the source under test"
#endif

#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)

#include <linux/types.h>

struct aw_haptic {
	unsigned int marker;
};

#include STRINGIFY(CANDIDATE_SOURCE)

static struct aw_haptic *expected_haptic;
static u8 *expected_data;
static u32 expected_length;
static unsigned int write_count;
static int contract_error;

int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length)
{
	write_count++;
	if (haptic != expected_haptic) {
		fprintf(stderr, "FAIL: haptic pointer mismatch\n");
		contract_error = 1;
	} else if (reg != 0x32) {
		fprintf(stderr, "FAIL: expected reg 0x32, got 0x%02x\n", reg);
		contract_error = 1;
	} else if (data != expected_data) {
		fprintf(stderr, "FAIL: data pointer mismatch\n");
		contract_error = 1;
	} else if (length != expected_length) {
		fprintf(stderr, "FAIL: expected length %u, got %u\n",
			expected_length, length);
		contract_error = 1;
	}
	return -5;
}

int main(void)
{
	struct aw_haptic haptic = { .marker = 0x8693 };
	u8 data[] = { 0x11, 0x22, 0x33 };

	expected_haptic = &haptic;
	expected_data = data;
	expected_length = sizeof(data);
	aw8693x_set_rtp_data(&haptic, data, sizeof(data));
	if (contract_error)
		return 1;
	if (write_count != 1) {
		fprintf(stderr, "FAIL: expected one i2c write, got %u\n", write_count);
		return 1;
	}
	puts("PASS: one synchronous write to register 0x32 with the original buffer and length");
	return 0;
}
