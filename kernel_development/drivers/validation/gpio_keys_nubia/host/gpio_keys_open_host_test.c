#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define INPUT_DRV_DATA_OFFSET 0x2c8
#define INPUT_EVENT_INPUT_OFFSET 0x290
#define STATE_BUTTON_COUNT_OFFSET 0x8
#define STATE_ENABLE_OFFSET 0x18
#define DATA_BUTTONS_OFFSET 0x48
#define BUTTON_STRIDE 0x110
#define BUTTON_DATA_OFFSET 0x10

struct fake_input {
	unsigned char bytes[0x2d0];
};

struct fake_state {
	unsigned char bytes[0x20];
};

struct fake_driver_data {
	unsigned char bytes[DATA_BUTTONS_OFFSET + 3 * BUTTON_STRIDE];
};

static int enable_return;
static unsigned int enable_calls;
static void *last_enable_parent;
static unsigned int report_calls;
static void *last_report_button_data;
static unsigned int input_event_calls;
static void *last_input_event_input;
static unsigned int failures;

static void put_pointer(void *base, size_t offset, void *value)
{
	memcpy((unsigned char *)base + offset, &value, sizeof(value));
}

static void *get_pointer(const void *base, size_t offset)
{
	void *value;

	memcpy(&value, (const unsigned char *)base + offset, sizeof(value));
	return value;
}

static void put_int(void *base, size_t offset, int value)
{
	memcpy((unsigned char *)base + offset, &value, sizeof(value));
}

static int get_int(const void *base, size_t offset)
{
	int value;

	memcpy(&value, (const unsigned char *)base + offset, sizeof(value));
	return value;
}

static int enable_stub(void *parent)
{
	enable_calls++;
	last_enable_parent = parent;
	return enable_return;
}

static void gpio_keys_gpio_report_event(void *button_data)
{
	report_calls++;
	last_report_button_data = button_data;
}

static void input_event(void *input, unsigned int type, unsigned int code,
			unsigned int value)
{
	(void)type;
	(void)code;
	(void)value;
	input_event_calls++;
	last_input_event_input = input;
}

static int gpio_keys_open(struct fake_input *input)
{
	unsigned char *driver_data = get_pointer(input, INPUT_DRV_DATA_OFFSET);
	unsigned char *state = get_pointer(driver_data, 0);
	void *enable = get_pointer(state, STATE_ENABLE_OFFSET);
	int error;

	if (enable) {
		error = ((int (*)(void *))enable)(
			get_pointer(input, INPUT_EVENT_INPUT_OFFSET));
		if (error)
			return error;
		state = get_pointer(driver_data, 0);
	}

	if (get_int(state, STATE_BUTTON_COUNT_OFFSET) > 0) {
		int index = 0;
		unsigned char *button = driver_data + DATA_BUTTONS_OFFSET;

		do {
			if (get_pointer(button, BUTTON_DATA_OFFSET))
				gpio_keys_gpio_report_event(
					get_pointer(button, BUTTON_DATA_OFFSET));
			index++;
			button += BUTTON_STRIDE;
		} while (index < get_int(state, STATE_BUTTON_COUNT_OFFSET));
	}

	input_event(get_pointer(driver_data, sizeof(void *)), 0, 0, 0);
	return 0;
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void reset_observations(int ret)
{
	enable_return = ret;
	enable_calls = 0;
	last_enable_parent = NULL;
	report_calls = 0;
	last_report_button_data = NULL;
	input_event_calls = 0;
	last_input_event_input = NULL;
}

static void setup_input(struct fake_input *input,
			struct fake_driver_data *driver_data,
			struct fake_state *state,
			void *event_input)
{
	memset(input, 0, sizeof(*input));
	memset(driver_data, 0, sizeof(*driver_data));
	memset(state, 0, sizeof(*state));
	put_pointer(input, INPUT_DRV_DATA_OFFSET, driver_data);
	put_pointer(input, INPUT_EVENT_INPUT_OFFSET, event_input);
	put_pointer(driver_data, 0, state);
	put_pointer(driver_data, sizeof(void *), event_input);
}

static void test_no_enable_zero_buttons(void)
{
	struct fake_input input;
	struct fake_driver_data driver_data;
	struct fake_state state;
	void *event_input = &input;

	reset_observations(0);
	setup_input(&input, &driver_data, &state, event_input);
	put_int(&state, STATE_BUTTON_COUNT_OFFSET, 0);
	gpio_keys_open(&input);
	expect_true("no enable callback", enable_calls == 0);
	expect_true("no reports for zero buttons", report_calls == 0);
	expect_true("input event after zero buttons", input_event_calls == 1);
	expect_true("input event forwards pointer",
			last_input_event_input == event_input);
}

static void test_enable_success_reports_connected_buttons(void)
{
	struct fake_input input;
	struct fake_driver_data driver_data;
	struct fake_state state;
	unsigned char first_button[1];
	unsigned char second_button[1];
	void *event_input = &state;

	reset_observations(0);
	setup_input(&input, &driver_data, &state, event_input);
	put_pointer(&state, STATE_ENABLE_OFFSET, enable_stub);
	put_int(&state, STATE_BUTTON_COUNT_OFFSET, 2);
	put_pointer(driver_data.bytes + DATA_BUTTONS_OFFSET + BUTTON_STRIDE,
			BUTTON_DATA_OFFSET, second_button);
	gpio_keys_open(&input);
	expect_true("enable success called once", enable_calls == 1);
	expect_true("enable receives input parent",
			last_enable_parent == event_input);
	expect_true("only connected button reported", report_calls == 1);
	expect_true("connected button identity",
			last_report_button_data == second_button);
	expect_true("input event after reports", input_event_calls == 1);
	(void)first_button;
}

static void test_enable_failure_returns_without_side_effects(void)
{
	struct fake_input input;
	struct fake_driver_data driver_data;
	struct fake_state state;
	unsigned char button_data[1];

	reset_observations(-EIO);
	setup_input(&input, &driver_data, &state, &input);
	put_pointer(&state, STATE_ENABLE_OFFSET, enable_stub);
	put_int(&state, STATE_BUTTON_COUNT_OFFSET, 1);
	put_pointer(driver_data.bytes + DATA_BUTTONS_OFFSET, BUTTON_DATA_OFFSET,
			button_data);
	expect_true("enable failure returned", gpio_keys_open(&input) == -EIO);
	expect_true("enable failure called once", enable_calls == 1);
	expect_true("no report after enable failure", report_calls == 0);
	expect_true("no input event after enable failure", input_event_calls == 0);
}

int main(void)
{
	test_no_enable_zero_buttons();
	test_enable_success_reports_connected_buttons();
	test_enable_failure_returns_without_side_effects();
	if (failures)
		return 1;
	puts("PASS gpio_keys_open host tests (3 scenarios)");
	return 0;
}
