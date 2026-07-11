/* SPDX-License-Identifier: GPL-2.0-only */

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint32_t u32;
typedef uint64_t u64;

#define __user
#define ZTE_IR_IOC_SET_CARRIER        0x40046931U
#define ZTE_IR_SPI_WORDS_PER_CARRIER 16U
#define ZTE_IR_DT_MAX_SPI_HZ         5000000U
#define pr_debug(...)                ((void)0)

struct fake_lock {
	int held;
};

struct zte_ir_runtime {
	struct {
		u32 speed_hz;
		struct fake_lock buf_lock;
	} stock;
	int removed;
};

struct file {
	void *private_data;
};

static unsigned int get_user_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int lock_failures;
static int force_get_user_failure;

static int fake_get_user(int *destination, const int *source)
{
	get_user_calls++;
	if (force_get_user_failure || !source)
		return -EFAULT;
	*destination = *source;
	return 0;
}

static void fake_mutex_lock(struct fake_lock *lock)
{
	mutex_lock_calls++;
	if (lock->held)
		lock_failures++;
	lock->held = 1;
}

static void fake_mutex_unlock(struct fake_lock *lock)
{
	mutex_unlock_calls++;
	if (!lock->held)
		lock_failures++;
	lock->held = 0;
}

#define get_user(value, pointer) fake_get_user(&(value), (pointer))
#define mutex_lock(lock) fake_mutex_lock(lock)
#define mutex_unlock(lock) fake_mutex_unlock(lock)

#include "zte_ir_ioctl.c"

static struct zte_ir_runtime runtime;
static struct file file;
static unsigned int checks;
static unsigned int failures;

static void expect_int(const char *name, long long actual, long long expected)
{
	checks++;
	if (actual == expected)
		return;
	failures++;
	fprintf(stderr, "%s: expected %lld, got %lld\n", name, expected, actual);
}

static void reset_state(void)
{
	memset(&runtime, 0, sizeof(runtime));
	runtime.stock.speed_hz = 608000;
	file.private_data = &runtime;
	get_user_calls = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	lock_failures = 0;
	force_get_user_failure = 0;
}

static long call_ioctl(unsigned int command, int *carrier)
{
	return zte_ir_ioctl(&file, command, (unsigned long)(uintptr_t)carrier);
}

static void expect_lock_state(unsigned int expected_locks)
{
	expect_int("mutex lock count", mutex_lock_calls, expected_locks);
	expect_int("mutex unlock count", mutex_unlock_calls, expected_locks);
	expect_int("lock failures", lock_failures, 0);
	expect_int("mutex released", runtime.stock.buf_lock.held, 0);
}

static void test_invalid_context_and_command(void)
{
	int carrier = 38000;

	reset_state();
	expect_int("null file", zte_ir_ioctl(NULL, ZTE_IR_IOC_SET_CARRIER,
			(unsigned long)(uintptr_t)&carrier), -ENODEV);
	file.private_data = NULL;
	expect_int("null private data", call_ioctl(ZTE_IR_IOC_SET_CARRIER,
			&carrier), -ENODEV);
	file.private_data = &runtime;
	expect_int("unsupported command", call_ioctl(0x12345678U, &carrier),
		   -ENOTTY);
	expect_int("unsupported did not read user", get_user_calls, 0);
	expect_int("speed unchanged", runtime.stock.speed_hz, 608000);
	expect_lock_state(0);
}

static void test_user_copy_failures(void)
{
	int carrier = 38000;

	reset_state();
	expect_int("null user pointer", call_ioctl(ZTE_IR_IOC_SET_CARRIER, NULL),
		   -EFAULT);
	expect_int("null pointer read", get_user_calls, 1);
	expect_lock_state(0);

	reset_state();
	force_get_user_failure = 1;
	expect_int("forced get_user failure", call_ioctl(ZTE_IR_IOC_SET_CARRIER,
			&carrier), -EFAULT);
	expect_int("forced read", get_user_calls, 1);
	expect_lock_state(0);
}

static void test_frequency_bounds(void)
{
	int carrier;

	reset_state();
	carrier = 0;
	expect_int("zero carrier", call_ioctl(ZTE_IR_IOC_SET_CARRIER, &carrier),
		   -EINVAL);
	carrier = -1;
	expect_int("negative carrier", call_ioctl(ZTE_IR_IOC_SET_CARRIER, &carrier),
		   -EINVAL);
	carrier = 312501;
	expect_int("carrier above DT", call_ioctl(ZTE_IR_IOC_SET_CARRIER, &carrier),
		   -EINVAL);
	expect_int("bounds did not lock", mutex_lock_calls, 0);
	expect_int("bounds keep speed", runtime.stock.speed_hz, 608000);
}

static void test_success_and_removal(void)
{
	int carrier = 38000;

	reset_state();
	expect_int("38k success", call_ioctl(ZTE_IR_IOC_SET_CARRIER, &carrier), 0);
	expect_int("38k speed", runtime.stock.speed_hz, 608000);
	expect_lock_state(1);

	reset_state();
	carrier = 312500;
	expect_int("max carrier success", call_ioctl(ZTE_IR_IOC_SET_CARRIER,
			&carrier), 0);
	expect_int("max speed", runtime.stock.speed_hz, 5000000);
	expect_lock_state(1);

	reset_state();
	runtime.removed = 1;
	carrier = 40000;
	expect_int("removed device", call_ioctl(ZTE_IR_IOC_SET_CARRIER, &carrier),
		   -ESHUTDOWN);
	expect_int("removed speed unchanged", runtime.stock.speed_hz, 608000);
	expect_lock_state(1);
}

int main(void)
{
	test_invalid_context_and_command();
	test_user_copy_failures();
	test_frequency_bounds();
	test_success_and_removal();
	printf("checks=%u failures=%u\n", checks, failures);
	return failures ? 1 : 0;
}
