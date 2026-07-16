#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define BITS_PER_LONG 64U
#define EV_KEY 1U
#define EV_ABS 3U
#define EV_SW 5U
#define KEY_CNT 768U
#define SW_CNT 17U

struct button {
	unsigned int type;
	unsigned short code;
	int value;
	bool wakeup;
	bool can_disable;
};

struct event {
	unsigned int type;
	unsigned int code;
	int value;
};

struct bdata {
	struct button *button;
	bool has_gpiod;
	int gpio_value;
	int gpion;
	int gpion_raw;
	int irq;
	int wakeirq;
	unsigned int release_delay;
	unsigned int software_debounce;
	bool disabled;
	bool key_pressed;
	bool suspended;
};

static struct event events[16];
static size_t event_count;
static unsigned int sync_count;
static unsigned int stay_awake_count;
static unsigned int wake_event_count;
static unsigned int relax_count;
static unsigned int delayed_work_count;
static unsigned int delayed_work_delay;
static unsigned int timer_arm_count;
static unsigned int timer_delay;
static unsigned int timer_delete_count;
static unsigned int work_cancel_count;
static unsigned int lock_count;
static unsigned int unlock_count;
static unsigned int report_count;
static unsigned int disabled_irqs[4];
static unsigned int disabled_irq_count;
static unsigned int enabled_irqs[4];
static unsigned int enabled_irq_count;

static void reset_trace(void)
{
	memset(events, 0, sizeof(events));
	event_count = 0;
	sync_count = 0;
	stay_awake_count = 0;
	wake_event_count = 0;
	relax_count = 0;
	delayed_work_count = 0;
	delayed_work_delay = 0;
	timer_arm_count = 0;
	timer_delay = 0;
	timer_delete_count = 0;
	work_cancel_count = 0;
	lock_count = 0;
	unlock_count = 0;
	report_count = 0;
	disabled_irq_count = 0;
	enabled_irq_count = 0;
}

static void input_event(unsigned int type, unsigned int code, int value)
{
	events[event_count++] = (struct event) { type, code, value };
}

static void input_sync(void)
{
	sync_count++;
}

static bool bitmap_subset_stock(const unsigned long *bitmap1,
				const unsigned long *bitmap2,
				unsigned int nbits)
{
	unsigned int index;
	unsigned int full_words = nbits / BITS_PER_LONG;

	for (index = 0; index < full_words; index++)
		if (bitmap1[index] & ~bitmap2[index])
			return false;

	if (nbits % BITS_PER_LONG) {
		unsigned long mask = (1UL << (nbits % BITS_PER_LONG)) - 1UL;

		if (bitmap1[index] & ~bitmap2[index] & mask)
			return false;
	}

	return true;
}

static void gpio_keys_quiesce_key(struct bdata *bdata)
{
	if (!bdata->has_gpiod)
		timer_delete_count++;
	else
		work_cancel_count++;
}

static void gpio_keys_disable_button(struct bdata *bdata)
{
	if (bdata->disabled)
		return;
	disabled_irqs[disabled_irq_count++] = (unsigned int)bdata->irq;
	if (bdata->wakeirq)
		disabled_irqs[disabled_irq_count++] = (unsigned int)bdata->wakeirq;
	gpio_keys_quiesce_key(bdata);
	bdata->disabled = true;
}

static void gpio_keys_enable_button(struct bdata *bdata)
{
	if (!bdata->disabled)
		return;
	enabled_irqs[enabled_irq_count++] = (unsigned int)bdata->irq;
	if (bdata->wakeirq)
		enabled_irqs[enabled_irq_count++] = (unsigned int)bdata->wakeirq;
	bdata->disabled = false;
}

static void gpio_keys_gpio_work_func(struct bdata *bdata)
{
	lock_count++;
	report_count++;
	if (bdata->button->wakeup)
		relax_count++;
	unlock_count++;
}

static int gpio_keys_gpio_isr(int irq, struct bdata *bdata)
{
	if (irq != bdata->irq && irq != bdata->wakeirq)
		return -1;

	if (bdata->button->wakeup) {
		stay_awake_count++;
		if (bdata->suspended &&
		    (bdata->button->type == 0 || bdata->button->type == EV_KEY))
			input_event(EV_KEY, bdata->button->code, 1);
	}

	delayed_work_count++;
	delayed_work_delay = bdata->software_debounce;
	return 1;
}

static void gpio_keys_irq_timer(struct bdata *bdata)
{
	if (!bdata->key_pressed)
		return;
	input_event(EV_KEY, bdata->button->code, 0);
	input_sync();
	bdata->key_pressed = false;
}

static int gpio_keys_irq_isr(int irq, struct bdata *bdata)
{
	if (irq != bdata->irq)
		return -1;

	if (!bdata->key_pressed) {
		if (bdata->button->wakeup)
			wake_event_count++;
		input_event(EV_KEY, bdata->button->code, 1);
		input_sync();
		if (!bdata->release_delay) {
			input_event(EV_KEY, bdata->button->code, 0);
			input_sync();
			return 1;
		}
		bdata->key_pressed = true;
	} else if (!bdata->release_delay) {
		return 1;
	}

	timer_arm_count++;
	timer_delay = bdata->release_delay;
	return 1;
}

static int gpio_keys_show_gamekey_status(struct bdata *buttons, size_t count)
{
	size_t index;

	for (index = 0; index < count; index++) {
		struct bdata *bdata = &buttons[index];

		if (bdata->button && bdata->button->code == 0xf &&
		    bdata->button->type == EV_SW)
			return bdata->gpio_value == 0 && bdata->gpion_raw != 0;
	}

	return -1;
}

#define REQUIRE(condition) do {                                      \
	if (!(condition)) {                                             \
		fprintf(stderr, "assertion failed at %s:%d: %s\n",       \
			__FILE__, __LINE__, #condition);                     \
		return false;                                             \
	}                                                               \
} while (0)

static struct button key = { EV_KEY, 115, 0, true, true };
static struct button gamekey = { EV_SW, 0xf, 0, false, true };

static struct bdata default_bdata(void)
{
	return (struct bdata) {
		.button = &key,
		.has_gpiod = true,
		.gpion = 43,
		.irq = 101,
		.wakeirq = 102,
		.release_delay = 30,
		.software_debounce = 7,
	};
}

static bool test_bitmap_key_subset(void)
{
	unsigned long requested[KEY_CNT / BITS_PER_LONG] = { 0 };
	unsigned long supported[KEY_CNT / BITS_PER_LONG] = { 0 };

	requested[0] = 1UL << 3;
	requested[11] = 1UL << 61;
	supported[0] = requested[0];
	supported[11] = requested[11];
	REQUIRE(bitmap_subset_stock(requested, supported, KEY_CNT));
	supported[11] = 0;
	REQUIRE(!bitmap_subset_stock(requested, supported, KEY_CNT));
	return true;
}

static bool test_bitmap_switch_tail_mask(void)
{
	unsigned long requested[1] = { 1UL << 16 };
	unsigned long supported[1] = { 1UL << 16 };

	REQUIRE(bitmap_subset_stock(requested, supported, SW_CNT));
	requested[0] |= 1UL << 40;
	REQUIRE(bitmap_subset_stock(requested, supported, SW_CNT));
	requested[0] |= 1UL << 4;
	REQUIRE(!bitmap_subset_stock(requested, supported, SW_CNT));
	return true;
}

static bool test_quiesce_timer(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	bdata.has_gpiod = false;
	gpio_keys_quiesce_key(&bdata);
	REQUIRE(timer_delete_count == 1 && work_cancel_count == 0);
	return true;
}

static bool test_quiesce_work(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	gpio_keys_quiesce_key(&bdata);
	REQUIRE(work_cancel_count == 1 && timer_delete_count == 0);
	return true;
}

static bool test_disable_enable_dual_irq(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	gpio_keys_disable_button(&bdata);
	REQUIRE(bdata.disabled);
	REQUIRE(disabled_irq_count == 2);
	REQUIRE(disabled_irqs[0] == 101 && disabled_irqs[1] == 102);
	REQUIRE(work_cancel_count == 1);
	gpio_keys_enable_button(&bdata);
	REQUIRE(!bdata.disabled);
	REQUIRE(enabled_irq_count == 2);
	REQUIRE(enabled_irqs[0] == 101 && enabled_irqs[1] == 102);
	return true;
}

static bool test_work_lock_report_relax(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	gpio_keys_gpio_work_func(&bdata);
	REQUIRE(lock_count == 1 && unlock_count == 1);
	REQUIRE(report_count == 1 && relax_count == 1);
	return true;
}

static bool test_gpio_isr_primary(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	REQUIRE(gpio_keys_gpio_isr(101, &bdata) == 1);
	REQUIRE(stay_awake_count == 1);
	REQUIRE(delayed_work_count == 1 && delayed_work_delay == 7);
	REQUIRE(event_count == 0);
	return true;
}

static bool test_gpio_isr_secondary_suspended(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	bdata.suspended = true;
	REQUIRE(gpio_keys_gpio_isr(102, &bdata) == 1);
	REQUIRE(event_count == 1);
	REQUIRE(events[0].code == 115 && events[0].value == 1);
	REQUIRE(delayed_work_count == 1);
	return true;
}

static bool test_gpio_isr_rejects_unrelated_irq(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	REQUIRE(gpio_keys_gpio_isr(999, &bdata) == -1);
	REQUIRE(delayed_work_count == 0 && event_count == 0);
	return true;
}

static bool test_irq_timer_idle(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	gpio_keys_irq_timer(&bdata);
	REQUIRE(event_count == 0 && sync_count == 0);
	return true;
}

static bool test_irq_timer_release(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	bdata.key_pressed = true;
	gpio_keys_irq_timer(&bdata);
	REQUIRE(!bdata.key_pressed);
	REQUIRE(event_count == 1 && events[0].value == 0);
	REQUIRE(sync_count == 1);
	return true;
}

static bool test_irq_isr_zero_delay(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	bdata.release_delay = 0;
	REQUIRE(gpio_keys_irq_isr(101, &bdata) == 1);
	REQUIRE(event_count == 2);
	REQUIRE(events[0].value == 1 && events[1].value == 0);
	REQUIRE(sync_count == 2 && timer_arm_count == 0);
	REQUIRE(wake_event_count == 1);
	return true;
}

static bool test_irq_isr_delayed_press(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	REQUIRE(gpio_keys_irq_isr(101, &bdata) == 1);
	REQUIRE(bdata.key_pressed);
	REQUIRE(event_count == 1 && events[0].value == 1);
	REQUIRE(sync_count == 1);
	REQUIRE(timer_arm_count == 1 && timer_delay == 30);
	return true;
}

static bool test_irq_isr_rearms_pressed_key(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	bdata.key_pressed = true;
	REQUIRE(gpio_keys_irq_isr(101, &bdata) == 1);
	REQUIRE(event_count == 0 && sync_count == 0);
	REQUIRE(timer_arm_count == 1 && timer_delay == 30);
	return true;
}

static bool test_irq_isr_rejects_unrelated_irq(void)
{
	struct bdata bdata = default_bdata();

	reset_trace();
	REQUIRE(gpio_keys_irq_isr(999, &bdata) == -1);
	REQUIRE(event_count == 0 && timer_arm_count == 0);
	return true;
}

static bool test_gamekey_open(void)
{
	struct bdata bdata = default_bdata();

	bdata.button = &gamekey;
	bdata.gpio_value = 0;
	bdata.gpion_raw = 1;
	REQUIRE(gpio_keys_show_gamekey_status(&bdata, 1) == 1);
	return true;
}

static bool test_gamekey_closed(void)
{
	struct bdata bdata = default_bdata();

	bdata.button = &gamekey;
	bdata.gpio_value = 1;
	bdata.gpion_raw = 1;
	REQUIRE(gpio_keys_show_gamekey_status(&bdata, 1) == 0);
	return true;
}

static bool test_gamekey_missing(void)
{
	struct bdata bdata = default_bdata();

	REQUIRE(gpio_keys_show_gamekey_status(&bdata, 1) == -1);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "bitmap_key_subset", test_bitmap_key_subset },
		{ "bitmap_switch_tail_mask", test_bitmap_switch_tail_mask },
		{ "quiesce_timer", test_quiesce_timer },
		{ "quiesce_work", test_quiesce_work },
		{ "disable_enable_dual_irq", test_disable_enable_dual_irq },
		{ "work_lock_report_relax", test_work_lock_report_relax },
		{ "gpio_isr_primary", test_gpio_isr_primary },
		{ "gpio_isr_secondary_suspended", test_gpio_isr_secondary_suspended },
		{ "gpio_isr_rejects_unrelated_irq", test_gpio_isr_rejects_unrelated_irq },
		{ "irq_timer_idle", test_irq_timer_idle },
		{ "irq_timer_release", test_irq_timer_release },
		{ "irq_isr_zero_delay", test_irq_isr_zero_delay },
		{ "irq_isr_delayed_press", test_irq_isr_delayed_press },
		{ "irq_isr_rearms_pressed_key", test_irq_isr_rearms_pressed_key },
		{ "irq_isr_rejects_unrelated_irq", test_irq_isr_rejects_unrelated_irq },
		{ "gamekey_open", test_gamekey_open },
		{ "gamekey_closed", test_gamekey_closed },
		{ "gamekey_missing", test_gamekey_missing },
	};
	size_t index;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (!tests[index].run()) {
			printf("FAIL %s\n", tests[index].name);
			return 1;
		}
		printf("PASS %s\n", tests[index].name);
	}
	printf("SUMMARY %zu/%zu\n", index, sizeof(tests) / sizeof(tests[0]));
	return 0;
}
