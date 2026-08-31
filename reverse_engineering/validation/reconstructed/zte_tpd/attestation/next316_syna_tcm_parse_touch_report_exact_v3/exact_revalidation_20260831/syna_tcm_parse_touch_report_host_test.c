#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

struct tcm_dev;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_parse_touch_report.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static int invoke(unsigned char *tcm, const unsigned char *report,
			  unsigned int report_size, unsigned int *output)
{
	return syna_tcm_parse_touch_report((struct tcm_dev *)tcm, report,
						  report_size, output);
}

static void reset_tcm(unsigned char *tcm)
{
	memset(tcm, 0, 0x500);
	*(u32 *)(tcm + SYNAPARSE_MAX_OBJECTS) = 1;
}

static void set_format(unsigned char *tcm, unsigned char *format,
			       u32 length)
{
	*(uintptr_t *)(tcm + SYNAPARSE_CUSTOM_FORMAT) = (uintptr_t)format;
	*(u32 *)(tcm + SYNAPARSE_CUSTOM_FORMAT_SIZE) = length;
}

static void test_invalid_handles(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[8] = { 0 };
	u32 output[256] = { 0 };

	expect_true(invoke(NULL, report, sizeof(report), output) == -241,
			"null tcm rejected");
	reset_tcm(tcm);
	expect_true(invoke(tcm, NULL, sizeof(report), output) == -241,
			"null report rejected");
	reset_tcm(tcm);
	expect_true(invoke(tcm, report, sizeof(report), NULL) == -241,
			"null output rejected");
	reset_tcm(tcm);
	*(u32 *)(tcm + SYNAPARSE_MAX_OBJECTS) = 0;
	expect_true(invoke(tcm, report, sizeof(report), output) == -241,
			"zero object capacity rejected");
}

static void test_disabled_parser_and_termination(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[8] = { 0 };
	unsigned char format[] = { 0 };
	u32 output[256];

	reset_tcm(tcm);
	memset(output, 0xa5, sizeof(output));
	*(u32 *)(tcm + SYNAPARSE_PARSER_MODE) = 1;
	expect_true(invoke(tcm, report, sizeof(report), output) == 0,
			"disabled parser returns success");
	expect_true(output[0] == 0xa5a5a5a5U,
			"disabled parser does not mutate output");

	reset_tcm(tcm);
	set_format(tcm, format, sizeof(format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 0,
			"zero format terminates successfully");
}

static void test_scalar_and_object_fields(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[16] = { 0xa5, 0x5a, 0x3c, 0xc3 };
	u32 output[256] = { 0 };
	unsigned char scalar_format[] = { 5, 8, 0 };
	unsigned char first_format[] = { 6, 8, 0 };
	unsigned char object_format[] = {
		7, 8, 8, 8, 9, 8, 0x0a, 8, 0x0b, 8,
		0x0c, 8, 0x0d, 8, 0x0e, 8, 0,
	};

	reset_tcm(tcm);
	set_format(tcm, scalar_format, sizeof(scalar_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 8 &&
				output[SYNAREPORT_FIELD_5 / sizeof(u32)] == 0xa5,
				"scalar format stores field 5");

	reset_tcm(tcm);
	set_format(tcm, first_format, sizeof(first_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 8 &&
				output[0] == 0xa5,
				"first-field format stores decoded value");

	reset_tcm(tcm);
	set_format(tcm, object_format, sizeof(object_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 64 &&
				output[2] == 0xa5 && output[3] == 0x5a &&
				output[4] == 0x3c && output[7] == 0xc3,
				"object fields store decoded bytes");
}

static void test_global_fields_and_invalid_width(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[16] = { 0x11, 0x22, 0x33, 0x44 };
	u32 output[256] = { 0 };
	unsigned char globals_format[] = {
		0x0f, 8, 0x11, 8, 0x12, 8, 0x13, 8,
		0x14, 8, 0x15, 8, 0x16, 8, 0x17, 8,
		0x18, 8, 0x19, 8, 0x1a, 8, 0x1c, 8,
		0x1d, 8, 0x1e, 8, 0,
	};
	unsigned char invalid_format[] = { 5, 33, 0 };

	reset_tcm(tcm);
	set_format(tcm, globals_format, sizeof(globals_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 112,
			"global format consumes all fields");
	expect_true(output[SYNAREPORT_FIELD_F / sizeof(u32)] == 0x11 &&
				output[SYNAREPORT_FIELD_11 / sizeof(u32)] == 0x22 &&
				output[SYNAREPORT_GESTURE_VALUE / sizeof(u32)] == 0,
				"global fields store decoded values");

	reset_tcm(tcm);
	set_format(tcm, invalid_format, sizeof(invalid_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == -241,
			"invalid field width is rejected");
}

int main(void)
{
	test_invalid_handles();
	test_disabled_parser_and_termination();
	test_scalar_and_object_fields();
	test_global_fields_and_invalid_width();
	puts("PASS: syna_tcm_parse_touch_report host contract");
	return 0;
}
