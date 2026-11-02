#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct platform_device;
struct device;

static unsigned char cdev_storage[0xf00];
long long tpd_cdev;
void *off_338;

static unsigned int off_338_calls;
static long long off_338_last_arg;
static unsigned int unregister_calls;
static struct platform_device *unregister_last;
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
	off_338_calls = 0;
	off_338_last_arg = 0;
	unregister_calls = 0;
	unregister_last = (struct platform_device *)(uintptr_t)0x1;
}

static void test_off_338(struct device *arg)
{
	off_338_calls++;
	off_338_last_arg = (long long)(uintptr_t)arg;
}

static void test_platform_device_unregister(struct platform_device *pdev)
{
	unregister_calls++;
	unregister_last = pdev;
}

#define __int64 int64_t
#define _QWORD uint64_t
#define platform_device_unregister test_platform_device_unregister
#include "../../../reconstructed/zte_tpd/zte_touch_pdev_unregister.c"
#undef platform_device_unregister
#undef _QWORD
#undef __int64

static void test_nonzero_slot_is_noop(void)
{
	reset_trace();
	off_338 = (void *)test_off_338;
	*(uintptr_t *)(cdev_storage + 0xdd0) = (uintptr_t)0x1234;

	zte_touch_pdev_unregister();

	expect_int("nonzero guard callback calls", off_338_calls, 0);
	expect_int("nonzero unregister calls", unregister_calls, 0);
	expect_true("nonzero slot preserved",
		*(uintptr_t *)(cdev_storage + 0xdd0) == (uintptr_t)0x1234);
}

static void test_zero_slot_calls_guard_and_unregisters_null(void)
{
	reset_trace();
	off_338 = (void *)test_off_338;

	zte_touch_pdev_unregister();

	expect_int("zero guard callback calls", off_338_calls, 1);
	expect_int("zero guard callback argument", off_338_last_arg, 16);
	expect_int("zero unregister calls", unregister_calls, 1);
	expect_true("zero unregister argument is NULL", unregister_last == NULL);
}

static void test_zero_slot_is_not_cleared(void)
{
	reset_trace();
	off_338 = (void *)test_off_338;

	zte_touch_pdev_unregister();
	zte_touch_pdev_unregister();

	expect_int("repeated zero guard callback calls", off_338_calls, 2);
	expect_int("repeated zero unregister calls", unregister_calls, 2);
	expect_true("repeated zero slot remains NULL",
		*(uintptr_t *)(cdev_storage + 0xdd0) == 0);
}

static void test_guard_pointer_is_used_each_call(void)
{
	reset_trace();
	off_338 = (void *)test_off_338;
	*(uintptr_t *)(cdev_storage + 0xdd0) = (uintptr_t)0x42;
	zte_touch_pdev_unregister();
	*(uintptr_t *)(cdev_storage + 0xdd0) = 0;
	zte_touch_pdev_unregister();

	expect_int("late guard callback calls", off_338_calls, 1);
	expect_int("late unregister calls", unregister_calls, 1);
}

int main(void)
{
	test_nonzero_slot_is_noop();
	test_zero_slot_calls_guard_and_unregisters_null();
	test_zero_slot_is_not_cleared();
	test_guard_pointer_is_used_each_call();
	if (failures != 0)
		return 1;
	puts("PASS zte_touch_pdev_unregister host tests (4 cases)");
	return 0;
}
