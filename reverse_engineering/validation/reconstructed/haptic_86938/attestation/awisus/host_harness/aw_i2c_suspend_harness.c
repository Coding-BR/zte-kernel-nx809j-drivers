/* SPDX-License-Identifier: GPL-2.0 */
#include <linux/device.h>
#include <linux/mutex.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

#ifndef CANDIDATE_SOURCE
#error "CANDIDATE_SOURCE must name the source under test"
#endif

#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)

struct aw8693x_func_list;

struct aw_haptic {
	unsigned char prefix[0x2f0];
	struct mutex lock;
	unsigned char between[0x5c8 - 0x2f0 - sizeof(struct mutex)];
	struct aw8693x_func_list *func_list;
};

#include STRINGIFY(CANDIDATE_SOURCE)

_Static_assert(offsetof(struct device, driver_data) == 0x98,
	       "device driver_data offset changed");
_Static_assert(offsetof(struct aw_haptic, lock) == 0x2f0,
	       "haptic mutex offset changed");
_Static_assert(offsetof(struct aw_haptic, func_list) == 0x5c8,
	       "haptic operations-table offset changed");
_Static_assert(offsetof(struct aw8693x_func_list, stop) == 0x38,
	       "stock stop callback slot changed");

enum event {
	EVENT_LOCK = 1,
	EVENT_STOP = 2,
	EVENT_UNLOCK = 3,
};

static struct mutex *expected_mutex;
static struct aw_haptic *expected_haptic;
static int event_log[8];
static unsigned int event_count;
static unsigned int callback_count;
static int lock_held;
static int contract_error;

static void record_event(enum event event)
{
	if (event_count < sizeof(event_log) / sizeof(event_log[0]))
		event_log[event_count++] = event;
	else
		contract_error = 1;
}

void mutex_lock(struct mutex *lock)
{
	if (lock != expected_mutex || lock_held)
		contract_error = 1;
	lock_held = 1;
	record_event(EVENT_LOCK);
}

void mutex_unlock(struct mutex *lock)
{
	if (lock != expected_mutex || !lock_held)
		contract_error = 1;
	lock_held = 0;
	record_event(EVENT_UNLOCK);
}

static void mock_aw8693x_stop(struct aw_haptic *haptic)
{
	if (haptic != expected_haptic || !lock_held)
		contract_error = 1;
	callback_count++;
	record_event(EVENT_STOP);
}

int main(void)
{
	struct aw_haptic haptic;
	struct device device;
	struct aw8693x_func_list func_list = { .stop = mock_aw8693x_stop };
	int result;

	memset(&haptic, 0, sizeof(haptic));
	memset(&device, 0, sizeof(device));
	haptic.func_list = &func_list;
	device.driver_data = &haptic;
	expected_mutex = &haptic.lock;
	expected_haptic = &haptic;

	result = aw_i2c_suspend(&device);
	if (contract_error)
		goto fail_contract;
	if (result != 0) {
		fprintf(stderr, "FAIL: expected return 0, got %d\n", result);
		return 1;
	}
	if (callback_count != 1 || lock_held || event_count != 3 ||
	    event_log[0] != EVENT_LOCK || event_log[1] != EVENT_STOP ||
	    event_log[2] != EVENT_UNLOCK) {
		fprintf(stderr, "FAIL: expected lock -> stop -> unlock exactly once\n");
		return 1;
	}
	puts("PASS: driver_data, callback ABI, lock scope/order, and return value");
	return 0;

fail_contract:
	fprintf(stderr, "FAIL: lock or callback contract violated (events=%u)\n",
		event_count);
	return 1;
}
