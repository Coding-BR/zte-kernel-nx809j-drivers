#include <stdbool.h>
#include <stdio.h>
#include <string.h>

struct gpio_button_data {
	int irq;
	bool active;
	bool wake_trigger;
	bool suspended;
};

struct input_dev {
	unsigned int users;
	unsigned int lock_depth;
	unsigned int close_count;
};

struct gpio_keys_drvdata {
	struct input_dev input;
	unsigned int nbuttons;
	struct gpio_button_data buttons[3];
};

struct device {
	bool may_wakeup;
	struct gpio_keys_drvdata *ddata;
};

static int fail_wake_irq;
static int fail_type_irq;
static unsigned int wake_enable_count;
static unsigned int wake_disable_count;
static unsigned int type_count;
static unsigned int error_count;
static unsigned int warning_count;
static char trace[128];
static unsigned int trace_count;

static void reset_hooks(void)
{
	fail_wake_irq = 0;
	fail_type_irq = 0;
	wake_enable_count = 0;
	wake_disable_count = 0;
	type_count = 0;
	error_count = 0;
	warning_count = 0;
	trace_count = 0;
	trace[0] = '\0';
}

static void record_trace(char value)
{
	if (trace_count + 1 < sizeof(trace))
		trace[trace_count++] = value;
	trace[trace_count] = '\0';
}

static int irq_set_irq_wake(int irq, int enable)
{
	record_trace(enable ? 'E' : 'D');
	if (enable)
		wake_enable_count++;
	else
		wake_disable_count++;
	return enable && irq == fail_wake_irq ? -7 : 0;
}

static int irq_set_irq_type(int irq, unsigned int type)
{
	(void)type;
	type_count++;
	record_trace('T');
	return irq == fail_type_irq ? -9 : 0;
}

static void dev_err(const char *message)
{
	(void)message;
	error_count++;
}

static void dev_warn(const char *message)
{
	(void)message;
	warning_count++;
}

static void mutex_lock(struct input_dev *input)
{
	input->lock_depth++;
	record_trace('L');
}

static void mutex_unlock(struct input_dev *input)
{
	input->lock_depth--;
	record_trace('U');
}

static void gpio_keys_close(struct input_dev *input)
{
	input->close_count++;
	record_trace('C');
}

static int gpio_keys_enable_wakeup(struct gpio_keys_drvdata *ddata)
{
	unsigned int index;
	int error = 0;

	for (index = 0; index < ddata->nbuttons; index++) {
		struct gpio_button_data *button = &ddata->buttons[index];

		if (!button->active)
			goto mark_suspended;

		error = irq_set_irq_wake(button->irq, 1);
		if (error) {
			dev_err("failed to configure IRQ as wakeup source");
			goto rollback;
		}
		if (button->wake_trigger) {
			error = irq_set_irq_type(button->irq, 3);
			if (error) {
				dev_err("failed to set wakeup trigger");
				(void)irq_set_irq_wake(button->irq, 0);
				goto rollback;
			}
		}

mark_suspended:
		button->suspended = true;
	}
	return 0;

rollback:
	for (;;) {
		struct gpio_button_data *button = &ddata->buttons[index];

		if (button->active) {
			if (button->wake_trigger &&
			    irq_set_irq_type(button->irq, 3))
				dev_warn("failed to restore interrupt trigger");
			if (irq_set_irq_wake(button->irq, 0))
				dev_warn("failed to disable IRQ as wake source");
		}
		button->suspended = false;
		if (index == 0)
			break;
		index--;
	}
	return error;
}

static int gpio_keys_suspend(struct device *dev)
{
	struct gpio_keys_drvdata *ddata = dev->ddata;
	struct input_dev *input = &ddata->input;

	if (dev->may_wakeup)
		return gpio_keys_enable_wakeup(ddata);

	mutex_lock(input);
	if (input->users)
		gpio_keys_close(input);
	mutex_unlock(input);
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
			bool may_wakeup, unsigned int users)
{
	memset(ddata, 0, sizeof(*ddata));
	ddata->input.users = users;
	dev->may_wakeup = may_wakeup;
	dev->ddata = ddata;
}

static bool test_non_wakeup_closes_active_input(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;

	init_device(&dev, &ddata, false, 1);
	reset_hooks();
	REQUIRE(gpio_keys_suspend(&dev) == 0);
	REQUIRE(ddata.input.lock_depth == 0 && ddata.input.close_count == 1);
	REQUIRE(strcmp(trace, "LCU") == 0);
	return true;
}

static bool test_non_wakeup_idle_input(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;

	init_device(&dev, &ddata, false, 0);
	reset_hooks();
	REQUIRE(gpio_keys_suspend(&dev) == 0);
	REQUIRE(ddata.input.lock_depth == 0 && ddata.input.close_count == 0);
	REQUIRE(strcmp(trace, "LU") == 0);
	return true;
}

static bool test_wakeup_success_marks_all_buttons(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;

	init_device(&dev, &ddata, true, 0);
	ddata.nbuttons = 3;
	ddata.buttons[0] = (struct gpio_button_data){ .irq = 10, .active = true,
		.wake_trigger = true };
	ddata.buttons[1] = (struct gpio_button_data){ .irq = 11 };
	ddata.buttons[2] = (struct gpio_button_data){ .irq = 12, .active = true };
	reset_hooks();
	REQUIRE(gpio_keys_suspend(&dev) == 0);
	REQUIRE(ddata.buttons[0].suspended && ddata.buttons[1].suspended &&
		ddata.buttons[2].suspended);
	REQUIRE(wake_enable_count == 2 && type_count == 1 && error_count == 0);
	REQUIRE(strcmp(trace, "ETE") == 0);
	return true;
}

static bool test_wakeup_enable_failure_rolls_back(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;

	init_device(&dev, &ddata, true, 0);
	ddata.nbuttons = 1;
	ddata.buttons[0] = (struct gpio_button_data){ .irq = 20, .active = true };
	reset_hooks();
	fail_wake_irq = 20;
	REQUIRE(gpio_keys_suspend(&dev) == -7);
	REQUIRE(!ddata.buttons[0].suspended && error_count == 1);
	REQUIRE(wake_enable_count == 1 && wake_disable_count == 1);
	REQUIRE(strcmp(trace, "ED") == 0);
	return true;
}

static bool test_wakeup_trigger_failure_rolls_back(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;

	init_device(&dev, &ddata, true, 0);
	ddata.nbuttons = 2;
	ddata.buttons[0] = (struct gpio_button_data){ .irq = 30, .active = true };
	ddata.buttons[1] = (struct gpio_button_data){ .irq = 31, .active = true,
		.wake_trigger = true };
	reset_hooks();
	fail_type_irq = 31;
	REQUIRE(gpio_keys_suspend(&dev) == -9);
	REQUIRE(!ddata.buttons[0].suspended && !ddata.buttons[1].suspended);
	REQUIRE(wake_enable_count == 2 && wake_disable_count == 3);
	REQUIRE(type_count == 2 && error_count == 1);
	REQUIRE(strcmp(trace, "EETDTDD") == 0);
	return true;
}

static bool test_second_button_failure_clears_previous_state(void)
{
	struct device dev;
	struct gpio_keys_drvdata ddata;

	init_device(&dev, &ddata, true, 0);
	ddata.nbuttons = 2;
	ddata.buttons[0] = (struct gpio_button_data){ .irq = 40, .active = true,
		.wake_trigger = true };
	ddata.buttons[1] = (struct gpio_button_data){ .irq = 41, .active = true };
	reset_hooks();
	fail_wake_irq = 41;
	REQUIRE(gpio_keys_suspend(&dev) == -7);
	REQUIRE(!ddata.buttons[0].suspended && !ddata.buttons[1].suspended);
	REQUIRE(wake_enable_count == 2 && wake_disable_count == 2);
	REQUIRE(type_count == 2 && error_count == 1);
	REQUIRE(strcmp(trace, "ETEDTD") == 0);
	return true;
}

int main(void)
{
	if (!test_non_wakeup_closes_active_input() ||
	    !test_non_wakeup_idle_input() ||
	    !test_wakeup_success_marks_all_buttons() ||
	    !test_wakeup_enable_failure_rolls_back() ||
	    !test_wakeup_trigger_failure_rolls_back() ||
	    !test_second_button_failure_clears_previous_state())
		return 1;

	puts("PASS gpio_keys_suspend host tests (6 scenarios)");
	return 0;
}
