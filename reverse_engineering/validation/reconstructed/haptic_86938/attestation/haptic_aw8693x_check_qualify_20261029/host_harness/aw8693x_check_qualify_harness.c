// SPDX-License-Identifier: GPL-2.0
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <linux/types.h>

struct aw_haptic { u8 opaque[8]; };
static struct aw_haptic haptic;
static u8 response_byte;
static int write_response, helper_result;
static unsigned int read_calls, printk_calls;
static struct aw_haptic *seen_haptic;
static u8 seen_register, seen_length, seen_initial, seen_byte;
static int log_arguments_ok;
int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)
#include STRINGIFY(CANDIDATE_SOURCE)

int i2c_r_bytes(struct aw_haptic *arg, u8 reg, u8 *data, u32 length)
{
	++read_calls;
	seen_haptic = arg;
	seen_register = reg;
	seen_length = (u8)length;
	seen_initial = data[0];
	if (write_response && length)
		data[0] = response_byte;
	seen_byte = data[0];
	return helper_result;
}

int printk(const char *format, ...)
{
	va_list args;
	const char *tag, *function;
	int line, negative;
	const char *expected_format;

	++printk_calls;
	negative = (int)(s8)seen_byte < 0;
	expected_format = negative ?
		"\0016[%s][%04d]%s: qualified chip\n" :
		"\0013[%s][%04d]%s: unqualified chip\n";
	va_start(args, format);
	tag = va_arg(args, const char *);
	line = va_arg(args, int);
	function = va_arg(args, const char *);
	va_end(args);
	log_arguments_ok = !strcmp(format, expected_format) &&
		!strcmp(tag, "haptic_hv") && line == (negative ? 313 : 310) &&
		!strcmp(function, "aw8693x_check_qualify");
	return -77;
}

static int fail(void)
{
	fputs("FAIL: signed qualification, I2C contract, return code, or printk mismatch\n", stderr);
	return 1;
}

int main(void)
{
	struct test_case { u8 byte; int write, status, result; };
	static const struct test_case cases[] = {
		{0x00, 1, 0, -34},
		{0x7f, 1, -5, -34},
		{0x80, 1, 0, 0},
		{0xff, 1, -6, 0},
		{0x00, 0, -5, -34},
	};
	unsigned int i;

	for (i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
		int result;

		read_calls = printk_calls = 0;
		log_arguments_ok = 0;
		response_byte = cases[i].byte;
		write_response = cases[i].write;
		helper_result = cases[i].status;
		result = aw8693x_check_qualify(&haptic);
		if (result != cases[i].result || read_calls != 1 || printk_calls != 1 ||
		    seen_haptic != &haptic || seen_register != 100 || seen_length != 1 ||
		    seen_initial != 0 || seen_byte != (cases[i].write ? cases[i].byte : 0) ||
		    !log_arguments_ok)
			return fail();
	}
	puts("PASS: signed qualification, return codes, I2C contract, and logs");
	return 0;
}
