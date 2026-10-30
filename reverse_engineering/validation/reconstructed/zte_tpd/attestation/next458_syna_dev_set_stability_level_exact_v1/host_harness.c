#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef uint32_t _DWORD;
struct tcm_dev { unsigned int marker; };
struct syna_tcm {
	struct tcm_dev *tcm_dev;
	unsigned char reserved[0x5f4];
	uint32_t stability_base;
	unsigned int stability_high;
};
typedef struct tcm_dev *_QWORD;

static char unk_3A85B[] = "entry";
static char unk_3BDBF[] = "invalid";
static char unk_3B0D9[] = "level0";
static char unk_36F87[] = "level1";
static char unk_3A1F3[] = "level2";
static char unk_3984B[] = "level3";
static char unk_35465[] = "level4";
static struct tcm_dev expected_tcm;
static unsigned int config_calls, last_config_id, last_config_value, last_delay_ms;
static int config_return;
static unsigned int printk_calls, invalid_printk_calls, success_printk_calls;
static const char *last_success_format, *last_success_name;
static unsigned int last_success_arg_count, failures;

static int syna_tcm_set_dynamic_config(struct tcm_dev *tcm, u8 config_id,
					       u16 value, unsigned int delay_ms)
{
	if (tcm != &expected_tcm || config_id != 249)
		failures++;
	config_calls++;
	last_config_id = config_id;
	last_config_value = value;
	last_delay_ms = delay_ms;
	return config_return;
}

static int printk(const char *format, ...)
{
	va_list args;
	const char *name;
	printk_calls++;
	va_start(args, format);
	name = va_arg(args, const char *);
	if (format == unk_3A85B || format == unk_3BDBF) {
		if (strcmp(name, "syna_dev_set_stability_level") != 0 ||
		    va_arg(args, const char *) != name)
			failures++;
		if (format == unk_3BDBF)
			invalid_printk_calls++;
	} else {
		last_success_format = format;
		last_success_name = name;
		last_success_arg_count = 2;
		success_printk_calls++;
		if (strcmp(name, "syna_dev_set_stability_level") != 0 ||
		    va_arg(args, const char *) != name)
			failures++;
	}
	va_end(args);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_dev_set_stability_level.c"

static void reset_trace(void)
{
	config_calls = last_config_id = last_config_value = last_delay_ms = 0;
	config_return = 0;
	printk_calls = invalid_printk_calls = success_printk_calls = 0;
	last_success_format = last_success_name = NULL;
	last_success_arg_count = 0;
}
static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}
static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}
static void test_null(void)
{
	reset_trace();
	expect_int("null return", syna_dev_set_stability_level(NULL, 0, 37), -22);
	expect_int("null config", config_calls, 0);
	expect_int("null printk", printk_calls, 1);
}
static void test_valid(void)
{
	static const unsigned int values[] = {0x0000, 0x0100, 0x0200, 0x0300, 0x0400};
	static char *const formats[] = {unk_3B0D9, unk_36F87, unk_3A1F3, unk_3984B, unk_35465};
	struct syna_tcm tcm = {.tcm_dev = &expected_tcm};
	tcm.stability_base = 0;
	tcm.stability_high = 0;
	for (int level = 0; level <= 4; ++level) {
		reset_trace();
		expect_int("valid return", syna_dev_set_stability_level(&tcm, level, 37), 0);
		expect_int("valid calls", config_calls, 1);
		expect_int("valid id", last_config_id, 249);
		expect_int("valid value", last_config_value, values[level]);
		expect_int("valid delay", last_delay_ms, 37);
		expect_int("valid printk", printk_calls, 2);
		expect_int("valid success", success_printk_calls, 1);
		expect_true("valid format", last_success_format == formats[level]);
		expect_true("valid name", last_success_name && strcmp(last_success_name, "syna_dev_set_stability_level") == 0);
		expect_int("valid final args", last_success_arg_count, 2);
	}
}
static void test_offsets(void)
{
	struct syna_tcm tcm = {.tcm_dev = &expected_tcm};
	tcm.stability_base = 0x12;
	tcm.stability_high = 0x34;
	reset_trace();
	expect_int("offset return", syna_dev_set_stability_level(&tcm, 4, 91), 0);
	expect_int("offset value", last_config_value, 0x752);
	expect_int("offset delay", last_delay_ms, 91);
}
static void test_invalid(void)
{
	struct syna_tcm tcm = {.tcm_dev = &expected_tcm};
	for (int level = -1; level <= 5; level += 6) {
		reset_trace();
		expect_int("invalid return", syna_dev_set_stability_level(&tcm, level, 37), 0);
		expect_int("invalid config", config_calls, 0);
		expect_int("invalid printk", printk_calls, 2);
		expect_int("invalid marker", invalid_printk_calls, 1);
	}
}
static void test_error(void)
{
	struct syna_tcm tcm = {.tcm_dev = &expected_tcm};
	reset_trace();
	config_return = (int)0x80000005U;
	expect_int("error return", syna_dev_set_stability_level(&tcm, 2, 99), (int)0x80000005U);
	expect_int("error calls", config_calls, 1);
	expect_int("error success", success_printk_calls, 0);
}
int main(void)
{
	test_null(); test_valid(); test_offsets(); test_invalid(); test_error();
	if (failures) return 1;
	puts("PASS syna_dev_set_stability_level host tests (11 cases)");
	return 0;
}
