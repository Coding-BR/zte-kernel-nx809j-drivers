#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;

#define EINVAL 22

struct tcm_dev {
	unsigned int marker;
};

struct syna_tcm {
	struct tcm_dev *tcm_dev;
};

enum printk_event {
	PRINTK_ENTER,
	PRINTK_ERROR,
};

static const char *observed_formats[2];
static const char *observed_names[2];
static unsigned int printk_count;
static struct tcm_dev *observed_tcm;
static u8 observed_config_id;
static u16 observed_value;
static unsigned int observed_delay_ms;
static unsigned int dynamic_config_count;
static int dynamic_config_result;
static unsigned int failures;

int printk(const char *format, ...)
{
	va_list args;
	const char *name;

	va_start(args, format);
	name = va_arg(args, const char *);
	va_end(args);

	if (printk_count < sizeof(observed_formats) / sizeof(observed_formats[0])) {
		observed_formats[printk_count] = format;
		observed_names[printk_count] = name;
	} else {
		failures++;
	}
	printk_count++;
	return 0;
}

int syna_tcm_set_dynamic_config(struct tcm_dev *tcm, u8 config_id,
				u16 value, unsigned int delay_ms)
{
	observed_tcm = tcm;
	observed_config_id = config_id;
	observed_value = value;
	observed_delay_ms = delay_ms;
	dynamic_config_count++;
	return dynamic_config_result;
}

#include "../../../reconstructed/zte_tpd/syna_dev_set_screen_on_fp_mode.c"

static void expect_unsigned(const char *name, unsigned long actual,
				    unsigned long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lu expected %lu\n", name, actual, expected);
		failures++;
	}
}

static void expect_pointer(const char *name, const void *actual,
			   const void *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name, actual, expected);
		failures++;
	}
}

static void expect_string(const char *name, const char *actual,
			  const char *expected)
{
	if (!actual || strcmp(actual, expected) != 0) {
		fprintf(stderr, "%s mismatch\n", name);
		failures++;
	}
}

static void reset_fixture(int result)
{
	memset(observed_formats, 0, sizeof(observed_formats));
	memset(observed_names, 0, sizeof(observed_names));
	printk_count = 0;
	observed_tcm = NULL;
	observed_config_id = 0;
	observed_value = 0;
	observed_delay_ms = 0;
	dynamic_config_count = 0;
	dynamic_config_result = result;
}

static void expect_enter_log(void)
{
	expect_string("enter log format", observed_formats[0],
		      "\0016[info ] %s: enter");
	expect_string("enter log name", observed_names[0],
		      "syna_dev_set_screen_on_fp_mode");
}

static void test_null_tcm(void)
{
	reset_fixture(0);
	expect_unsigned("null return", (unsigned int)syna_dev_set_screen_on_fp_mode(NULL, 7),
			(unsigned int)-22);
	expect_unsigned("null dynamic config calls", dynamic_config_count, 0);
	expect_unsigned("null printk calls", printk_count, 1);
	expect_enter_log();
}

static void test_positive_return_is_normalized(void)
{
	struct tcm_dev tcm_dev = { .marker = 0x1234 };
	struct syna_tcm tcm = { .tcm_dev = &tcm_dev };

	reset_fixture(19);
	expect_unsigned("success return", syna_dev_set_screen_on_fp_mode(&tcm, 0x12345678), 0);
	expect_unsigned("success dynamic config calls", dynamic_config_count, 1);
	expect_pointer("success tcm", observed_tcm, &tcm_dev);
	expect_unsigned("success config id", observed_config_id, 0xd4);
	expect_unsigned("success config value", observed_value, 3);
	expect_unsigned("success delay", observed_delay_ms, 0x12345678);
	expect_unsigned("success printk calls", printk_count, 1);
	expect_enter_log();
}

static void test_negative_return_is_preserved(void)
{
	struct tcm_dev tcm_dev = { .marker = 0x4321 };
	struct syna_tcm tcm = { .tcm_dev = &tcm_dev };

	reset_fixture(-5);
	expect_unsigned("failure return", (unsigned int)syna_dev_set_screen_on_fp_mode(&tcm, 9),
			(unsigned int)-5);
	expect_unsigned("failure dynamic config calls", dynamic_config_count, 1);
	expect_unsigned("failure printk calls", printk_count, 2);
	expect_enter_log();
	expect_string("failure log format", observed_formats[1],
		      "\0013[error] %s: Fail to set fingerprint gesture mode\n");
	expect_string("failure log name", observed_names[1],
		      "syna_dev_set_screen_on_fp_mode");
}

int main(void)
{
	test_null_tcm();
	test_positive_return_is_normalized();
	test_negative_return_is_preserved();

	if (failures)
		return 1;
	puts("PASS syna_dev_set_screen_on_fp_mode host tests (3 cases)");
	return 0;
}
