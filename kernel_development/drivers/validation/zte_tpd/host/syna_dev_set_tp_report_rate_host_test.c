#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned char u8;
struct tcm_dev { unsigned int marker; };
struct syna_tcm { struct tcm_dev *tcm_dev; };
typedef struct tcm_dev *_QWORD;

static char unk_3A85B[] = "entry";
static char unk_3BDBF[] = "invalid";
static char unk_35446[] = "rate0";
static char unk_397FC[] = "rate1";
static char unk_36F56[] = "rate2";
static char unk_33B9F[] = "rate3";
static char unk_38139[] = "rate4";

static struct tcm_dev expected_tcm;
static unsigned int config_calls;
static unsigned int last_config_id;
static unsigned int last_config_value;
static unsigned int last_delay_ms;
static int config_return;
static unsigned int printk_calls;
static unsigned int invalid_printk_calls;
static unsigned int success_printk_calls;
static const char *last_success_format;
static const char *last_success_name;
static unsigned int last_success_arg_count;
static unsigned int failures;

static int syna_tcm_set_dynamic_config(struct tcm_dev *tcm, u8 config_id,
					       unsigned short value,
					       unsigned int delay_ms)
{
	if (tcm != &expected_tcm || config_id != 230)
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
	if (format == unk_3A85B) {
		if (strcmp(name, "syna_dev_set_tp_report_rate") != 0)
			failures++;
		(void)va_arg(args, const char *);
	} else if (format == unk_3BDBF) {
		if (strcmp(name, "syna_dev_set_tp_report_rate") != 0)
			failures++;
		if (va_arg(args, const char *) != name)
			failures++;
		invalid_printk_calls++;
	} else {
		last_success_format = format;
		last_success_name = name;
		last_success_arg_count = 1;
		success_printk_calls++;
	}
	va_end(args);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_dev_set_tp_report_rate.c"

static void reset_trace(void)
{
	config_calls = 0;
	last_config_id = 0;
	last_config_value = 0;
	last_delay_ms = 0;
	config_return = 0;
	printk_calls = 0;
	invalid_printk_calls = 0;
	success_printk_calls = 0;
	last_success_format = NULL;
	last_success_name = NULL;
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

static void test_null_device(void)
{
	reset_trace();
	expect_int("null return", syna_dev_set_tp_report_rate(NULL, 0, 37), -22);
	expect_int("null config calls", config_calls, 0);
	expect_int("null printk calls", printk_calls, 1);
}

static void test_valid_rates(void)
{
	static const unsigned int config_values[] = {0, 5, 4, 3, 1};
	static char *const success_formats[] = {
		unk_35446, unk_397FC, unk_36F56, unk_33B9F, unk_38139,
	};
	struct syna_tcm tcm = { .tcm_dev = &expected_tcm };

	for (int rate = 0; rate <= 4; ++rate) {
		reset_trace();
		expect_int("valid return", syna_dev_set_tp_report_rate(&tcm, rate, 37), 0);
		expect_int("valid config calls", config_calls, 1);
		expect_int("valid config id", last_config_id, 230);
		expect_int("valid config value", last_config_value, config_values[rate]);
		expect_int("valid delay", last_delay_ms, 37);
		expect_int("valid printk count", printk_calls, 2);
		expect_int("valid success printk", success_printk_calls, 1);
		expect_true("valid format", last_success_format == success_formats[rate]);
		expect_true("valid name", last_success_name &&
			    strcmp(last_success_name, "syna_dev_set_tp_report_rate") == 0);
		expect_int("valid final arg count", last_success_arg_count, 1);
	}
}

static void test_invalid_rates(void)
{
	struct syna_tcm tcm = { .tcm_dev = &expected_tcm };

	for (int rate = -1; rate <= 5; rate += 6) {
		reset_trace();
		expect_int("invalid return", syna_dev_set_tp_report_rate(&tcm, rate, 37), 0);
		expect_int("invalid config calls", config_calls, 0);
		expect_int("invalid printk count", printk_calls, 2);
		expect_int("invalid printk", invalid_printk_calls, 1);
	}
}

static void test_config_error_propagation(void)
{
	struct syna_tcm tcm = { .tcm_dev = &expected_tcm };
	reset_trace();
	config_return = (int)0x80000005U;
	expect_int("error return", syna_dev_set_tp_report_rate(&tcm, 2, 99),
		   (int)0x80000005U);
	expect_int("error config calls", config_calls, 1);
	expect_int("error success printk", success_printk_calls, 0);
}

int main(void)
{
	test_null_device();
	test_valid_rates();
	test_invalid_rates();
	test_config_error_propagation();
	if (failures != 0)
		return 1;
	puts("PASS syna_dev_set_tp_report_rate host tests (9 cases)");
	return 0;
}
