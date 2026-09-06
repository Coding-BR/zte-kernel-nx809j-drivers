#include <stdbool.h>
#include <stdio.h>

#define EV_KEY 1U

struct gpio_button_data {
	unsigned short code;
	bool key_pressed;
};

struct timer_list {
	struct gpio_button_data *bdata;
};

struct input_dev {
	int unused;
};

struct event {
	unsigned int type;
	unsigned int code;
	int value;
};

static struct input_dev input;
static struct event events[2];
static unsigned int event_count;
static unsigned int sync_count;
static unsigned int lock_count;
static unsigned int unlock_count;
static unsigned int trace_count;
static char trace[6];

static void reset_trace(void)
{
	events[0] = (struct event){ 0 };
	events[1] = (struct event){ 0 };
	event_count = 0;
	sync_count = 0;
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

static void input_event(struct input_dev *dev, unsigned int type,
			unsigned int code, int value)
{
	(void)dev;
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = (struct event){ type, code, value };
	record_trace('E');
}

static void input_sync(struct input_dev *dev)
{
	(void)dev;
	sync_count++;
	record_trace('Y');
}

static void raw_spin_unlock_irqrestore(void *lock, unsigned long flags)
{
	(void)lock;
	(void)flags;
	unlock_count++;
	record_trace('U');
}

static void gpio_keys_irq_timer(struct timer_list *timer)
{
	struct gpio_button_data *bdata = timer->bdata;

	raw_spin_lock_irqsave(bdata, 0);
	if (bdata->key_pressed) {
		input_event(&input, EV_KEY, bdata->code, 0);
		input_sync(&input);
		bdata->key_pressed = false;
	}
	raw_spin_unlock_irqrestore(bdata, 0);
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_idle_timer(void)
{
	struct gpio_button_data bdata = { .code = 115 };
	struct timer_list timer = { .bdata = &bdata };

	reset_trace();
	gpio_keys_irq_timer(&timer);
	REQUIRE(!bdata.key_pressed && event_count == 0 && sync_count == 0);
	REQUIRE(lock_count == 1 && unlock_count == 1);
	REQUIRE(trace[0] == 'L' && trace[1] == 'U' && trace[2] == '\0');
	return true;
}

static bool test_pressed_timer(void)
{
	struct gpio_button_data bdata = { .code = 115, .key_pressed = true };
	struct timer_list timer = { .bdata = &bdata };

	reset_trace();
	gpio_keys_irq_timer(&timer);
	REQUIRE(!bdata.key_pressed && event_count == 1 && sync_count == 1);
	REQUIRE(events[0].type == EV_KEY && events[0].code == 115 &&
		events[0].value == 0);
	REQUIRE(lock_count == 1 && unlock_count == 1);
	REQUIRE(trace[0] == 'L' && trace[1] == 'E' && trace[2] == 'Y' &&
		trace[3] == 'U' && trace[4] == '\0');
	return true;
}

int main(void)
{
	if (!test_idle_timer() || !test_pressed_timer())
		return 1;

	puts("PASS gpio_keys_irq_timer host tests (2 scenarios)");
	return 0;
}
