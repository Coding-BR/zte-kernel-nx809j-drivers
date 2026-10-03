#include <errno.h>
#include <stdbool.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define EV_KEY 1
#define EV_ABS 3
#define EV_SW 5

#define BUTTON_TYPE_OFFSET 0x18
#define BUTTON_VALUE_OFFSET 0x2c
#define INPUT_PARENT_OFFSET 0x290
#define BDATA_INPUT_OFFSET 0x8
#define BDATA_GPIOD_OFFSET 0x10
#define BDATA_CODE_OFFSET 0x18
#define BDATA_GPIOS_OFFSET 0xc4
#define BDATA_GPION_OFFSET 0xc8

struct fake_button { unsigned char bytes[0x30]; };
struct fake_input { unsigned char bytes[0x298]; };
struct fake_bdata { unsigned char bytes[0x110]; };

static int raw_values[2];
static unsigned int raw_calls;
static int sleep_state;
static unsigned int gpio_to_desc_calls;
static unsigned int event_calls;
static void *last_event_input;
static unsigned int last_event_type;
static unsigned int last_event_code;
static int last_event_value;
static unsigned int sync_calls;
static unsigned int error_calls;
static void *last_error_parent;
static unsigned int printk_calls;
static unsigned int failures;
static int stat_rec;

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

static struct fake_button *gpio_to_desc(int gpio)
{
	(void)gpio;
	gpio_to_desc_calls++;
	return (struct fake_button *)(uintptr_t)(gpio_to_desc_calls);
}

static int gpiod_get_raw_value(struct fake_button *desc)
{
	(void)desc;
	if (raw_calls >= 2)
		return 0;
	return raw_values[raw_calls++];
}

static int gpiod_get_value_cansleep(void *gpiod)
{
	(void)gpiod;
	return sleep_state;
}

static void input_event(void *input, unsigned int type, unsigned int code,
			int value)
{
	event_calls++;
	last_event_input = input;
	last_event_type = type;
	last_event_code = code;
	last_event_value = value;
}

static void input_sync(void *input)
{
	(void)input;
	sync_calls++;
}

static void dev_err(void *parent, const char *format, ...)
{
	(void)format;
	error_calls++;
	last_error_parent = parent;
}

static int _printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static bool nb_key_is_need_report(struct fake_bdata *bdata)
{
	unsigned int previous_state;
	unsigned int report_state;
	int gpios_state;
	int gpion_state;

	gpios_state = !gpiod_get_raw_value(
		gpio_to_desc(get_int(bdata, BDATA_GPIOS_OFFSET)));
	gpion_state = !gpiod_get_raw_value(
		gpio_to_desc(get_int(bdata, BDATA_GPION_OFFSET)));
	if (gpios_state == gpion_state) {
		_printk("half-open");
		return false;
	}
	previous_state = (unsigned int)stat_rec;
	report_state = (unsigned int)((gpios_state << 1) | gpion_state);
	if (previous_state == report_state)
		return false;
	stat_rec = (int)report_state;
	return true;
}

static void gpio_keys_gpio_report_event(struct fake_bdata *bdata)
{
	struct fake_button *button = get_pointer(bdata, 0);
	struct fake_input *input = get_pointer(bdata, BDATA_INPUT_OFFSET);
	unsigned int button_type = (unsigned int)get_int(button, BUTTON_TYPE_OFFSET);
	unsigned int type = button_type ? button_type : EV_KEY;
	unsigned short code;
	int state;

	if (get_int(bdata, BDATA_GPION_OFFSET) >= 0 &&
	    !nb_key_is_need_report(bdata))
		return;
	memcpy(&code, get_pointer(bdata, BDATA_CODE_OFFSET), sizeof(code));
	state = gpiod_get_value_cansleep(get_pointer(bdata, BDATA_GPIOD_OFFSET));
	if (code == 0xf && button_type == EV_SW) {
		state = !state;
		goto report_state;
	}
	if (state < 0) {
		dev_err(get_pointer(input, INPUT_PARENT_OFFSET), "gpio state");
		return;
	}
	if (button_type != EV_ABS)
		goto report_state;
	if (!state)
		goto sync;
	input_event(input, EV_ABS, get_int(button, 0),
			get_int(button, BUTTON_VALUE_OFFSET));
	_printk("absolute");
	goto sync;

report_state:
	input_event(input, type, code, state);
	_printk("state");
sync:
	input_sync(input);
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void reset_observations(void)
{
	raw_values[0] = 0;
	raw_values[1] = 0;
	raw_calls = 0;
	sleep_state = 0;
	gpio_to_desc_calls = 0;
	event_calls = 0;
	last_event_input = NULL;
	last_event_type = 0;
	last_event_code = 0;
	last_event_value = 0;
	sync_calls = 0;
	error_calls = 0;
	last_error_parent = NULL;
	printk_calls = 0;
	stat_rec = 0;
}

static void setup_bdata(struct fake_bdata *bdata, struct fake_button *button,
			struct fake_input *input, unsigned short *code,
			void *gpiod, void *parent, unsigned int type,
			int gpios, int gpion, int button_code, int value)
{
	memset(bdata, 0, sizeof(*bdata));
	memset(button, 0, sizeof(*button));
	memset(input, 0, sizeof(*input));
	put_pointer(bdata, 0, button);
	put_pointer(bdata, BDATA_INPUT_OFFSET, input);
	put_pointer(bdata, BDATA_GPIOD_OFFSET, gpiod);
	put_pointer(bdata, BDATA_CODE_OFFSET, code);
	put_int(bdata, BDATA_GPIOS_OFFSET, gpios);
	put_int(bdata, BDATA_GPION_OFFSET, gpion);
	put_pointer(input, INPUT_PARENT_OFFSET, parent);
	put_int(button, BUTTON_TYPE_OFFSET, (int)type);
	put_int(button, 0, button_code);
	put_int(button, BUTTON_VALUE_OFFSET, value);
}

static void test_half_open_is_suppressed(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;
	unsigned short code = 10;

	reset_observations();
	setup_bdata(&bdata, &button, &input, &code, &button, &button,
			EV_KEY, 1, 2, 10, 7);
	raw_values[0] = 0;
	raw_values[1] = 0;
	gpio_keys_gpio_report_event(&bdata);
	expect_true("half-open reads both gpios", raw_calls == 2);
	expect_true("half-open suppresses input event", event_calls == 0);
	expect_true("half-open suppresses sync", sync_calls == 0);
	expect_true("half-open logs once", printk_calls == 1);
}

static void test_repeated_gpio_state_is_suppressed(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;
	unsigned short code = 10;

	reset_observations();
	setup_bdata(&bdata, &button, &input, &code, &button, &button,
			EV_KEY, 1, 2, 10, 7);
	raw_values[0] = 0;
	raw_values[1] = 1;
	gpio_keys_gpio_report_event(&bdata);
	expect_true("first GPIO state reports", event_calls == 1);
	reset_observations();
	stat_rec = 2;
	raw_values[0] = 0;
	raw_values[1] = 1;
	gpio_keys_gpio_report_event(&bdata);
	expect_true("repeated GPIO state suppresses event", event_calls == 0);
	expect_true("repeated GPIO state suppresses sync", sync_calls == 0);
}

static void test_gpio_error_returns_without_report(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;
	unsigned short code = 10;
	void *parent = &button;

	reset_observations();
	setup_bdata(&bdata, &button, &input, &code, &button, parent,
			EV_KEY, 1, -1, 10, 7);
	sleep_state = -EIO;
	gpio_keys_gpio_report_event(&bdata);
	expect_true("GPIO error logs once", error_calls == 1);
	expect_true("GPIO error uses input parent", last_error_parent == parent);
	expect_true("GPIO error has no event", event_calls == 0);
	expect_true("GPIO error has no sync", sync_calls == 0);
}

static void test_switch_code_inverts_state(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;
	unsigned short code = 0xf;

	reset_observations();
	setup_bdata(&bdata, &button, &input, &code, &button, &button,
			EV_SW, 1, -1, 0xf, 9);
	sleep_state = 1;
	gpio_keys_gpio_report_event(&bdata);
	expect_true("switch reports once", event_calls == 1);
	expect_true("switch type preserved", last_event_type == EV_SW);
	expect_true("switch code preserved", last_event_code == 0xf);
	expect_true("switch state inverted", last_event_value == 0);
	expect_true("switch syncs once", sync_calls == 1);
}

static void test_absolute_zero_only_syncs(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;
	unsigned short code = 20;

	reset_observations();
	setup_bdata(&bdata, &button, &input, &code, &button, &button,
			EV_ABS, 1, -1, 20, 8);
	sleep_state = 0;
	gpio_keys_gpio_report_event(&bdata);
	expect_true("absolute release has no event", event_calls == 0);
	expect_true("absolute release syncs", sync_calls == 1);
}

static void test_absolute_value_reports_and_syncs(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;
	unsigned short code = 20;

	reset_observations();
	setup_bdata(&bdata, &button, &input, &code, &button, &button,
			EV_ABS, 1, -1, 20, 8);
	sleep_state = 1;
	gpio_keys_gpio_report_event(&bdata);
	expect_true("absolute value reports once", event_calls == 1);
	expect_true("absolute type", last_event_type == EV_ABS);
	expect_true("absolute code", last_event_code == 20);
	expect_true("absolute value", last_event_value == 8);
	expect_true("absolute value syncs", sync_calls == 1);
	expect_true("absolute value logs once", printk_calls == 1);
}

int main(void)
{
	test_half_open_is_suppressed();
	test_repeated_gpio_state_is_suppressed();
	test_gpio_error_returns_without_report();
	test_switch_code_inverts_state();
	test_absolute_zero_only_syncs();
	test_absolute_value_reports_and_syncs();
	if (failures)
		return 1;
	puts("PASS gpio_keys_gpio_report_event host tests (6 scenarios)");
	return 0;
}
