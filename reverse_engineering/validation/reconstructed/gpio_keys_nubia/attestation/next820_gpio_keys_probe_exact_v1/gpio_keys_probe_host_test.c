#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum {
	ERR_ENODEV = 19,
	ERR_ENOMEM = 12,
	ERR_EINVAL = 22,
	ERR_EIO = 5,
};

struct gpio_keys_button {
	bool code_valid;
	bool wakeup;
};

struct gpio_keys_platform_data {
	unsigned int nbuttons;
	struct gpio_keys_button *buttons;
};

struct probe_device {
	bool has_platform_data;
	unsigned int child_count;
	bool child_code_valid;
	bool fail_pdata_alloc;
	bool fail_state_alloc;
	bool fail_keymap_alloc;
	bool fail_input_alloc;
	int setup_error_index;
	int register_error;
	unsigned int pdata_allocations;
	unsigned int state_allocations;
	unsigned int keymap_allocations;
	unsigned int input_allocations;
	unsigned int registered;
	bool wakeup_capable;
	bool wakeup_enabled;
};

static int gpio_keys_probe_model(struct probe_device *dev,
				 struct gpio_keys_platform_data *platform_data)
{
	struct gpio_keys_platform_data generated = { 0 };
	struct gpio_keys_button *generated_buttons = NULL;
	unsigned int index;
	bool wakeup = false;
	int error;

	if (!platform_data) {
		if (dev->child_count == 0)
			return -ERR_ENODEV;
		if (dev->fail_pdata_alloc)
			return -ERR_ENOMEM;

		generated_buttons = calloc(dev->child_count,
					   sizeof(*generated_buttons));
		if (!generated_buttons)
			return -ERR_ENOMEM;
		dev->pdata_allocations++;
		generated.nbuttons = dev->child_count;
		generated.buttons = generated_buttons;
		for (index = 0; index < generated.nbuttons; index++) {
			generated.buttons[index].code_valid = dev->child_code_valid;
			if (!generated.buttons[index].code_valid) {
				free(generated_buttons);
				return -ERR_EINVAL;
			}
		}
		platform_data = &generated;
	}

	if (dev->fail_state_alloc) {
		free(generated_buttons);
		return -ERR_ENOMEM;
	}
	dev->state_allocations++;
	if (dev->fail_keymap_alloc) {
		free(generated_buttons);
		return -ERR_ENOMEM;
	}
	dev->keymap_allocations++;
	if (dev->fail_input_alloc) {
		free(generated_buttons);
		return -ERR_ENOMEM;
	}
	dev->input_allocations++;

	for (index = 0; index < platform_data->nbuttons; index++) {
		if (dev->setup_error_index == (int)index) {
			free(generated_buttons);
			return -ERR_EIO;
		}
		if (!platform_data->buttons[index].code_valid) {
			free(generated_buttons);
			return -ERR_EINVAL;
		}
		wakeup |= platform_data->buttons[index].wakeup;
	}

	error = dev->register_error;
	if (error) {
		free(generated_buttons);
		return error;
	}
	dev->registered++;
	dev->wakeup_capable = wakeup;
	dev->wakeup_enabled = wakeup;
	free(generated_buttons);
	return 0;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_device(struct probe_device *dev)
{
	memset(dev, 0, sizeof(*dev));
	dev->child_code_valid = true;
	dev->setup_error_index = -1;
}

static bool test_dt_without_children(void)
{
	struct probe_device dev;

	reset_device(&dev);
	REQUIRE(gpio_keys_probe_model(&dev, NULL) == -ERR_ENODEV);
	REQUIRE(dev.pdata_allocations == 0 && dev.registered == 0);
	return true;
}

static bool test_dt_without_keycode(void)
{
	struct probe_device dev;

	reset_device(&dev);
	dev.child_count = 1;
	dev.child_code_valid = false;
	REQUIRE(gpio_keys_probe_model(&dev, NULL) == -ERR_EINVAL);
	REQUIRE(dev.pdata_allocations == 1 && dev.state_allocations == 0);
	REQUIRE(dev.registered == 0);
	return true;
}

static bool test_state_allocation_failure(void)
{
	struct probe_device dev;
	struct gpio_keys_platform_data pdata = { 0 };

	reset_device(&dev);
	dev.fail_state_alloc = true;
	REQUIRE(gpio_keys_probe_model(&dev, &pdata) == -ERR_ENOMEM);
	REQUIRE(dev.state_allocations == 0 && dev.keymap_allocations == 0);
	REQUIRE(dev.registered == 0);
	return true;
}

static bool test_setup_failure_does_not_register(void)
{
	struct probe_device dev;
	struct gpio_keys_button buttons[2] = {
		{ .code_valid = true, .wakeup = false },
		{ .code_valid = true, .wakeup = true },
	};
	struct gpio_keys_platform_data pdata = {
		.nbuttons = 2,
		.buttons = buttons,
	};

	reset_device(&dev);
	dev.setup_error_index = 1;
	REQUIRE(gpio_keys_probe_model(&dev, &pdata) == -ERR_EIO);
	REQUIRE(dev.state_allocations == 1 && dev.input_allocations == 1);
	REQUIRE(dev.registered == 0 && !dev.wakeup_capable);
	return true;
}

static bool test_register_failure_does_not_enable_wakeup(void)
{
	struct probe_device dev;
	struct gpio_keys_button button = { .code_valid = true, .wakeup = true };
	struct gpio_keys_platform_data pdata = { .nbuttons = 1, .buttons = &button };

	reset_device(&dev);
	dev.register_error = -ERR_EIO;
	REQUIRE(gpio_keys_probe_model(&dev, &pdata) == -ERR_EIO);
	REQUIRE(dev.registered == 0 && !dev.wakeup_capable && !dev.wakeup_enabled);
	return true;
}

static bool test_success_enables_device_wakeup(void)
{
	struct probe_device dev;
	struct gpio_keys_button buttons[2] = {
		{ .code_valid = true, .wakeup = false },
		{ .code_valid = true, .wakeup = true },
	};
	struct gpio_keys_platform_data pdata = {
		.nbuttons = 2,
		.buttons = buttons,
	};

	reset_device(&dev);
	REQUIRE(gpio_keys_probe_model(&dev, &pdata) == 0);
	REQUIRE(dev.state_allocations == 1 && dev.keymap_allocations == 1);
	REQUIRE(dev.input_allocations == 1 && dev.registered == 1);
	REQUIRE(dev.wakeup_capable && dev.wakeup_enabled);
	return true;
}

int main(void)
{
	unsigned int passed = 0;

	passed += test_dt_without_children();
	passed += test_dt_without_keycode();
	passed += test_state_allocation_failure();
	passed += test_setup_failure_does_not_register();
	passed += test_register_failure_does_not_enable_wakeup();
	passed += test_success_enables_device_wakeup();
	if (passed != 6)
		return EXIT_FAILURE;
	puts("PASS gpio_keys probe host tests (6 scenarios)");
	return EXIT_SUCCESS;
}
