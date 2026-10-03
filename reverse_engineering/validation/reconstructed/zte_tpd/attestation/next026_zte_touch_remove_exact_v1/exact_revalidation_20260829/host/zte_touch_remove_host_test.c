#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct platform_device {
	uint64_t marker;
};

static const char *observed_format;
static const char *observed_name;
static int observed_line;
static unsigned int printk_calls;
static unsigned int deinit_calls;
static int failures;

int printk(const char *format, ...)
{
	va_list args;

	printk_calls++;
	observed_format = format;
	va_start(args, format);
	observed_name = va_arg(args, const char *);
	observed_line = va_arg(args, int);
	va_end(args);
	return 0;
}

void zte_touch_deinit(void)
{
	deinit_calls++;
}

#include "../../../reconstructed/zte_tpd/zte_touch_remove.c"

static void expect_unsigned(const char *name, unsigned int actual,
				    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		failures++;
	}
}

static void expect_int(const char *name, int actual, int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		failures++;
	}
}

static void expect_string(const char *name, const char *actual,
				  const char *expected)
{
	if (!actual || strcmp(actual, expected) != 0) {
		fprintf(stderr, "%s: got %s expected %s\n", name,
			actual ? actual : "(null)", expected);
		failures++;
	}
}

static void reset_fixture(void)
{
	observed_format = NULL;
	observed_name = NULL;
	observed_line = 0;
	printk_calls = 0;
	deinit_calls = 0;
}

static void test_remove(struct platform_device *pdev)
{
	reset_fixture();
	zte_touch_remove(pdev);
	expect_unsigned("printk calls", printk_calls, 1);
	expect_string("printk format", observed_format,
		      "\0015tpd: end %s, %d\n");
	expect_string("printk function", observed_name, "zte_touch_remove");
	expect_int("printk line", observed_line, 2903);
	expect_unsigned("zte_touch_deinit calls", deinit_calls, 1);
}

int main(void)
{
	struct platform_device first = { .marker = UINT64_C(0x1122334455667788) };
	struct platform_device second = { .marker = UINT64_C(0x8877665544332211) };

	test_remove(NULL);
	test_remove(&first);
	test_remove(&second);
	if (failures != 0)
		return 1;
	puts("PASS zte_touch_remove host tests (3 cases)");
	return 0;
}
