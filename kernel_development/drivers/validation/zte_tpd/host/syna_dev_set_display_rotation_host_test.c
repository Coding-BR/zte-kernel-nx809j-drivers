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
	unsigned char reserved[0x604];
	uint32_t display_rotation_state;
};
typedef struct tcm_dev *_QWORD;

static char unk_38188[] = "entry";
static char unk_387F8[] = "mode";
static char unk_3A221[] = "state";
static char unk_31E36[] = "rotation";
static struct tcm_dev expected_tcm;
static unsigned int config_calls, printk_calls, failures;
static unsigned int config_ids[3], config_values[3], config_delays[3];
static unsigned int printk_values[4];
static int config_return[3];
static unsigned int config_index, printk_index;

static int syna_tcm_set_dynamic_config(struct tcm_dev *tcm, u8 config_id,
					       u16 value, unsigned int delay_ms)
{
	if (tcm != &expected_tcm || config_index >= 3)
		failures++;
	config_ids[config_index] = config_id;
	config_values[config_index] = value;
	config_delays[config_index] = delay_ms;
	config_calls++;
	return config_return[config_index++];
}

static int printk(const char *format, ...)
{
	va_list args;
	const char *name;
	unsigned int value;

	if (printk_index >= 4)
		failures++;
	va_start(args, format);
	name = va_arg(args, const char *);
	value = va_arg(args, unsigned int);
	if (strcmp(name, "syna_dev_set_display_rotation") != 0)
		failures++;
	if (format != unk_38188 && format != unk_387F8 &&
	    format != unk_3A221 && format != unk_31E36)
		failures++;
	printk_values[printk_index++] = value;
	printk_calls++;
	va_end(args);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_dev_set_display_rotation.c"

static void reset_trace(void)
{
	config_calls = printk_calls = config_index = printk_index = 0;
	memset(config_ids, 0, sizeof(config_ids));
	memset(config_values, 0, sizeof(config_values));
	memset(config_delays, 0, sizeof(config_delays));
	memset(printk_values, 0, sizeof(printk_values));
	config_return[0] = config_return[1] = config_return[2] = 0;
}
static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}
static void test_rotation(unsigned int state, unsigned int rotation)
{
	struct syna_tcm tcm = {.tcm_dev = &expected_tcm};
	tcm.display_rotation_state = state;
	reset_trace();
	expect_int("success return", syna_dev_set_display_rotation(&tcm, (int)rotation, 47), 0);
	expect_int("success configs", config_calls, 3);
	expect_int("config id 0", config_ids[0], 182);
	expect_int("config id 1", config_ids[1], 181);
	expect_int("config id 2", config_ids[2], 180);
	expect_int("mode value", config_values[0], state ? 3 : 0);
	expect_int("state value", config_values[1], state);
	expect_int("rotation value", config_values[2], rotation & 0xffff);
	expect_int("delay 0", config_delays[0], 47);
	expect_int("delay 1", config_delays[1], 47);
	expect_int("delay 2", config_delays[2], 47);
	expect_int("success printks", printk_calls, 4);
	expect_int("entry value", printk_values[0], rotation);
	expect_int("mode printk", printk_values[1], state ? 3 : 0);
	expect_int("state printk", printk_values[2], state);
	expect_int("rotation printk", printk_values[3], rotation);
}
static void test_config_failure(unsigned int failure_index)
{
	struct syna_tcm tcm = {.tcm_dev = &expected_tcm};
	tcm.display_rotation_state = 9;
	reset_trace();
	config_return[failure_index] = (int)0x80000000U | (int)(failure_index + 5);
	expect_int("failure return", syna_dev_set_display_rotation(&tcm, 2, 13),
		   config_return[failure_index]);
	expect_int("failure config count", config_calls, failure_index + 1);
	expect_int("failure printk count", printk_calls, failure_index + 1);
}
int main(void)
{
	test_rotation(0, 0);
	test_rotation(1, 1);
	test_rotation(7, 3);
	test_rotation(0x1234, 0xffffffffU);
	test_config_failure(0);
	test_config_failure(1);
	test_config_failure(2);
	if (failures) return 1;
	puts("PASS syna_dev_set_display_rotation host tests (7 scenarios)");
	return 0;
}
