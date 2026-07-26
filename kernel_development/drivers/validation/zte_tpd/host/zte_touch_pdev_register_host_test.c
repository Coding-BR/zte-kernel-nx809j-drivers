#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ENOMEM 12
#define PLATFORM_DEVID_NONE (-1)

typedef uint8_t u8;
typedef long long __int64;

struct device {
	void (*release)(struct device *dev);
};

struct platform_device {
	struct device dev;
};

long long tpd_cdev;
static const char stock_log[] = "\0015tpd: %s";
static const char stock_alloc_failure_log[] =
	"\0015tpd: %s failed to allocate platform device";
static const char stock_add_failure_log[] =
	"\0015tpd: %s failed to add platform device ret=%d";

static struct platform_device fixture_pdev;
static struct platform_device *alloc_result;
static int add_result;
static unsigned int alloc_calls;
static unsigned int add_calls;
static unsigned int release_calls;
static unsigned int log_calls;
static struct device *released_device;

static void fixture_release(struct device *dev)
{
	release_calls++;
	released_device = dev;
}

static int printk(const char *format, ...)
{
	va_list args;
	const char *function;

	va_start(args, format);
	function = va_arg(args, const char *);
	if (strcmp(function, "zte_touch_pdev_register") != 0) {
		va_end(args);
		return -1;
	}
	if (strcmp(format, stock_add_failure_log) == 0 &&
	    va_arg(args, int) != add_result) {
		va_end(args);
		return -1;
	}
	va_end(args);
	if (strcmp(format, stock_log) != 0 &&
	    strcmp(format, stock_alloc_failure_log) != 0 &&
	    strcmp(format, stock_add_failure_log) != 0)
		return -1;
	log_calls++;
	return 0;
}

static struct platform_device *platform_device_alloc(const char *name, int id)
{
	if (strcmp(name, "zte_touch") != 0 || id != PLATFORM_DEVID_NONE)
		return NULL;
	alloc_calls++;
	return alloc_result;
}

static int platform_device_add(struct platform_device *pdev)
{
	if (pdev != alloc_result)
		return -1;
	add_calls++;
	return add_result;
}

static void tpd_report_uevent(u8 value)
{
	(void)value;
}

#include "../../../reconstructed/zte_tpd/zte_touch_pdev_register.c"

static int failures;

static struct platform_device **pdev_slot(uint8_t *cdev)
{
	return (struct platform_device **)(void *)(cdev + 0xdd0);
}

static void (**callback_slot(uint8_t *cdev))(u8)
{
	return (void (**)(u8))(void *)(cdev + 0xea0);
}

static void expect_int(const char *name, int actual, int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		failures++;
	}
}

static void expect_ptr(const char *name, const void *actual, const void *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name, actual, expected);
		failures++;
	}
}

static void reset_fixture(uint8_t *cdev)
{
	memset(cdev, 0, 0xea8);
	memset(&fixture_pdev, 0, sizeof(fixture_pdev));
	fixture_pdev.dev.release = fixture_release;
	alloc_result = &fixture_pdev;
	add_result = 0;
	alloc_calls = 0;
	add_calls = 0;
	release_calls = 0;
	log_calls = 0;
	released_device = NULL;
	tpd_cdev = (long long)(unsigned long)cdev;
}

static void test_success(void)
{
	uint8_t cdev[0xea8];

	reset_fixture(cdev);
	expect_int("success return", zte_touch_pdev_register(), 0);
	expect_int("success alloc calls", (int)alloc_calls, 1);
	expect_int("success add calls", (int)add_calls, 1);
	expect_int("success release calls", (int)release_calls, 0);
	expect_int("success log calls", (int)log_calls, 1);
	expect_ptr("success pdev slot", *pdev_slot(cdev), &fixture_pdev);
	expect_ptr("success callback", (const void *)*callback_slot(cdev),
		   (const void *)tpd_report_uevent);
}

static void test_allocation_failure(void)
{
	uint8_t cdev[0xea8];

	reset_fixture(cdev);
	alloc_result = NULL;
	*callback_slot(cdev) = tpd_report_uevent;
	expect_int("alloc failure return", zte_touch_pdev_register(), -ENOMEM);
	expect_int("alloc failure alloc calls", (int)alloc_calls, 1);
	expect_int("alloc failure add calls", (int)add_calls, 0);
	expect_int("alloc failure release calls", (int)release_calls, 0);
	expect_int("alloc failure log calls", (int)log_calls, 2);
	expect_ptr("alloc failure pdev slot", *pdev_slot(cdev), NULL);
	expect_ptr("alloc failure callback", (const void *)*callback_slot(cdev), NULL);
}

static void test_add_failure(void)
{
	uint8_t cdev[0xea8];

	reset_fixture(cdev);
	add_result = -17;
	*callback_slot(cdev) = tpd_report_uevent;
	expect_int("add failure return", zte_touch_pdev_register(), -17);
	expect_int("add failure alloc calls", (int)alloc_calls, 1);
	expect_int("add failure add calls", (int)add_calls, 1);
	expect_int("add failure release calls", (int)release_calls, 1);
	expect_int("add failure log calls", (int)log_calls, 2);
	expect_ptr("add failure pdev slot", *pdev_slot(cdev), &fixture_pdev);
	expect_ptr("add failure release argument", released_device, &fixture_pdev.dev);
	expect_ptr("add failure callback", (const void *)*callback_slot(cdev), NULL);
}

int main(void)
{
	test_success();
	test_allocation_failure();
	test_add_failure();

	if (failures != 0)
		return 1;
	puts("PASS zte_touch_pdev_register host tests (3 cases)");
	return 0;
}
