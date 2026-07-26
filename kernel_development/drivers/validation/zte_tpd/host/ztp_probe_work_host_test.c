#include <stddef.h>
#include <stdio.h>
#include <string.h>

struct work_struct {
	unsigned long marker;
};

static const char stock_log[] = "\0015tpd: ztp_probe_work in";
static unsigned int printk_calls;
static unsigned int module_init_calls;
static unsigned int call_order[2];
static int module_init_result;

static int printk(const char *format)
{
	if (strcmp(format, stock_log) != 0)
		return -1;
	if (printk_calls >= 2)
		return -1;
	call_order[printk_calls] = 1;
	printk_calls++;
	return 0;
}

static int syna_dev_module_init(void)
{
	if (module_init_calls >= 2)
		return -1;
	call_order[module_init_calls + 1] = 2;
	module_init_calls++;
	return module_init_result;
}

#include "../../../reconstructed/zte_tpd/ztp_probe_work.c"

static int failures;

static void expect_unsigned(const char *name, unsigned int actual,
			    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		failures++;
	}
}

static void reset_fixture(int init_result)
{
	printk_calls = 0;
	module_init_calls = 0;
	call_order[0] = 0;
	call_order[1] = 0;
	module_init_result = init_result;
}

static void test_order_and_single_dispatch(void)
{
	struct work_struct work = { .marker = 0x1234 };

	reset_fixture(0);
	ztp_probe_work(&work);
	expect_unsigned("success printk calls", printk_calls, 1);
	expect_unsigned("success init calls", module_init_calls, 1);
	expect_unsigned("success first call", call_order[0], 1);
	expect_unsigned("success second call", call_order[1], 2);
}

static void test_init_return_is_ignored(void)
{
	struct work_struct work = { .marker = 0xfeed };

	reset_fixture(-19);
	ztp_probe_work(&work);
	expect_unsigned("failure printk calls", printk_calls, 1);
	expect_unsigned("failure init calls", module_init_calls, 1);
	expect_unsigned("failure first call", call_order[0], 1);
	expect_unsigned("failure second call", call_order[1], 2);
}

int main(void)
{
	test_order_and_single_dispatch();
	test_init_return_is_ignored();
	if (failures != 0)
		return 1;
	puts("PASS ztp_probe_work host tests (2 cases)");
	return 0;
}
