/* SPDX-License-Identifier: GPL-2.0-only */
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

struct gpio_desc {
	int gpio;
};

struct syna_hw_interface {
	u8 reserved_0000[0xf0];
	int reset_gpio;
	int reset_on_state;
	u32 reset_delay_ms;
	u32 reset_active_ms;
	u8 reserved_0100[0x90];
};

_Static_assert(offsetof(struct syna_hw_interface, reset_gpio) == 0xf0,
	       "reset_gpio offset");
_Static_assert(offsetof(struct syna_hw_interface, reset_on_state) == 0xf4,
	       "reset_on_state offset");
_Static_assert(offsetof(struct syna_hw_interface, reset_active_ms) == 0xfc,
	       "reset_active_ms offset");
_Static_assert(sizeof(struct syna_hw_interface) == 0x190,
	       "syna_hw_interface size");

enum event_kind {
	EVENT_GPIO_TO_DESC,
	EVENT_SET_RAW_VALUE,
	EVENT_MSLEEP,
	EVENT_PRINTK,
};

struct event {
	enum event_kind kind;
	long value;
};

static struct gpio_desc descriptor;
static struct event events[8];
static size_t event_count;
static char captured_log[256];
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

static struct gpio_desc *host_gpio_to_desc(unsigned int gpio)
{
	descriptor.gpio = (int)gpio;
	record_event(EVENT_GPIO_TO_DESC, gpio);
	return &descriptor;
}

static void host_gpiod_set_raw_value(struct gpio_desc *desc, int value)
{
	CHECK(desc == &descriptor);
	record_event(EVENT_SET_RAW_VALUE, value);
}

static void host_msleep(unsigned int milliseconds)
{
	record_event(EVENT_MSLEEP, milliseconds);
}

static int host_printk(const char *format, ...)
{
	va_list args;
	int written;

	record_event(EVENT_PRINTK, 0);
	va_start(args, format);
	written = vsnprintf(captured_log, sizeof(captured_log), format, args);
	va_end(args);
	return written;
}

#define gpio_to_desc host_gpio_to_desc
#define gpiod_set_raw_value host_gpiod_set_raw_value
#define msleep host_msleep
#define printk host_printk

#include "../../../reconstructed/zte_tpd/syna_spi_hw_reset.c"

static void reset_state(void)
{
	memset(&descriptor, 0, sizeof(descriptor));
	memset(events, 0, sizeof(events));
	memset(captured_log, 0, sizeof(captured_log));
	event_count = 0;
}

static void check_event(size_t index, enum event_kind kind, long value)
{
	CHECK(index < event_count);
	if (index < event_count) {
		CHECK(events[index].kind == kind);
		CHECK(events[index].value == value);
	}
}

static void check_completed_log(void)
{
	CHECK(strcmp(captured_log,
		     "\0016[info ] syna_spi_hw_reset: Reset done\n") == 0);
}

static void test_missing_reset_gpio(void)
{
	struct syna_hw_interface hw_if = { 0 };

	reset_state();
	syna_spi_hw_reset(&hw_if);
	CHECK(event_count == 0);
	CHECK(captured_log[0] == '\0');
}

static void test_active_high_with_delay(void)
{
	struct syna_hw_interface hw_if = {
		.reset_gpio = 73,
		.reset_on_state = 1,
		.reset_active_ms = 12,
	};

	reset_state();
	syna_spi_hw_reset(&hw_if);
	CHECK(event_count == 7);
	check_event(0, EVENT_GPIO_TO_DESC, 73);
	check_event(1, EVENT_SET_RAW_VALUE, 1);
	check_event(2, EVENT_MSLEEP, 12);
	check_event(3, EVENT_GPIO_TO_DESC, 73);
	check_event(4, EVENT_SET_RAW_VALUE, 0);
	check_event(5, EVENT_MSLEEP, 80);
	check_event(6, EVENT_PRINTK, 0);
	check_completed_log();
}

static void test_active_low_without_initial_delay(void)
{
	struct syna_hw_interface hw_if = {
		.reset_gpio = 91,
		.reset_on_state = 0,
		.reset_active_ms = 0,
	};

	reset_state();
	syna_spi_hw_reset(&hw_if);
	CHECK(event_count == 6);
	check_event(0, EVENT_GPIO_TO_DESC, 91);
	check_event(1, EVENT_SET_RAW_VALUE, 0);
	check_event(2, EVENT_GPIO_TO_DESC, 91);
	check_event(3, EVENT_SET_RAW_VALUE, 1);
	check_event(4, EVENT_MSLEEP, 80);
	check_event(5, EVENT_PRINTK, 0);
	check_completed_log();
}

static void test_masked_state_and_signed_duration(void)
{
	struct syna_hw_interface hw_if = {
		.reset_gpio = 12,
		.reset_on_state = 3,
		.reset_active_ms = UINT32_MAX,
	};

	reset_state();
	syna_spi_hw_reset(&hw_if);
	CHECK(event_count == 6);
	check_event(0, EVENT_GPIO_TO_DESC, 12);
	check_event(1, EVENT_SET_RAW_VALUE, 1);
	check_event(2, EVENT_GPIO_TO_DESC, 12);
	check_event(3, EVENT_SET_RAW_VALUE, 0);
	check_event(4, EVENT_MSLEEP, 80);
	check_event(5, EVENT_PRINTK, 0);
	check_completed_log();
}

int main(void)
{
	test_missing_reset_gpio();
	test_active_high_with_delay();
	test_active_low_without_initial_delay();
	test_masked_state_and_signed_duration();

	if (failures)
		return 1;

	puts("PASS syna_spi_hw_reset host tests (4 cases)");
	return 0;
}
