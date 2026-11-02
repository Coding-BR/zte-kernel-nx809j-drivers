#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

struct work_struct {
	unsigned char opaque[32];
};

struct ztp_device {
	bool zlog_registered;
};

static struct ztp_device device_a;
static struct ztp_device device_b;
static struct ztp_device *current_device;
static struct ztp_device *registered_device;
static unsigned int register_calls;
static unsigned int failures;

static void expect_true(const char *name, bool condition)
{
	if (!condition) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual,
			expected);
		failures++;
	}
}

static struct ztp_device *test_tpd_zlog_device(void)
{
	return current_device;
}

static void test_tpd_zlog_register(struct ztp_device *device)
{
	register_calls++;
	registered_device = device;
}

#define tpd_zlog_device test_tpd_zlog_device
#define tpd_zlog_register test_tpd_zlog_register
#include "../../../reconstructed/zte_tpd/zlog_register_work.c"
#undef tpd_zlog_register
#undef tpd_zlog_device

static void reset_trace(void)
{
	device_a.zlog_registered = false;
	device_b.zlog_registered = false;
	current_device = &device_a;
	registered_device = NULL;
	register_calls = 0;
}

static void test_unregistered_device_registers(void)
{
	struct work_struct work;

	reset_trace();
	zlog_register_work(&work);
	expect_int("unregistered register calls", register_calls, 1);
	expect_true("unregistered device argument", registered_device == &device_a);
}

static void test_registered_device_is_ignored(void)
{
	struct work_struct work;

	reset_trace();
	device_a.zlog_registered = true;
	zlog_register_work(&work);
	expect_int("registered register calls", register_calls, 0);
	expect_true("registered device not touched", registered_device == NULL);
}

static void test_device_selection_and_work_ignored(void)
{
	struct work_struct first_work;
	struct work_struct second_work;

	reset_trace();
	current_device = &device_b;
	zlog_register_work(&first_work);
	zlog_register_work(&second_work);
	expect_int("selected device register calls", register_calls, 2);
	expect_true("selected device argument", registered_device == &device_b);
}

static void test_registered_state_does_not_change_locally(void)
{
	struct work_struct work;

	reset_trace();
	device_b.zlog_registered = true;
	current_device = &device_b;
	zlog_register_work(&work);
	expect_int("second registered register calls", register_calls, 0);
	expect_true("second registered device not touched", registered_device == NULL);
	expect_true("registered state preserved", device_b.zlog_registered);
}

int main(void)
{
	test_unregistered_device_registers();
	test_registered_device_is_ignored();
	test_device_selection_and_work_ignored();
	test_registered_state_does_not_change_locally();
	if (failures != 0)
		return 1;
	puts("PASS zlog_register_work host tests (4 cases)");
	return 0;
}
