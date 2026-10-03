#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef unsigned char u8;

struct device {
	void (*release)(struct device *dev);
};

struct platform_device {
	struct device dev;
};

static unsigned char cdev_storage[0xf00];
long long tpd_cdev;

static unsigned int alloc_calls;
static unsigned int add_calls;
static unsigned int printk_calls;
static unsigned int release_calls;
static const char *last_alloc_name;
static int last_alloc_id;
static struct platform_device *last_allocated;
static struct platform_device *last_added;
static struct device *last_released;
static int add_result;
static unsigned int failures;

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual,
			expected);
		failures++;
	}
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void reset_trace(void)
{
	memset(cdev_storage, 0, sizeof(cdev_storage));
	tpd_cdev = (long long)(uintptr_t)cdev_storage;
	alloc_calls = 0;
	add_calls = 0;
	printk_calls = 0;
	release_calls = 0;
	last_alloc_name = NULL;
	last_alloc_id = 0;
	last_allocated = NULL;
	last_added = NULL;
	last_released = NULL;
	add_result = 0;
}

static void test_release(struct device *dev)
{
	release_calls++;
	last_released = dev;
	free((struct platform_device *)dev);
}

static struct platform_device *test_platform_device_alloc(const char *name,
								int id)
{
	alloc_calls++;
	last_alloc_name = name;
	last_alloc_id = id;
	if (!last_allocated)
		return NULL;
	last_allocated->dev.release = test_release;
	return last_allocated;
}

static int test_platform_device_add(struct platform_device *pdev)
{
	add_calls++;
	last_added = pdev;
	return add_result;
}

static int test_printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

#define ENOMEM 12
#define PLATFORM_DEVID_NONE (-1)
static void tpd_report_uevent(u8 value)
{
	(void)value;
}

#define platform_device_alloc test_platform_device_alloc
#define platform_device_add test_platform_device_add
#define printk test_printk
#include "../../../reconstructed/zte_tpd/zte_touch_pdev_register.c"
#undef platform_device_alloc
#undef platform_device_add
#undef printk

static void expect_common_log_and_alloc(unsigned int expected_printk_calls)
{
	expect_int("alloc calls", alloc_calls, 1);
	expect_int("alloc id", last_alloc_id, PLATFORM_DEVID_NONE);
	expect_true("alloc name", last_alloc_name &&
			strcmp(last_alloc_name, "zte_touch") == 0);
	expect_int("printk calls", printk_calls, expected_printk_calls);
}

static void test_allocation_failure(void)
{
	int ret;

	reset_trace();
	last_allocated = NULL;
	ret = zte_touch_pdev_register();
	expect_common_log_and_alloc(2);
	expect_int("allocation failure return", ret, -ENOMEM);
	expect_true("allocation failure pdev slot is NULL",
			*(struct platform_device **)(cdev_storage + 0xdd0) == NULL);
	expect_true("allocation failure callback is NULL",
			*(void (**)(u8))(cdev_storage + 0xea0) == NULL);
	expect_int("allocation failure add calls", add_calls, 0);
}

static void test_add_failure(void)
{
	int ret;
	struct platform_device *pdev;
	struct device *expected_dev;

	reset_trace();
	pdev = calloc(1, sizeof(*pdev));
	expect_true("test device allocation", pdev != NULL);
	expected_dev = &pdev->dev;
	last_allocated = pdev;
	add_result = -7;
	ret = zte_touch_pdev_register();
	expect_common_log_and_alloc(2);
	expect_int("add failure return", ret, -7);
	expect_int("add calls", add_calls, 1);
	expect_true("added device identity", last_added == pdev);
	expect_int("release calls", release_calls, 1);
	expect_true("release receives device member", last_released == expected_dev);
	expect_true("add failure callback is NULL",
			*(void (**)(u8))(cdev_storage + 0xea0) == NULL);
}

static void test_zero_add_success(void)
{
	int ret;
	struct platform_device *pdev;

	reset_trace();
	pdev = calloc(1, sizeof(*pdev));
	expect_true("test device allocation", pdev != NULL);
	last_allocated = pdev;
	add_result = 0;
	ret = zte_touch_pdev_register();
	expect_common_log_and_alloc(1);
	expect_int("zero add return", ret, 0);
	expect_int("zero add calls", add_calls, 1);
	expect_int("zero add release calls", release_calls, 0);
	expect_true("success callback", *(void (**)(u8))(cdev_storage + 0xea0) ==
			tpd_report_uevent);
	free(pdev);
}

static void test_positive_add_normalizes_to_zero(void)
{
	int ret;
	struct platform_device *pdev;

	reset_trace();
	pdev = calloc(1, sizeof(*pdev));
	expect_true("test device allocation", pdev != NULL);
	last_allocated = pdev;
	add_result = 7;
	ret = zte_touch_pdev_register();
	expect_common_log_and_alloc(1);
	expect_int("positive add return", ret, 0);
	expect_int("positive add calls", add_calls, 1);
	expect_int("positive add release calls", release_calls, 0);
	expect_true("positive success callback",
			*(void (**)(u8))(cdev_storage + 0xea0) == tpd_report_uevent);
	free(pdev);
}

int main(void)
{
	test_allocation_failure();
	test_add_failure();
	test_zero_add_success();
	test_positive_add_normalizes_to_zero();
	if (failures != 0)
		return 1;
	puts("PASS zte_touch_pdev_register host tests (4 cases)");
	return 0;
}
