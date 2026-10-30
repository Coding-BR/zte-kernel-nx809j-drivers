/* SPDX-License-Identifier: GPL-2.0-only */
#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

struct device {
	unsigned long sentinel;
};

static char captured_log[256];
static unsigned int printk_calls;
static unsigned int failures;

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, \
			#condition); \
		failures++; \
	} \
} while (0)

static int host_printk(const char *format, ...)
{
	va_list args;
	int written;

	printk_calls++;
	va_start(args, format);
	written = vsnprintf(captured_log, sizeof(captured_log), format, args);
	va_end(args);
	return written;
}

#define printk host_printk

#include "../../../reconstructed/zte_tpd/syna_spi_release.c"

static void reset_state(void)
{
	memset(captured_log, 0, sizeof(captured_log));
	printk_calls = 0;
}

static void assert_stock_log(void)
{
	CHECK(printk_calls == 1);
	CHECK(strcmp(captured_log,
		     "\0016[info ] syna_spi_release: SPI device removed\n") == 0);
}

static void test_valid_device(void)
{
	struct device dev = { .sentinel = 0x11223344UL };

	reset_state();
	syna_spi_release(&dev);
	assert_stock_log();
	CHECK(dev.sentinel == 0x11223344UL);
}

static void test_null_device(void)
{
	reset_state();
	syna_spi_release(NULL);
	assert_stock_log();
}

int main(void)
{
	test_valid_device();
	test_null_device();

	if (failures)
		return 1;

	puts("PASS syna_spi_release host tests (2 cases)");
	return 0;
}
