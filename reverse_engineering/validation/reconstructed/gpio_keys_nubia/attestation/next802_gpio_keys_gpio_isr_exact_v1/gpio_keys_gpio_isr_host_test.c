#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>

#define EV_KEY 1U
#define EV_SW 5U
#define IRQ_HANDLED 1

struct device {
	int unused;
};

struct input_dev {
	struct device *parent;
};

struct gpio_keys_button {
	unsigned int type;
	unsigned short code;
	bool wakeup;
};

struct delayed_work {
	int unused;
};

struct gpio_button_data {
	const struct gpio_keys_button *button;
	struct input_dev *input;
	unsigned int software_debounce;
	int irq;
	int wakeirq;
	struct delayed_work work;
	bool suspended;
};

struct event {
	unsigned int type;
	unsigned int code;
	int value;
};

static struct event event_record;
static unsigned int awake_count;
static unsigned int schedule_count;
static unsigned int schedule_cpu;
static unsigned int schedule_delay;
static unsigned int trace_count;
static char trace[4];
static void *system_wq = (void *)1;

static void reset_trace(void)
{
	event_record = (struct event){ 0 };
	awake_count = 0;
	schedule_count = 0;
	schedule_cpu = 0;
	schedule_delay = 0;
	trace_count = 0;
	trace[0] = '\0';
}

static void record_trace(char step)
{
	if (trace_count < sizeof(trace) - 1)
		trace[trace_count++] = step;
	trace[trace_count] = '\0';
}

static void pm_stay_awake(struct device *parent)
{
	(void)parent;
	awake_count++;
	record_trace('A');
}

static void input_event(struct input_dev *input, unsigned int type,
			unsigned int code, int value)
{
	(void)input;
	event_record = (struct event){ type, code, value };
	record_trace('E');
}

static unsigned long __msecs_to_jiffies(unsigned int milliseconds)
{
	return milliseconds;
}

static void *mod_delayed_work_on(unsigned int cpu, void *wq,
				struct delayed_work *work, unsigned long delay)
{
	(void)wq;
	(void)work;
	schedule_count++;
	schedule_cpu = cpu;
	schedule_delay = (unsigned int)delay;
	record_trace('S');
	return NULL;
}

static int gpio_keys_gpio_isr(int irq, void *dev_id)
{
	struct gpio_button_data *bdata = dev_id;
	const struct gpio_keys_button *button;

	if (irq != bdata->irq && irq != bdata->wakeirq)
		return -1;
	button = bdata->button;

	if (button->wakeup) {
		pm_stay_awake(bdata->input->parent);
		if (bdata->suspended &&
		    (button->type == 0 || button->type == EV_KEY))
			input_event(bdata->input, EV_KEY, button->code, 1);
	}

	mod_delayed_work_on(32, system_wq, &bdata->work,
			   __msecs_to_jiffies(bdata->software_debounce));

	return IRQ_HANDLED;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static const struct gpio_keys_button key_button = {
	.type = EV_KEY,
	.code = 115,
	.wakeup = true,
};

static const struct gpio_keys_button switch_button = {
	.type = EV_SW,
	.code = 0xf,
	.wakeup = true,
};

static struct gpio_button_data default_bdata(
	const struct gpio_keys_button *button)
{
	static struct device parent;
	static struct input_dev input = { .parent = &parent };

	return (struct gpio_button_data){
		.button = button,
		.input = &input,
		.software_debounce = 7,
		.irq = 101,
		.wakeirq = 102,
	};
}

static bool test_primary_non_wakeup(void)
{
	static const struct gpio_keys_button button = {
		.type = EV_KEY,
		.code = 30,
		.wakeup = false,
	};
	struct gpio_button_data bdata = default_bdata(&button);

	reset_trace();
	REQUIRE(gpio_keys_gpio_isr(101, &bdata) == IRQ_HANDLED);
	REQUIRE(awake_count == 0 && event_record.type == 0);
	REQUIRE(schedule_count == 1 && schedule_cpu == 32 &&
		schedule_delay == 7);
	REQUIRE(trace[0] == 'S' && trace[1] == '\0');
	return true;
}

static bool test_secondary_wakeup_suspended_key(void)
{
	struct gpio_button_data bdata = default_bdata(&key_button);

	bdata.suspended = true;
	reset_trace();
	REQUIRE(gpio_keys_gpio_isr(102, &bdata) == IRQ_HANDLED);
	REQUIRE(awake_count == 1 && event_record.type == EV_KEY &&
		event_record.code == 115 && event_record.value == 1);
	REQUIRE(schedule_count == 1 && schedule_delay == 7);
	REQUIRE(trace[0] == 'A' && trace[1] == 'E' && trace[2] == 'S' &&
		trace[3] == '\0');
	return true;
}

static bool test_suspended_switch_does_not_report_key(void)
{
	struct gpio_button_data bdata = default_bdata(&switch_button);

	bdata.suspended = true;
	reset_trace();
	REQUIRE(gpio_keys_gpio_isr(101, &bdata) == IRQ_HANDLED);
	REQUIRE(awake_count == 1 && event_record.type == 0);
	REQUIRE(schedule_count == 1 && schedule_delay == 7);
	REQUIRE(trace[0] == 'A' && trace[1] == 'S' && trace[2] == '\0');
	return true;
}

static bool test_wakeup_not_suspended(void)
{
	struct gpio_button_data bdata = default_bdata(&key_button);

	reset_trace();
	REQUIRE(gpio_keys_gpio_isr(101, &bdata) == IRQ_HANDLED);
	REQUIRE(awake_count == 1 && event_record.type == 0);
	REQUIRE(schedule_count == 1 && schedule_delay == 7);
	REQUIRE(trace[0] == 'A' && trace[1] == 'S' && trace[2] == '\0');
	return true;
}

int main(void)
{
	if (!test_primary_non_wakeup() ||
	    !test_secondary_wakeup_suspended_key() ||
	    !test_suspended_switch_does_not_report_key() ||
	    !test_wakeup_not_suspended())
		return 1;

	puts("PASS gpio_keys_gpio_isr host tests (4 scenarios)");
	return 0;
}
