/* SPDX-License-Identifier: GPL-2.0-only */
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;

enum event_kind {
	EVENT_SCNPRINTF,
	EVENT_GPIO_REQUEST,
	EVENT_GPIO_TO_DESC,
	EVENT_DIRECTION_INPUT,
	EVENT_DIRECTION_OUTPUT,
	EVENT_PRINTK,
};

struct event {
	enum event_kind kind;
	long first;
	long second;
};

static struct event events[8];
static size_t event_count;
static char captured_log[256];
static int scnprintf_result;
static int gpio_request_result;
static int direction_result;
static unsigned int observed_gpio;
static const char *observed_label;
static __int64 observed_descriptor;
static unsigned int observed_state;
static unsigned int failures;

#define TEST_DESCRIPTOR ((__int64)0x1122334455667788ULL)

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, \
			#condition); \
		failures++; \
	} \
} while (0)

static void record_event(enum event_kind kind, long first, long second)
{
	CHECK(event_count < sizeof(events) / sizeof(events[0]));
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = (struct event){ kind, first, second };
}

static int host_scnprintf(char *buffer, size_t size, const char *format, ...)
{
	va_list args;
	int written;

	record_event(EVENT_SCNPRINTF, (long)size, 0);
	if (scnprintf_result < 0)
		return scnprintf_result;

	va_start(args, format);
	written = vsnprintf(buffer, size, format, args);
	va_end(args);
	return written;
}

static int host_gpio_request(unsigned int gpio, const char *label)
{
	observed_gpio = gpio;
	observed_label = label;
	record_event(EVENT_GPIO_REQUEST, gpio, 0);
	return gpio_request_result;
}

static __int64 host_gpio_to_desc(unsigned int gpio)
{
	observed_gpio = gpio;
	record_event(EVENT_GPIO_TO_DESC, gpio, 0);
	return TEST_DESCRIPTOR;
}

static int host_gpiod_direction_input(__int64 descriptor)
{
	observed_descriptor = descriptor;
	record_event(EVENT_DIRECTION_INPUT, (long)descriptor, 0);
	return direction_result;
}

static int host_gpiod_direction_output_raw(__int64 descriptor,
					   unsigned int state)
{
	observed_descriptor = descriptor;
	observed_state = state;
	record_event(EVENT_DIRECTION_OUTPUT, (long)descriptor, state);
	return direction_result;
}

static int host_printk(const char *format, ...)
{
	va_list args;
	int written;

	record_event(EVENT_PRINTK, 0, 0);
	va_start(args, format);
	written = vsnprintf(captured_log, sizeof(captured_log), format, args);
	va_end(args);
	return written;
}

#define scnprintf host_scnprintf
#define gpio_request host_gpio_request
#define gpio_to_desc host_gpio_to_desc
#define gpiod_direction_input host_gpiod_direction_input
#define gpiod_direction_output_raw host_gpiod_direction_output_raw
#define printk host_printk

#include "../../../reconstructed/zte_tpd/syna_spi_get_gpio.c"

static void reset_state(int format_result, int request_result,
			int gpio_direction_result)
{
	memset(events, 0, sizeof(events));
	memset(captured_log, 0, sizeof(captured_log));
	event_count = 0;
	scnprintf_result = format_result;
	gpio_request_result = request_result;
	direction_result = gpio_direction_result;
	observed_gpio = 0;
	observed_label = NULL;
	observed_descriptor = 0;
	observed_state = 0xffffffffU;
}

static void check_event(size_t index, enum event_kind kind,
			long first, long second)
{
	CHECK(index < event_count);
	if (index < event_count) {
		CHECK(events[index].kind == kind);
		CHECK(events[index].first == first);
		CHECK(events[index].second == second);
	}
}

static void test_label_format_failure(void)
{
	char label[16] = "unchanged";

	reset_state(-7, 0, 0);
	CHECK(syna_spi_get_gpio(23, 1, 1, label) == -7);
	CHECK(event_count == 2);
	check_event(0, EVENT_SCNPRINTF, 16, 0);
	check_event(1, EVENT_PRINTK, 0, 0);
	CHECK(strcmp(label, "unchanged") == 0);
	CHECK(strcmp(captured_log,
		     "\0013[error] syna_spi_get_gpio: "
		     "Fail to set GPIO label\n") == 0);
	CHECK(observed_label == NULL);
}

static void test_request_failure(void)
{
	char label[16] = { 0 };

	reset_state(0, -16, 0);
	CHECK(syna_spi_get_gpio(23, 1, 1, label) == -16);
	CHECK(event_count == 3);
	check_event(0, EVENT_SCNPRINTF, 16, 0);
	check_event(1, EVENT_GPIO_REQUEST, 23, 0);
	check_event(2, EVENT_PRINTK, 0, 0);
	CHECK(strcmp(label, "tcm_gpio_23\n") == 0);
	CHECK(observed_gpio == 23);
	CHECK(observed_label == label);
	CHECK(strcmp(captured_log,
		     "\0013[error] syna_spi_get_gpio: "
		     "Fail to request GPIO 23\n") == 0);
}

static void test_output_success(void)
{
	char label[16] = { 0 };

	reset_state(0, 0, 7);
	CHECK(syna_spi_get_gpio(31, 1, 3, label) == 0);
	CHECK(event_count == 4);
	check_event(0, EVENT_SCNPRINTF, 16, 0);
	check_event(1, EVENT_GPIO_REQUEST, 31, 0);
	check_event(2, EVENT_GPIO_TO_DESC, 31, 0);
	check_event(3, EVENT_DIRECTION_OUTPUT, (long)TEST_DESCRIPTOR, 3);
	CHECK(observed_descriptor == TEST_DESCRIPTOR);
	CHECK(observed_state == 3);
	CHECK(captured_log[0] == '\0');
}

static void test_output_failure(void)
{
	char label[16] = { 0 };

	reset_state(0, 0, -22);
	CHECK(syna_spi_get_gpio(31, 1, 0, label) == -22);
	CHECK(event_count == 5);
	check_event(0, EVENT_SCNPRINTF, 16, 0);
	check_event(1, EVENT_GPIO_REQUEST, 31, 0);
	check_event(2, EVENT_GPIO_TO_DESC, 31, 0);
	check_event(3, EVENT_DIRECTION_OUTPUT, (long)TEST_DESCRIPTOR, 0);
	check_event(4, EVENT_PRINTK, 0, 0);
	CHECK(strcmp(captured_log,
		     "\0013[error] syna_spi_get_gpio: "
		     "Fail to set GPIO 31 direction\n") == 0);
}

static void test_input_success(void)
{
	char label[16] = { 0 };

	reset_state(0, 0, 0);
	CHECK(syna_spi_get_gpio(47, 0, 9, label) == 0);
	CHECK(event_count == 4);
	check_event(0, EVENT_SCNPRINTF, 16, 0);
	check_event(1, EVENT_GPIO_REQUEST, 47, 0);
	check_event(2, EVENT_GPIO_TO_DESC, 47, 0);
	check_event(3, EVENT_DIRECTION_INPUT, (long)TEST_DESCRIPTOR, 0);
	CHECK(observed_state == 0xffffffffU);
	CHECK(captured_log[0] == '\0');
}

static void test_input_failure(void)
{
	char label[16] = { 0 };

	reset_state(0, 0, -19);
	CHECK(syna_spi_get_gpio(47, 0, 9, label) == -19);
	CHECK(event_count == 5);
	check_event(0, EVENT_SCNPRINTF, 16, 0);
	check_event(1, EVENT_GPIO_REQUEST, 47, 0);
	check_event(2, EVENT_GPIO_TO_DESC, 47, 0);
	check_event(3, EVENT_DIRECTION_INPUT, (long)TEST_DESCRIPTOR, 0);
	check_event(4, EVENT_PRINTK, 0, 0);
	CHECK(observed_state == 0xffffffffU);
	CHECK(strcmp(captured_log,
		     "\0013[error] syna_spi_get_gpio: "
		     "Fail to set GPIO 47 direction\n") == 0);
}

int main(void)
{
	test_label_format_failure();
	test_request_failure();
	test_output_success();
	test_output_failure();
	test_input_success();
	test_input_failure();

	if (failures)
		return 1;

	puts("PASS syna_spi_get_gpio host tests (6 cases)");
	return 0;
}
