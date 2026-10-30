#include <errno.h>
#include <stdbool.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

struct device { unsigned char bytes[32]; };
struct platform_device { unsigned char prefix[16]; struct device dev; };

static int suspend_return;
static unsigned int suspend_calls;
static struct device *last_suspended_device;
static unsigned int error_calls;
static const struct device *last_error_device;
static char last_error_message[64];

static int gpio_keys_suspend(struct device *dev)
{
	suspend_calls++;
	last_suspended_device = dev;
	return suspend_return;
}

static void dev_err(const struct device *dev, const char *format, ...)
{
	va_list args;

	error_calls++;
	last_error_device = dev;
	va_start(args, format);
	vsnprintf(last_error_message, sizeof(last_error_message), format, args);
	va_end(args);
}

static void gpio_keys_shutdown(struct platform_device *pdev)
{
	int ret;

	ret = gpio_keys_suspend(&pdev->dev);
	if (ret)
		dev_err(&pdev->dev, "failed to shutdown\n");
}

static int failures;

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void reset_observations(int ret)
{
	suspend_return = ret;
	suspend_calls = 0;
	last_suspended_device = NULL;
	error_calls = 0;
	last_error_device = NULL;
	last_error_message[0] = '\0';
}

static void test_success_forwards_device_without_error(void)
{
	struct platform_device pdev = { .prefix = {0}, .dev = {0} };

	reset_observations(0);
	gpio_keys_shutdown(&pdev);
	expect_true("suspend called once on success", suspend_calls == 1);
	expect_true("device pointer forwarded on success",
		    last_suspended_device == &pdev.dev);
	expect_true("no error on success", error_calls == 0);
}

static void test_failure_logs_on_same_device(void)
{
	struct platform_device pdev = { .prefix = {0}, .dev = {0} };

	reset_observations(-EIO);
	gpio_keys_shutdown(&pdev);
	expect_true("suspend called once on failure", suspend_calls == 1);
	expect_true("device pointer forwarded on failure",
		    last_suspended_device == &pdev.dev);
	expect_true("one error on failure", error_calls == 1);
	expect_true("error uses same device", last_error_device == &pdev.dev);
	expect_true("exact shutdown error", strcmp(last_error_message,
						"failed to shutdown\n") == 0);
}

int main(void)
{
	test_success_forwards_device_without_error();
	test_failure_logs_on_same_device();
	if (failures)
		return 1;
	puts("PASS gpio_keys_shutdown host tests (2 scenarios)");
	return 0;
}
