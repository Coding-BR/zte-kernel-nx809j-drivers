#include <stdbool.h>
#include <stdio.h>

#define EV_KEY 1U
#define IRQ_HANDLED 1

struct gpio_keys_button {
	bool wakeup;
};

struct gpio_button_data {
	const struct gpio_keys_button *button;
	unsigned short code;
	int irq;
	unsigned int release_delay;
	bool key_pressed;
};

struct event {
	unsigned int type;
	unsigned int code;
	int value;
};

static struct event events[4];
static unsigned int event_count;
static unsigned int sync_count;
static unsigned int wake_count;
static unsigned int timer_count;
static unsigned int timer_deadline;
static unsigned int lock_count;
static unsigned int unlock_count;
static unsigned int trace_count;
static char trace[10];
static unsigned int jiffies = 1000;

static void reset_trace(void)
{
	events[0] = (struct event){ 0 };
	events[1] = (struct event){ 0 };
	events[2] = (struct event){ 0 };
	events[3] = (struct event){ 0 };
	event_count = 0;
	sync_count = 0;
	wake_count = 0;
	timer_count = 0;
	timer_deadline = 0;
	lock_count = 0;
	unlock_count = 0;
	trace_count = 0;
	trace[0] = '\0';
}

static void record_trace(char step)
{
	if (trace_count < sizeof(trace) - 1)
		trace[trace_count++] = step;
	trace[trace_count] = '\0';
}

static void raw_spin_lock_irqsave(void *lock, unsigned long flags)
{
	(void)lock;
	(void)flags;
	lock_count++;
	record_trace('L');
}

static void pm_wakeup_dev_event(void *parent, unsigned int milliseconds,
				bool hard)
{
	(void)parent;
	(void)milliseconds;
	(void)hard;
	wake_count++;
	record_trace('W');
}

static void input_event(void *input, unsigned int type, unsigned int code,
			int value)
{
	(void)input;
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = (struct event){ type, code, value };
	record_trace('E');
}

static void input_sync(void *input)
{
	(void)input;
	sync_count++;
	record_trace('Y');
}

static unsigned long __msecs_to_jiffies(unsigned int milliseconds)
{
	return milliseconds;
}

static void mod_timer(void *timer, unsigned long deadline)
{
	(void)timer;
	timer_count++;
	timer_deadline = (unsigned int)deadline;
	record_trace('T');
}

static void raw_spin_unlock_irqrestore(void *lock, unsigned long flags)
{
	(void)lock;
	(void)flags;
	unlock_count++;
	record_trace('U');
}

static int gpio_keys_irq_isr(int irq, struct gpio_button_data *bdata)
{
	if (bdata->irq != irq)
		return -1;
	raw_spin_lock_irqsave(bdata, 0);
	if (!bdata->key_pressed) {
		if (bdata->button->wakeup)
			pm_wakeup_dev_event(NULL, 0, false);
		input_event(NULL, EV_KEY, bdata->code, 1);
		input_sync(NULL);
		if (!bdata->release_delay) {
			input_event(NULL, EV_KEY, bdata->code, 0);
			input_sync(NULL);
			goto out;
		}
		bdata->key_pressed = true;
	} else if (!bdata->release_delay) {
		goto out;
	}
	mod_timer(bdata, jiffies +
		  __msecs_to_jiffies(bdata->release_delay));
out:
	raw_spin_unlock_irqrestore(bdata, 0);
	return IRQ_HANDLED;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static const struct gpio_keys_button wake_button = { .wakeup = true };
static const struct gpio_keys_button plain_button = { .wakeup = false };

static struct gpio_button_data default_bdata(
	const struct gpio_keys_button *button, unsigned int delay)
{
	return (struct gpio_button_data){
		.button = button,
		.code = 115,
		.irq = 101,
		.release_delay = delay,
	};
}

static bool test_wakeup_press_schedules_release(void)
{
	struct gpio_button_data bdata = default_bdata(&wake_button, 30);

	reset_trace();
	REQUIRE(gpio_keys_irq_isr(101, &bdata) == IRQ_HANDLED);
	REQUIRE(wake_count == 1 && event_count == 1 && sync_count == 1);
	REQUIRE(events[0].type == EV_KEY && events[0].code == 115 &&
		events[0].value == 1);
	REQUIRE(bdata.key_pressed && timer_count == 1 &&
		timer_deadline == 1030);
	REQUIRE(lock_count == 1 && unlock_count == 1);
	REQUIRE(trace[0] == 'L' && trace[1] == 'W' && trace[2] == 'E' &&
		trace[3] == 'Y' && trace[4] == 'T' && trace[5] == 'U' &&
		trace[6] == '\0');
	return true;
}

static bool test_zero_delay_press_releases_immediately(void)
{
	struct gpio_button_data bdata = default_bdata(&plain_button, 0);

	reset_trace();
	REQUIRE(gpio_keys_irq_isr(101, &bdata) == IRQ_HANDLED);
	REQUIRE(!bdata.key_pressed && wake_count == 0 && event_count == 2 &&
		sync_count == 2 && timer_count == 0);
	REQUIRE(events[0].value == 1 && events[1].value == 0);
	REQUIRE(lock_count == 1 && unlock_count == 1);
	REQUIRE(trace[0] == 'L' && trace[1] == 'E' && trace[2] == 'Y' &&
		trace[3] == 'E' && trace[4] == 'Y' && trace[5] == 'U' &&
		trace[6] == '\0');
	return true;
}

static bool test_pressed_key_reschedules(void)
{
	struct gpio_button_data bdata = default_bdata(&plain_button, 30);

	bdata.key_pressed = true;
	reset_trace();
	REQUIRE(gpio_keys_irq_isr(101, &bdata) == IRQ_HANDLED);
	REQUIRE(bdata.key_pressed && event_count == 0 && sync_count == 0 &&
		timer_count == 1 && timer_deadline == 1030);
	REQUIRE(trace[0] == 'L' && trace[1] == 'T' && trace[2] == 'U' &&
		trace[3] == '\0');
	return true;
}

static bool test_pressed_key_zero_delay_is_ignored(void)
{
	struct gpio_button_data bdata = default_bdata(&plain_button, 0);

	bdata.key_pressed = true;
	reset_trace();
	REQUIRE(gpio_keys_irq_isr(101, &bdata) == IRQ_HANDLED);
	REQUIRE(bdata.key_pressed && event_count == 0 && sync_count == 0 &&
		timer_count == 0);
	REQUIRE(trace[0] == 'L' && trace[1] == 'U' && trace[2] == '\0');
	return true;
}

int main(void)
{
	if (!test_wakeup_press_schedules_release() ||
	    !test_zero_delay_press_releases_immediately() ||
	    !test_pressed_key_reschedules() ||
	    !test_pressed_key_zero_delay_is_ignored())
		return 1;

	puts("PASS gpio_keys_irq_isr host tests (4 scenarios)");
	return 0;
}
