// SPDX-License-Identifier: GPL-2.0
#include <stdio.h>
#include <linux/types.h>
struct aw_haptic { u8 opaque[8]; };
static struct aw_haptic haptic;
struct event { int kind; u8 reg; u8 data; u32 length; u32 mask; u8 value; };
static struct event events[2];
static unsigned int event_count;
static int bytes_result, bits_result;
int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);
int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)
#include STRINGIFY(CANDIDATE_SOURCE)
int i2c_w_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	if (arg != &haptic || event_count >= 2) return -90;
	events[event_count++] = (struct event){1, reg, data[0], length, 0, 0};
	return bytes_result;
}
int i2c_w_bits(struct aw_haptic *arg, u8 reg, u32 mask, u8 value)
{
	if (arg != &haptic || event_count >= 2) return -91;
	events[event_count++] = (struct event){2, reg, 0, 0, mask, value};
	return bits_result;
}
static int fail(void)
{
	fputs("FAIL: repeat sequence calls, order, payload, mask, or status handling mismatch\n", stderr);
	return 1;
}
int main(void)
{
	static const u8 inputs[] = {0, 1, 0x0f, 0x10, 0xf0, 0xff};
	unsigned int i;
	for (i = 0; i < sizeof(inputs); ++i) {
		event_count = 0;
		bytes_result = (i & 1U) ? -5 : 0;
		bits_result = (i & 2U) ? -6 : 1;
		aw8693x_set_repeat_seq(&haptic, inputs[i]);
		if (event_count != 2 || events[0].kind != 1 || events[0].reg != 0x0a ||
		    events[0].data != inputs[i] || events[0].length != 1 ||
		    events[1].kind != 2 || events[1].reg != 0x12 ||
		    events[1].mask != 0xffffff0fU || events[1].value != 0xf0)
			return fail();
	}
	puts("PASS: two ordered repeat-sequence writes and ignored helper statuses");
	return 0;
}
