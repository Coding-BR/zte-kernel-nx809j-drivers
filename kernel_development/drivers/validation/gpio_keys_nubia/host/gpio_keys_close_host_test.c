#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#define INPUT_DRV_DATA_OFFSET 0x2c8
#define INPUT_EVENT_INPUT_OFFSET 0x290
#define STATE_DISABLE_OFFSET 0x20

struct fake_input { unsigned char bytes[0x2d0]; };
struct fake_driver_data { unsigned char bytes[0x10]; };
struct fake_state { unsigned char bytes[0x28]; };

static unsigned int disable_calls;
static void *last_disable_parent;
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

static void disable_stub(void *parent)
{
	disable_calls++;
	last_disable_parent = parent;
}

static void gpio_keys_close(struct fake_input *input)
{
	unsigned char *driver_data = get_pointer(input, INPUT_DRV_DATA_OFFSET);
	unsigned char *state = get_pointer(driver_data, 0);
	void *disable = get_pointer(state, STATE_DISABLE_OFFSET);

	if (disable)
		((void (*)(void *))disable)(
			get_pointer(input, INPUT_EVENT_INPUT_OFFSET));
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void setup_input(struct fake_input *input,
			struct fake_driver_data *driver_data,
			struct fake_state *state,
			void *event_input)
{
	memset(input, 0, sizeof(*input));
	memset(driver_data, 0, sizeof(*driver_data));
	memset(state, 0, sizeof(*state));
	disable_calls = 0;
	last_disable_parent = NULL;
	put_pointer(input, INPUT_DRV_DATA_OFFSET, driver_data);
	put_pointer(input, INPUT_EVENT_INPUT_OFFSET, event_input);
	put_pointer(driver_data, 0, state);
}

static void test_no_disable_callback(void)
{
	struct fake_input input;
	struct fake_driver_data driver_data;
	struct fake_state state;

	setup_input(&input, &driver_data, &state, &input);
	gpio_keys_close(&input);
	expect_true("no disable callback", disable_calls == 0);
}

static void test_disable_forwards_parent(void)
{
	struct fake_input input;
	struct fake_driver_data driver_data;
	struct fake_state state;
	void *event_input = &state;

	setup_input(&input, &driver_data, &state, event_input);
	put_pointer(&state, STATE_DISABLE_OFFSET, disable_stub);
	gpio_keys_close(&input);
	expect_true("disable callback called once", disable_calls == 1);
	expect_true("disable receives input parent",
			last_disable_parent == event_input);
}

int main(void)
{
	test_no_disable_callback();
	test_disable_forwards_parent();
	if (failures)
		return 1;
	puts("PASS gpio_keys_close host tests (2 scenarios)");
	return 0;
}
