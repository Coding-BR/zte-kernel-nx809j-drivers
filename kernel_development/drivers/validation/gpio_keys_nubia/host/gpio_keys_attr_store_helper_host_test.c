#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define EV_KEY 1U
#define EV_SW 5U
#define EINVAL 22
#define ENOMEM 12
#define KEY_WORDS 12U
#define SW_BITS 17U

struct gpio_button_data {
	unsigned int type;
	unsigned int code;
	bool can_disable;
	bool disabled;
	bool has_delayed_work;
	int irq;
	int wakeirq;
};

struct gpio_keys_drvdata {
	struct gpio_button_data *buttons;
	unsigned int n_buttons;
	unsigned long supported_key[KEY_WORDS];
	unsigned long supported_sw;
};

static bool allocation_fails;
static int forced_parse_result;
static unsigned int allocations;
static unsigned int frees;
static unsigned int disable_count;
static unsigned int enable_count;
static unsigned int wake_disable_count;
static unsigned int wake_enable_count;
static unsigned int timer_delete_count;
static unsigned int work_cancel_count;
static unsigned int lock_count;
static unsigned int unlock_count;

static void reset_trace(void)
{
	allocation_fails = false;
	forced_parse_result = 0;
	allocations = 0;
	frees = 0;
	disable_count = 0;
	enable_count = 0;
	wake_disable_count = 0;
	wake_enable_count = 0;
	timer_delete_count = 0;
	work_cancel_count = 0;
	lock_count = 0;
	unlock_count = 0;
}

static unsigned long *bitmap_zalloc(unsigned int nbits, unsigned int flags)
{
	unsigned int words = (nbits + (sizeof(unsigned long) * 8U - 1U) /
			     (sizeof(unsigned long) * 8U));
	(void)flags;
	if (allocation_fails)
		return NULL;
	allocations++;
	return calloc(words, sizeof(unsigned long));
}

static void bitmap_free(unsigned long *bitmap)
{
	if (bitmap != NULL) {
		frees++;
		free(bitmap);
	}
}

static int parse_number(const char **cursor, unsigned int *value)
{
	char *end;
	unsigned long parsed;

	if (**cursor < '0' || **cursor > '9')
		return -EINVAL;
	parsed = strtoul(*cursor, &end, 10);
	if (parsed > 767U)
		return -EINVAL;
	*value = (unsigned int)parsed;
	*cursor = end;
	return 0;
}

static int bitmap_parselist(const char *text, unsigned long *bitmap,
				unsigned int nbits)
{
	const char *cursor = text;

	if (forced_parse_result != 0)
		return forced_parse_result;
	if (text == NULL || *text == '\0')
		return -EINVAL;
	for (;;) {
		unsigned int first, last;
		int error = parse_number(&cursor, &first);
		if (error != 0)
			return error;
		last = first;
		if (*cursor == '-') {
			cursor++;
			error = parse_number(&cursor, &last);
			if (error != 0 || last < first)
				return -EINVAL;
		}
		if (last >= nbits)
			return -EINVAL;
		for (unsigned int bit = first; bit <= last; bit++)
			bitmap[bit / (sizeof(unsigned long) * 8U)] |=
				1UL << (bit % (sizeof(unsigned long) * 8U));
		if (*cursor == '\0')
			return 0;
		if (*cursor != ',')
			return -EINVAL;
		cursor++;
		if (*cursor == '\0')
			return -EINVAL;
	}
}

static bool bitmap_test(const unsigned long *bitmap, unsigned int bit)
{
	return (bitmap[bit / (sizeof(unsigned long) * 8U)] >>
		(bit % (sizeof(unsigned long) * 8U))) & 1UL;
}

static bool bitmap_subset(const unsigned long *requested,
				 const unsigned long *supported, unsigned int words)
{
	for (unsigned int word = 0; word < words; word++)
		if (requested[word] & ~supported[word])
			return false;
	return true;
}

static void disable_irq(int irq)
{
	(void)irq;
	disable_count++;
}

static void enable_irq(int irq)
{
	(void)irq;
	enable_count++;
}

static void timer_delete_sync(struct gpio_button_data *button)
{
	(void)button;
	timer_delete_count++;
}

static void cancel_delayed_work_sync(struct gpio_button_data *button)
{
	(void)button;
	work_cancel_count++;
}

static int gpio_keys_attr_store_helper(struct gpio_keys_drvdata *ddata,
					       const char *buf, unsigned int type)
{
	unsigned int n_events = type == EV_KEY ? 0x300U : 0x11U;
	unsigned long requested[KEY_WORDS] = { 0 };
	unsigned int words = type == EV_KEY ? KEY_WORDS : 1U;
	int error;

	unsigned long *parsed = bitmap_zalloc(n_events, 0xcc0U);
	if (parsed == NULL)
		return -ENOMEM;
	error = bitmap_parselist(buf, parsed, n_events);
	if (error != 0)
		goto out;
	memcpy(requested, parsed, words * sizeof(*parsed));
	if (type == EV_KEY) {
		if (!bitmap_subset(requested, ddata->supported_key, KEY_WORDS)) {
			error = -EINVAL;
			goto out;
		}
	} else if (!bitmap_subset(requested, &ddata->supported_sw, 1U) ||
			(requested[0] & ~((1UL << SW_BITS) - 1UL)) != 0) {
		error = -EINVAL;
		goto out;
	}
	for (unsigned int index = 0; index < ddata->n_buttons; index++) {
		struct gpio_button_data *button = &ddata->buttons[index];
		if (button->type == type && bitmap_test(parsed, button->code) &&
			!button->can_disable) {
			error = -EINVAL;
			goto out;
		}
	}
	lock_count++;
	for (unsigned int index = 0; index < ddata->n_buttons; index++) {
		struct gpio_button_data *button = &ddata->buttons[index];
		bool selected;
		if (button->type != type)
			continue;
		selected = bitmap_test(parsed, button->code);
		if (selected && !button->disabled) {
			disable_irq(button->irq);
			if (button->wakeirq != 0) {
				disable_irq(button->wakeirq);
				wake_disable_count++;
			}
			if (button->has_delayed_work)
				cancel_delayed_work_sync(button);
			else
				timer_delete_sync(button);
			button->disabled = true;
		} else if (!selected && button->disabled) {
			enable_irq(button->irq);
			if (button->wakeirq != 0) {
				enable_irq(button->wakeirq);
				wake_enable_count++;
			}
			button->disabled = false;
		}
	}
	unlock_count++;
	error = 0;
out:
	bitmap_free(parsed);
	return error;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_allocation_failure(void)
{
	struct gpio_keys_drvdata ddata = { 0 };
	reset_trace();
	allocation_fails = true;
	REQUIRE(gpio_keys_attr_store_helper(&ddata, "1", EV_KEY) == -ENOMEM);
	REQUIRE(allocations == 0 && frees == 0 && lock_count == 0);
	return true;
}

static bool test_parse_error_is_freed(void)
{
	struct gpio_keys_drvdata ddata = { 0 };
	reset_trace();
	REQUIRE(gpio_keys_attr_store_helper(&ddata, "bad", EV_KEY) == -EINVAL);
	REQUIRE(allocations == 1 && frees == 1 && lock_count == 0);
	return true;
}

static bool test_unsupported_switch_is_rejected(void)
{
	struct gpio_keys_drvdata ddata = { 0 };
	struct gpio_button_data button = { .type = EV_SW, .code = 16,
		.can_disable = true, .irq = 10 };
	ddata.buttons = &button;
	ddata.n_buttons = 1;
	reset_trace();
	REQUIRE(gpio_keys_attr_store_helper(&ddata, "16", EV_SW) == -EINVAL);
	REQUIRE(!button.disabled && lock_count == 0 && frees == 1);
	return true;
}

static bool test_non_disableable_button_is_rejected(void)
{
	struct gpio_keys_drvdata ddata = { 0 };
	struct gpio_button_data button = { .type = EV_KEY, .code = 3,
		.can_disable = false, .irq = 11 };
	ddata.buttons = &button;
	ddata.n_buttons = 1;
	ddata.supported_key[0] = 1UL << 3;
	reset_trace();
	REQUIRE(gpio_keys_attr_store_helper(&ddata, "3", EV_KEY) == -EINVAL);
	REQUIRE(!button.disabled && disable_count == 0 && lock_count == 0);
	return true;
}

static bool test_disable_and_enable_transitions(void)
{
	struct gpio_keys_drvdata ddata = { 0 };
	struct gpio_button_data buttons[2] = {
		{ .type = EV_KEY, .code = 1, .can_disable = true,
		  .has_delayed_work = false, .irq = 20, .wakeirq = 21 },
		{ .type = EV_KEY, .code = 3, .can_disable = true,
		  .disabled = true, .has_delayed_work = true, .irq = 30 },
	};
	ddata.buttons = buttons;
	ddata.n_buttons = 2;
	ddata.supported_key[0] = (1UL << 1) | (1UL << 3);
	reset_trace();
	REQUIRE(gpio_keys_attr_store_helper(&ddata, "1,3", EV_KEY) == 0);
	REQUIRE(buttons[0].disabled && buttons[1].disabled);
	REQUIRE(disable_count == 2 && wake_disable_count == 1);
	REQUIRE(timer_delete_count == 1 && work_cancel_count == 0);
	REQUIRE(lock_count == 1 && unlock_count == 1 && frees == 1);
	reset_trace();
	REQUIRE(gpio_keys_attr_store_helper(&ddata, "3", EV_KEY) == 0);
	REQUIRE(!buttons[0].disabled && buttons[1].disabled);
	REQUIRE(enable_count == 2 && wake_enable_count == 1 && disable_count == 0);
	REQUIRE(lock_count == 1 && unlock_count == 1 && frees == 1);
	return true;
}

int main(void)
{
	if (!test_allocation_failure() ||
	    !test_parse_error_is_freed() ||
	    !test_unsupported_switch_is_rejected() ||
	    !test_non_disableable_button_is_rejected() ||
	    !test_disable_and_enable_transitions())
		return 1;
	puts("PASS gpio_keys_attr_store_helper host tests (5 scenarios)");
	return 0;
}
