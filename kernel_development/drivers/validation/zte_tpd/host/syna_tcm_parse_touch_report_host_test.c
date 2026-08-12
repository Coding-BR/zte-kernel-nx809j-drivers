#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t _BYTE;
typedef uint8_t byte;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t uint;
typedef uint32_t undefined4;
typedef uint64_t ulong;
typedef uint64_t undefined8;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
typedef uint16_t _WORD;
#define __int64 long long
#define __int8 char
#define __int16 short
#define __int32 int
#define __fastcall
#define SP_EL0 0
#define LODWORD(x) (*(uint32_t *)&(x))
#define HIDWORD(x) (*((uint32_t *)&(x) + 1))
#define LOWORD(x) (*(uint16_t *)&(x))
#define BYTE4(x) (*((uint8_t *)&(x) + 4))
#define __break(x) abort()

static unsigned char regspace[0x800];
#define _ReadStatusReg(x) ((uintptr_t)regspace)

static const unsigned char default_custom_touch_format[21] = {
	0xca, 0x70, 0x10, 0x08, 0x18, 0x08, 0x01, 0x06,
	0x04, 0x07, 0x04, 0x08, 0x10, 0x09, 0x10, 0x0b,
	0x0c, 0x0c, 0x0c, 0x03, 0x00
};

#define unk_31CCD ""
#define unk_32C73 ""
#define unk_32C9D ""
#define unk_32CCB ""
#define unk_33236 ""
#define unk_33264 ""
#define unk_33290 ""
#define unk_332BB ""
#define unk_3365A ""
#define unk_3399D ""
#define unk_339C6 ""
#define unk_344B9 ""
#define unk_344E6 ""
#define unk_34ADA ""
#define unk_34B07 ""
#define unk_35154 ""
#define unk_3517A ""
#define unk_3519C ""
#define unk_35793 ""
#define unk_36D66 ""
#define unk_36D8C ""
#define unk_36DB1 ""
#define unk_37361 ""
#define unk_37384 ""
#define unk_37AB9 ""
#define unk_37AEF ""
#define unk_390B0 ""
#define unk_39BE7 ""
#define unk_3A60B ""
#define unk_3AE51 ""
#define unk_3B58B ""
#define unk_3BBFF ""
#define unk_3C226 ""
#define unk_3C253 ""
#define unk_3C868 ""

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
	return (int)syna_tcm_parse_touch_report(
		(__int64)(uintptr_t)tcm, (__int64)(uintptr_t)report,
		report_size, (__int64)(uintptr_t)output);
}

static void reset_tcm(unsigned char *tcm)
{
	memset(tcm, 0, 0x500);
	*(uint32_t *)(tcm + 0x18) = 1;
	*(uint32_t *)(tcm + 0x38c) = 0;
	*(uint32_t *)(tcm + 0x1d8) = 0;
	*(uint32_t *)(tcm + 0x1e0) = 0;
	*(uint32_t *)(tcm + 0x1e4) = 0;
}

static void set_format(unsigned char *tcm, unsigned char *format,
			       unsigned int length)
{
	*(uintptr_t *)(tcm + 0x190) = (uintptr_t)format;
	*(uint32_t *)(tcm + 0x19c) = length;
}

static void test_invalid_handles(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[8] = { 0 };
	unsigned int output[256] = { 0 };

	expect_true(invoke(NULL, report, sizeof(report), output) == -241,
			"null tcm rejected");
	reset_tcm(tcm);
	expect_true(invoke(tcm, NULL, sizeof(report), output) == -241,
			"null report rejected");
	reset_tcm(tcm);
	expect_true(invoke(tcm, report, sizeof(report), NULL) == -241,
			"null output rejected");
	reset_tcm(tcm);
	*(uint32_t *)(tcm + 0x18) = 0;
	expect_true(invoke(tcm, report, sizeof(report), output) == -241,
			"zero object capacity rejected");
}

static void test_disabled_parser(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[8] = { 0 };
	unsigned int output[256];

	reset_tcm(tcm);
	memset(output, 0xa5, sizeof(output));
	*(uint32_t *)(tcm + 0x38c) = 1;
	expect_true(invoke(tcm, report, sizeof(report), output) == 0,
			"disabled parser returns success");
	expect_true(output[0] == 0xa5a5a5a5U,
			"disabled parser does not mutate output");
}

static void test_format_termination(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[8] = { 0 };
	unsigned char format[] = { 0 };
	unsigned int output[256] = { 0 };

	reset_tcm(tcm);
	set_format(tcm, format, sizeof(format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 0,
			"zero format terminates successfully");
}

static void test_known_field_decoders(void)
{
	unsigned char tcm[0x500] = { 0 };
	unsigned char report[8] = { 0xa5 };
	unsigned int output[256] = { 0 };
	unsigned char scalar_format[] = { 5, 8, 0 };
	unsigned char first_format[] = { 6, 8, 0 };
	unsigned char invalid_format[] = { 5, 33, 0 };

	reset_tcm(tcm);
	set_format(tcm, scalar_format, sizeof(scalar_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 8,
			"scalar format returns consumed bit offset");
	expect_true(output[135] == 0xa5,
			"scalar format stores touch report field");

	reset_tcm(tcm);
	set_format(tcm, first_format, sizeof(first_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == 8 &&
				output[0] == 0xa5,
				"first-field format stores decoded value");

	reset_tcm(tcm);
	set_format(tcm, invalid_format, sizeof(invalid_format));
	expect_true(invoke(tcm, report, sizeof(report), output) == -241,
			"invalid field width is rejected");
}

int main(void)
{
	test_invalid_handles();
	test_disabled_parser();
	test_format_termination();
	test_known_field_decoders();
	puts("PASS: syna_tcm_parse_touch_report host contract");
	return 0;
}
