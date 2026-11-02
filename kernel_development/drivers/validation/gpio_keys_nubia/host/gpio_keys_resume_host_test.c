#include <stdbool.h>
#include <stdio.h>
#include <string.h>

struct irq_data { bool wake_enabled; };
struct input_dev { unsigned int users; unsigned int lock_depth; };
struct gpio_button_data {
	int irq;
	bool gpiod;
	bool suspended;
	struct irq_data irq_data;
};
struct gpio_keys_drvdata {
	struct input_dev *input;
	unsigned int nbuttons;
	struct gpio_button_data data[3];
};
struct device { bool may_wakeup; struct gpio_keys_drvdata *ddata; };

static int fail_open;
static unsigned int disable_count;
static unsigned int open_count;
static unsigned int report_count;
static unsigned int sync_count;
static unsigned int lock_count;
static unsigned int unlock_count;

static void reset_hooks(void)
{
	fail_open = 0;
	disable_count = 0;
	open_count = 0;
	report_count = 0;
	sync_count = 0;
	lock_count = 0;
	unlock_count = 0;
}

static struct gpio_keys_drvdata *dev_get_drvdata(struct device *dev)
{
	return dev->ddata;
}

static bool device_may_wakeup(struct device *dev)
{
	return dev->may_wakeup;
}

static struct irq_data *irq_get_irq_data(int irq,
					 struct gpio_keys_drvdata *ddata)
{
	unsigned int index;

	for (index = 0; index < ddata->nbuttons; index++)
		if (ddata->data[index].irq == irq)
			return &ddata->data[index].irq_data;
	return NULL;
}

static bool irqd_is_wakeup_set(struct irq_data *data)
{
	return data && data->wake_enabled;
}

static void gpio_keys_button_disable_wakeup(struct gpio_button_data *bdata)
{
	bdata->irq_data.wake_enabled = false;
	disable_count++;
}

static void mutex_lock(struct input_dev *input)
{
	input->lock_depth++;
	lock_count++;
}

static void mutex_unlock(struct input_dev *input)
{
	input->lock_depth--;
	unlock_count++;
}

static int gpio_keys_open(struct input_dev *input)
{
	(void)input;
	open_count++;
	return fail_open;
}

static void gpio_keys_gpio_report_event(struct gpio_button_data *bdata)
{
	(void)bdata;
	report_count++;
}

static void input_event(struct input_dev *input, int type, int code, int value)
{
	(void)input;
	(void)type;
	(void)code;
	(void)value;
	sync_count++;
}

static void gpio_keys_disable_wakeup(struct gpio_keys_drvdata *ddata)
{
	unsigned int index;

	for (index = 0; index < ddata->nbuttons; index++) {
		struct gpio_button_data *bdata = &ddata->data[index];

		bdata->suspended = false;
		if (irqd_is_wakeup_set(irq_get_irq_data(bdata->irq, ddata)))
			gpio_keys_button_disable_wakeup(bdata);
	}
}

static void gpio_keys_report_state(struct gpio_keys_drvdata *ddata)
{
	unsigned int index;

	for (index = 0; index < ddata->nbuttons; index++)
		if (ddata->data[index].gpiod)
			gpio_keys_gpio_report_event(&ddata->data[index]);
	input_event(ddata->input, 0, 0, 0);
}

static int gpio_keys_resume(struct device *dev)
{
	struct gpio_keys_drvdata *ddata = dev_get_drvdata(dev);
	struct input_dev *input = ddata->input;
	int error;

	if (device_may_wakeup(dev)) {
		gpio_keys_disable_wakeup(ddata);
	} else {
		mutex_lock(input);
		if (input->users) {
			error = gpio_keys_open(input);
			if (error) {
				mutex_unlock(input);
				return error;
			}
		}
		mutex_unlock(input);
	}

	gpio_keys_report_state(ddata);
	return 0;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void init_device(struct device *dev, struct gpio_keys_drvdata *ddata,
			struct input_dev *input, bool may_wakeup, unsigned int users)
{
	memset(ddata, 0, sizeof(*ddata));
	memset(input, 0, sizeof(*input));
	input->users = users;
	dev->may_wakeup = may_wakeup;
	dev->ddata = ddata;
	ddata->input = input;
}

static bool test_wakeup_disables_sources_and_reports(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;
	struct input_dev input;

	init_device(&dev, &ddata, &input, true, 0);
	ddata.nbuttons = 3;
	ddata.data[0] = (struct gpio_button_data){ .irq = 10, .gpiod = true,
		.suspended = true, .irq_data = { .wake_enabled = true } };
	ddata.data[1] = (struct gpio_button_data){ .irq = 11, .gpiod = false,
		.suspended = true };
	ddata.data[2] = (struct gpio_button_data){ .irq = 12, .gpiod = true,
		.suspended = true, .irq_data = { .wake_enabled = true } };
	reset_hooks();
	REQUIRE(gpio_keys_resume(&dev) == 0);
	REQUIRE(disable_count == 2 && report_count == 2 && sync_count == 1);
	REQUIRE(!ddata.data[0].suspended && !ddata.data[1].suspended &&
		!ddata.data[2].suspended);
	REQUIRE(!ddata.data[0].irq_data.wake_enabled &&
		!ddata.data[2].irq_data.wake_enabled);
	REQUIRE(lock_count == 0 && unlock_count == 0 && open_count == 0);
	return true;
}

static bool test_wakeup_without_sources_still_reports(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;
	struct input_dev input;

	init_device(&dev, &ddata, &input, true, 3);
	ddata.nbuttons = 2;
	ddata.data[0].irq = 20;
	ddata.data[1].irq = 21;
	reset_hooks();
	REQUIRE(gpio_keys_resume(&dev) == 0);
	REQUIRE(disable_count == 0 && report_count == 0 && sync_count == 1);
	REQUIRE(lock_count == 0 && unlock_count == 0 && open_count == 0);
	return true;
}

static bool test_non_wakeup_idle_input(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;
	struct input_dev input;

	init_device(&dev, &ddata, &input, false, 0);
	reset_hooks();
	REQUIRE(gpio_keys_resume(&dev) == 0);
	REQUIRE(lock_count == 1 && unlock_count == 1 && open_count == 0);
	REQUIRE(input.lock_depth == 0 && sync_count == 1);
	return true;
}

static bool test_non_wakeup_reopens_active_input(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;
	struct input_dev input;

	init_device(&dev, &ddata, &input, false, 1);
	reset_hooks();
	REQUIRE(gpio_keys_resume(&dev) == 0);
	REQUIRE(lock_count == 1 && unlock_count == 1 && open_count == 1);
	REQUIRE(input.lock_depth == 0 && sync_count == 1);
	return true;
}

static bool test_open_failure_unlocks_and_skips_report(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;
	struct input_dev input;

	init_device(&dev, &ddata, &input, false, 1);
	reset_hooks();
	fail_open = -13;
	REQUIRE(gpio_keys_resume(&dev) == -13);
	REQUIRE(lock_count == 1 && unlock_count == 1 && open_count == 1);
	REQUIRE(input.lock_depth == 0 && report_count == 0 && sync_count == 0);
	return true;
}

static bool test_empty_button_set_syncs_once(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;
	struct input_dev input;

	init_device(&dev, &ddata, &input, true, 0);
	reset_hooks();
	REQUIRE(gpio_keys_resume(&dev) == 0);
	REQUIRE(disable_count == 0 && report_count == 0 && sync_count == 1);
	return true;
}

int main(void)
{
	if (!test_wakeup_disables_sources_and_reports() ||
	    !test_wakeup_without_sources_still_reports() ||
	    !test_non_wakeup_idle_input() ||
	    !test_non_wakeup_reopens_active_input() ||
	    !test_open_failure_unlocks_and_skips_report() ||
	    !test_empty_button_set_syncs_once())
		return 1;

	puts("PASS gpio_keys_resume host tests (6 scenarios)");
	return 0;
}
