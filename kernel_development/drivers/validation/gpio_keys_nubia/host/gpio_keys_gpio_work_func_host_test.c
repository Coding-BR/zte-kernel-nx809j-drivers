#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#define BUTTON_WAKEUP_OFFSET 0x1c
#define INPUT_PARENT_OFFSET 0x290
#define BDATA_INPUT_OFFSET 0x8
#define WORK_OFFSET 0x50
#define LOCK_OFFSET 0x80

struct fake_button { unsigned char bytes[0x20]; };
struct fake_input { unsigned char bytes[0x298]; };
struct fake_bdata { unsigned char bytes[0x110]; };

static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int report_calls;
static unsigned int relax_calls;
static void *last_report_bdata;
static void *last_relax_parent;
static unsigned int sequence[8];
static unsigned int sequence_length;
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

static int get_int(const void *base, size_t offset)
{
	int value;

	memcpy(&value, (const unsigned char *)base + offset, sizeof(value));
	return value;
}

static void mutex_lock(void *lock)
{
	(void)lock;
	lock_calls++;
	sequence[sequence_length++] = 1;
}

static void mutex_unlock(void *lock)
{
	(void)lock;
	unlock_calls++;
	sequence[sequence_length++] = 4;
}

static void gpio_keys_gpio_report_event(void *bdata)
{
	report_calls++;
	last_report_bdata = bdata;
	sequence[sequence_length++] = 2;
}

static void pm_relax(void *parent)
{
	relax_calls++;
	last_relax_parent = parent;
	sequence[sequence_length++] = 3;
}

static void gpio_keys_gpio_work_func(unsigned char *work)
{
	unsigned char *bdata = work - WORK_OFFSET;
	unsigned char *button;
	unsigned char *input;

	mutex_lock(work + LOCK_OFFSET);
	gpio_keys_gpio_report_event(bdata);
	button = get_pointer(bdata, 0);
	if (get_int(button, BUTTON_WAKEUP_OFFSET)) {
		input = get_pointer(bdata, BDATA_INPUT_OFFSET);
		pm_relax(get_pointer(input, INPUT_PARENT_OFFSET));
	}
	mutex_unlock(work + LOCK_OFFSET);
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
	lock_calls = 0;
	unlock_calls = 0;
	report_calls = 0;
	relax_calls = 0;
	last_report_bdata = NULL;
	last_relax_parent = NULL;
	sequence_length = 0;
}

static void setup(struct fake_bdata *bdata, struct fake_button *button,
		  struct fake_input *input, void *parent, int wakeup)
{
	memset(bdata, 0, sizeof(*bdata));
	memset(button, 0, sizeof(*button));
	memset(input, 0, sizeof(*input));
	put_pointer(bdata, 0, button);
	put_pointer(bdata, BDATA_INPUT_OFFSET, input);
	put_pointer(input, INPUT_PARENT_OFFSET, parent);
	memcpy(button->bytes + BUTTON_WAKEUP_OFFSET, &wakeup, sizeof(wakeup));
}

static void test_without_wakeup_relax(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;

	reset_observations();
	setup(&bdata, &button, &input, &button, 0);
	gpio_keys_gpio_work_func(bdata.bytes + WORK_OFFSET);
	expect_true("lock once", lock_calls == 1);
	expect_true("report once", report_calls == 1);
	expect_true("report receives bdata", last_report_bdata == &bdata);
	expect_true("no relax without wakeup", relax_calls == 0);
	expect_true("unlock once", unlock_calls == 1);
	expect_true("lock-report-unlock order",
			sequence_length == 3 && sequence[0] == 1 &&
			sequence[1] == 2 && sequence[2] == 4);
}

static void test_with_wakeup_relaxes_parent(void)
{
	struct fake_bdata bdata;
	struct fake_button button;
	struct fake_input input;
	void *parent = &bdata;

	reset_observations();
	setup(&bdata, &button, &input, parent, 1);
	gpio_keys_gpio_work_func(bdata.bytes + WORK_OFFSET);
	expect_true("wakeup relax once", relax_calls == 1);
	expect_true("relax receives parent", last_relax_parent == parent);
	expect_true("wakeup order",
			sequence_length == 4 && sequence[0] == 1 &&
			sequence[1] == 2 && sequence[2] == 3 && sequence[3] == 4);
}

int main(void)
{
	test_without_wakeup_relax();
	test_with_wakeup_relaxes_parent();
	if (failures)
		return 1;
	puts("PASS gpio_keys_gpio_work_func host tests (2 scenarios)");
	return 0;
}
