/* SPDX-License-Identifier: GPL-2.0-only */
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;

struct platform_device {
	unsigned long sentinel;
};

struct spi_driver {
	unsigned long sentinel;
};

struct module {
	unsigned long sentinel;
};

static struct platform_device syna_spi_device = {
	.sentinel = 0x53504944UL,
};
static struct spi_driver syna_spi_driver = {
	.sentinel = 0x44524956UL,
};
static struct module host_module = {
	.sentinel = 0x4d4f4455UL,
};

static __int64 p_device;
static int buf_size;
static void *rx_buf;
static void *tx_buf;

enum event_kind {
	EVENT_PRINTK,
	EVENT_PLATFORM_REGISTER,
	EVENT_SPI_REGISTER,
};

struct event {
	enum event_kind kind;
	long value;
};

static struct event events[8];
static size_t event_count;
static char captured_log[512];
static size_t captured_log_length;
static int platform_result;
static int spi_result;
static struct module *observed_module;
static struct spi_driver *observed_spi_driver;
static unsigned int failures;

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, \
			#condition); \
		failures++; \
	} \
} while (0)

static void record_event(enum event_kind kind, long value)
{
	CHECK(event_count < sizeof(events) / sizeof(events[0]));
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = (struct event){ kind, value };
}

static int host_printk(const char *format, ...)
{
	va_list args;
	int written;

	record_event(EVENT_PRINTK, 0);
	va_start(args, format);
	written = vsnprintf(captured_log + captured_log_length,
			    sizeof(captured_log) - captured_log_length,
			    format, args);
	va_end(args);
	if (written > 0) {
		size_t available = sizeof(captured_log) - captured_log_length;

		captured_log_length += (size_t)written < available ?
			(size_t)written : available - 1;
	}
	return written;
}

static int host_platform_device_register(struct platform_device *device)
{
	CHECK(device == &syna_spi_device);
	record_event(EVENT_PLATFORM_REGISTER, platform_result);
	return platform_result;
}

static int host_spi_register_driver(struct module *module,
				    struct spi_driver *driver)
{
	observed_module = module;
	observed_spi_driver = driver;
	record_event(EVENT_SPI_REGISTER, spi_result);
	return spi_result;
}

#define printk host_printk
#define platform_device_register host_platform_device_register
#define _spi_register_driver host_spi_register_driver
#define THIS_MODULE (&host_module)

#include "../../../reconstructed/zte_tpd/syna_hw_interface_init.c"

static void reset_state(int platform_return, int spi_return)
{
	memset(events, 0, sizeof(events));
	memset(captured_log, 0, sizeof(captured_log));
	event_count = 0;
	captured_log_length = 0;
	platform_result = platform_return;
	spi_result = spi_return;
	observed_module = NULL;
	observed_spi_driver = NULL;
	p_device = (__int64)0x1111222233334444ULL;
	buf_size = 0x55667788;
	rx_buf = (void *)(uintptr_t)0x11110000UL;
	tx_buf = (void *)(uintptr_t)0x22220000UL;
}

static void check_event(size_t index, enum event_kind kind, long value)
{
	CHECK(index < event_count);
	if (index < event_count) {
		CHECK(events[index].kind == kind);
		CHECK(events[index].value == value);
	}
}

static void check_buffers_unchanged(void)
{
	CHECK(buf_size == 0x55667788);
	CHECK(rx_buf == (void *)(uintptr_t)0x11110000UL);
	CHECK(tx_buf == (void *)(uintptr_t)0x22220000UL);
}

static void test_platform_registration_failure(void)
{
	reset_state(-517, 0);

	CHECK(syna_hw_interface_init() == -517);
	CHECK(event_count == 3);
	check_event(0, EVENT_PRINTK, 0);
	check_event(1, EVENT_PLATFORM_REGISTER, -517);
	check_event(2, EVENT_PRINTK, 0);
	CHECK(strcmp(captured_log,
		     "\0016[info ] syna_hw_interface_init: hw interface in"
		     "\0013[error] syna_hw_interface_init: "
		     "Fail to register platform device\n") == 0);
	CHECK(p_device == (__int64)0x1111222233334444ULL);
	CHECK(observed_module == NULL);
	CHECK(observed_spi_driver == NULL);
	check_buffers_unchanged();
}

static void test_spi_registration_failure(void)
{
	reset_state(0, -22);

	CHECK(syna_hw_interface_init() == -22);
	CHECK(event_count == 4);
	check_event(0, EVENT_PRINTK, 0);
	check_event(1, EVENT_PLATFORM_REGISTER, 0);
	check_event(2, EVENT_SPI_REGISTER, -22);
	check_event(3, EVENT_PRINTK, 0);
	CHECK(strcmp(captured_log,
		     "\0016[info ] syna_hw_interface_init: hw interface in"
		     "\0013[error] syna_hw_interface_init: "
		     "Fail to add spi driver\n") == 0);
	CHECK(p_device == (__int64)&syna_spi_device);
	CHECK(observed_module == &host_module);
	CHECK(observed_spi_driver == &syna_spi_driver);
	check_buffers_unchanged();
}

static void check_success(int return_value)
{
	reset_state(0, return_value);

	CHECK(syna_hw_interface_init() == return_value);
	CHECK(event_count == 4);
	check_event(0, EVENT_PRINTK, 0);
	check_event(1, EVENT_PLATFORM_REGISTER, 0);
	check_event(2, EVENT_SPI_REGISTER, return_value);
	check_event(3, EVENT_PRINTK, 0);
	CHECK(strcmp(captured_log,
		     "\0016[info ] syna_hw_interface_init: hw interface in"
		     "\0016[info ] syna_hw_interface_init: hw interface end") == 0);
	CHECK(p_device == (__int64)&syna_spi_device);
	CHECK(observed_module == &host_module);
	CHECK(observed_spi_driver == &syna_spi_driver);
	CHECK(buf_size == 0);
	CHECK(rx_buf == NULL);
	CHECK(tx_buf == NULL);
}

int main(void)
{
	test_platform_registration_failure();
	test_spi_registration_failure();
	check_success(0);
	check_success(7);

	if (failures)
		return 1;

	puts("PASS syna_hw_interface_init host tests (4 cases)");
	return 0;
}
