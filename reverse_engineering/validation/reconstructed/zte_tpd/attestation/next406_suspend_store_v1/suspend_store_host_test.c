#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define __nocfi
#define ZTE_TPD_HOST_TEST
#define __int8 char
#define _BYTE uint8_t
typedef long long __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
typedef uint8_t _BOOL8;

static void __break(unsigned int code)
{
	(void)code;
}

struct file {
	int unused;
};

struct ztp_device;

long long tpd_cdev;

static unsigned int callback_calls;
static unsigned int wrong_callback_calls;
static uintptr_t callback_argument;
static uint64_t callback_value;
static unsigned int printk_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;

static void suspend_callback(__int64 cdev, _QWORD value)
{
	callback_calls++;
	callback_argument = (uintptr_t)cdev;
	callback_value = value;
}

static void wrong_callback(__int64 cdev, _QWORD value)
{
	(void)cdev;
	(void)value;
	wrong_callback_calls++;
}

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

void mutex_lock(__int64 lock)
{
	(void)lock;
	mutex_lock_calls++;
}

void mutex_unlock(__int64 lock)
{
	(void)lock;
	mutex_unlock_calls++;
}

int kstrtouint_from_user(__int64 buffer, __int64 count, unsigned int base,
				unsigned int *value)
{
	char local[64];
	char *end;
	unsigned long parsed;
	size_t length = (size_t)count;

	if (base != 10 || length == 0 || length >= sizeof(local))
		return -EINVAL;
	memcpy(local, (const void *)(uintptr_t)buffer, length);
	local[length] = '\0';
	parsed = strtoul(local, &end, base);
	if (end == local || (*end != '\0' && *end != '\n') || parsed > UINT32_MAX)
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

#include "../../../reconstructed/zte_tpd/suspend_store.c"

struct fixture {
	uint8_t device[0xe60 + sizeof(void *)];
};

static void fail(const char *case_name, const char *message)
{
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
	if (!condition)
		fail(case_name, message);
}

static void store_u8(uint8_t *base, size_t offset, uint8_t value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, uint8_t state,
				 int with_callback)
{
	memset(fixture, 0, sizeof(*fixture));
	store_u8(fixture->device, 0x16, state);
	store_ptr(fixture->device, 0xe58, (void *)wrong_callback);
	if (with_callback)
		store_ptr(fixture->device, 0xe60, (void *)suspend_callback);
	else
		store_ptr(fixture->device, 0xe60, NULL);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	callback_calls = 0;
	wrong_callback_calls = 0;
	callback_argument = 0;
	callback_value = UINT64_MAX;
	printk_calls = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
}

static ssize_t run_store(struct fixture *fixture, const char *input)
{
	struct file file = {0};
	loff_t offset = 0;
	(void)fixture;
	return suspend_store(&file, input, strlen(input), &offset);
}

static void test_parse_failure_has_no_side_effects(void)
{
	const char *case_name = "parse_failure_has_no_side_effects";
	struct fixture fixture;

	fixture_init(&fixture, 0, 1);
	expect(run_store(&fixture, "invalid") == -EINVAL, case_name,
	       "invalid input did not return -EINVAL");
	expect(printk_calls == 0, case_name, "parse failure was logged");
	expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0, case_name,
	       "mutex changed after parse failure");
	expect(callback_calls == 0, case_name, "callback ran after parse failure");
}

static void test_same_state_does_not_call_callback(void)
{
	const char *case_name = "same_state_does_not_call_callback";
	struct fixture fixture;

	fixture_init(&fixture, 1, 1);
	expect(run_store(&fixture, "9") == 1, case_name,
	       "same-state write did not return count");
	expect(*(uint8_t *)(fixture.device + 0x16) == 1, case_name,
	       "state changed unexpectedly");
	expect(callback_calls == 0 && wrong_callback_calls == 0, case_name,
	       "callback ran for unchanged state");
	expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1, case_name,
	       "mutex pairing differs");
	expect(printk_calls == 2, case_name, "same-state logs differ");
}

static void test_state_transition_uses_correct_callback(void)
{
	const char *case_name = "state_transition_uses_correct_callback";
	struct fixture fixture;

	fixture_init(&fixture, 0, 1);
	expect(run_store(&fixture, "2\n") == 2, case_name,
	       "transition write did not return count");
	expect(*(uint8_t *)(fixture.device + 0x16) == 1, case_name,
	       "state was not normalized to one");
	expect(callback_calls == 1, case_name, "callback was not called");
	expect(wrong_callback_calls == 0, case_name,
	       "stale callback offset was used");
	expect(callback_argument == (uintptr_t)fixture.device, case_name,
	       "callback device argument differs");
	expect(callback_value == 0, case_name, "callback value differs");
	expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1, case_name,
	       "mutex pairing differs");
}

static void test_transition_without_callback_updates_state(void)
{
	const char *case_name = "transition_without_callback_updates_state";
	struct fixture fixture;

	fixture_init(&fixture, 1, 0);
	expect(run_store(&fixture, "0") == 1, case_name,
	       "zero transition did not return count");
	expect(*(uint8_t *)(fixture.device + 0x16) == 0, case_name,
	       "state was not updated to zero");
	expect(callback_calls == 0 && wrong_callback_calls == 0, case_name,
	       "callback ran unexpectedly");
	expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1, case_name,
	       "mutex pairing differs");
}

int main(void)
{
	test_parse_failure_has_no_side_effects();
	test_same_state_does_not_call_callback();
	test_state_transition_uses_correct_callback();
	test_transition_without_callback_updates_state();
	puts("PASS suspend_store host tests (4 cases)");
	return 0;
}
