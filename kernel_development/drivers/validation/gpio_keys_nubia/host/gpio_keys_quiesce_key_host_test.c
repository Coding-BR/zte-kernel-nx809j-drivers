#include <stdbool.h>
#include <stdio.h>

struct gpio_button_data {
	bool has_gpiod;
};

static unsigned int timer_delete_count;
static unsigned int work_cancel_count;
static unsigned int trace_count;
static char trace[3];

static void reset_trace(void)
{
	timer_delete_count = 0;
	work_cancel_count = 0;
	trace_count = 0;
	trace[0] = '\0';
}

static void record_trace(char step)
{
	if (trace_count < sizeof(trace) - 1)
		trace[trace_count++] = step;
	trace[trace_count] = '\0';
}

static void timer_delete_sync(void *timer)
{
	(void)timer;
	timer_delete_count++;
	record_trace('T');
}

static void cancel_delayed_work_sync(void *work)
{
	(void)work;
	work_cancel_count++;
	record_trace('W');
}

static void gpio_keys_quiesce_key(struct gpio_button_data *bdata)
{
	if (!bdata->has_gpiod)
		timer_delete_sync(bdata);
	else
		cancel_delayed_work_sync(bdata);
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_irq_only_timer(void)
{
	struct gpio_button_data bdata = { .has_gpiod = false };

	reset_trace();
	gpio_keys_quiesce_key(&bdata);
	REQUIRE(timer_delete_count == 1 && work_cancel_count == 0);
	REQUIRE(trace[0] == 'T' && trace[1] == '\0');
	return true;
}

static bool test_gpio_work(void)
{
	struct gpio_button_data bdata = { .has_gpiod = true };

	reset_trace();
	gpio_keys_quiesce_key(&bdata);
	REQUIRE(timer_delete_count == 0 && work_cancel_count == 1);
	REQUIRE(trace[0] == 'W' && trace[1] == '\0');
	return true;
}

int main(void)
{
	if (!test_irq_only_timer() || !test_gpio_work())
		return 1;

	puts("PASS gpio_keys_quiesce_key host tests (2 scenarios)");
	return 0;
}
