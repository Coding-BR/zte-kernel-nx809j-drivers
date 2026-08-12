#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define __int64 long long
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define _BOOL8 unsigned char
#define SP_EL0 0
#define _ReadStatusReg(reg) 0ULL
#define __break(code) host_break(code)
#define __nocfi
#define ZTE_TPD_HOST_TEST 1

struct file {
	int unused;
};

long long tpd_cdev;

static unsigned int lock_count;
static unsigned int unlock_count;
static unsigned int log_count;
static unsigned int break_count;
static unsigned int callback_count;
static long long callback_device;
static unsigned long long callback_state;

static int host_kstrtouint_from_user(const char *buffer, size_t count,
					     unsigned int base, unsigned int *value)
{
	char input[32];
	char *end;
	unsigned long parsed;

	if (base != 10 || count == 0 || count >= sizeof(input))
		return -22;
	memcpy(input, buffer, count);
	input[count] = '\0';
	parsed = strtoul(input, &end, 10);
	if (end == input || *end != '\0' || parsed > UINT32_MAX)
		return -22;
	*value = (unsigned int)parsed;
	return 0;
}

static int host_printk(const char *format, ...)
{
	(void)format;
	log_count++;
	return 0;
}

static void host_mutex_lock(void *mutex)
{
	(void)mutex;
	lock_count++;
}

static void host_mutex_unlock(void *mutex)
{
	(void)mutex;
	unlock_count++;
}

static void host_break(unsigned int code)
{
	if (code != 0x8228)
		abort();
	break_count++;
}

#define kstrtouint_from_user(buffer, count, base, value) \
	host_kstrtouint_from_user((const char *)(uintptr_t)(buffer), (size_t)(count), \
				  (unsigned int)(base), (unsigned int *)(value))
#define printk(format, ...) host_printk((const char *)(format), ##__VA_ARGS__)
#define mutex_lock(mutex) host_mutex_lock((void *)(uintptr_t)(mutex))
#define mutex_unlock(mutex) host_mutex_unlock((void *)(uintptr_t)(mutex))

#include "../../../reconstructed/zte_tpd/suspend_store.c"

struct fixture {
	uint8_t cdev[0xe80];
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

static void callback(long long device, unsigned long long state)
{
	callback_count++;
	callback_device = device;
	callback_state = state;
}

static void store_pointer(uint8_t *base, size_t offset, void *value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void reset_fixture(struct fixture *fixture)
{
	memset(fixture, 0, sizeof(*fixture));
	tpd_cdev = (long long)(uintptr_t)fixture->cdev;
	lock_count = 0;
	unlock_count = 0;
	log_count = 0;
	break_count = 0;
	callback_count = 0;
	callback_device = 0;
	callback_state = 1;
}

static void test_invalid_input_does_not_lock(void)
{
	const char *case_name = "invalid_input_does_not_lock";
	struct fixture fixture;
	struct file file = {0};
	loff_t offset = 0;
	ssize_t result;

	reset_fixture(&fixture);
	result = suspend_store(&file, "bad", 3, &offset);
	expect(result == -22, case_name, "invalid input must return -EINVAL");
	expect(lock_count == 0 && unlock_count == 0, case_name,
	       "invalid input must not acquire the command mutex");
	expect(callback_count == 0, case_name, "invalid input must not call callback");
}

static void test_unchanged_state(void)
{
	const char *case_name = "unchanged_state";
	struct fixture fixture;
	struct file file = {0};
	loff_t offset = 0;
	ssize_t result;

	reset_fixture(&fixture);
	fixture.cdev[0x16] = 1;
	result = suspend_store(&file, "1", 1, &offset);
	expect(result == 1, case_name, "successful write must return count");
	expect(fixture.cdev[0x16] == 1, case_name, "state changed unexpectedly");
	expect(lock_count == 1 && unlock_count == 1, case_name,
	       "state check must pair command mutex operations");
	expect(callback_count == 0, case_name, "unchanged state must not call callback");
}

static void test_changed_state_with_callback(void)
{
	const char *case_name = "changed_state_with_callback";
	struct fixture fixture;
	struct file file = {0};
	loff_t offset = 0;
	ssize_t result;

	reset_fixture(&fixture);
	store_pointer(fixture.cdev, 0xe60, callback);
	result = suspend_store(&file, "7", 1, &offset);
	expect(result == 1, case_name, "successful write must return count");
	expect(fixture.cdev[0x16] == 1, case_name, "nonzero input was not normalized");
	expect(lock_count == 1 && unlock_count == 1, case_name,
	       "changed state must pair command mutex operations");
	expect(callback_count == 1, case_name, "changed state must call callback once");
	expect(callback_device == (long long)(uintptr_t)fixture.cdev, case_name,
	       "callback device argument differs");
	expect(callback_state == 0, case_name, "callback state argument differs");
	expect(break_count == 1, case_name,
	       "host callback must expose the unresolved stock KCFI mismatch");
}

int main(void)
{
	test_invalid_input_does_not_lock();
	test_unchanged_state();
	test_changed_state_with_callback();
	puts("PASS suspend_store host tests (3 cases)");
	return 0;
}
