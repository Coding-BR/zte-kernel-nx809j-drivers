#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define _DWORD uint32_t
#define ZTE_TPD_HOST_TEST 1

struct file {
	int unused;
};

static long long tpd_cdev;
static unsigned short word_314C0;
static int dword_314A0;
static unsigned int printk_calls;
static unsigned int complete_calls;
static unsigned int report_calls;
static unsigned int last_sleep_ms;

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

int kstrtouint_from_user(const char *source, size_t count,
					unsigned int base, unsigned int *value)
{
	char input[64];
	char *end;
	unsigned long parsed;

	if (!source || !value || base != 10 || count == 0 || count >= sizeof(input))
		return -EINVAL;
	memcpy(input, source, count);
	input[count] = '\0';
	errno = 0;
	parsed = strtoul(input, &end, base);
	if (end == input)
		return -EINVAL;
	if (*end == '\n' && end[1] == '\0')
		end++;
	if (*end != '\0' || errno == ERANGE || parsed > UINT32_MAX)
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

void complete(void *completion)
{
	(void)completion;
	complete_calls++;
}

void msleep(unsigned int milliseconds)
{
	last_sleep_ms = milliseconds;
}

int report_ufp_uevent(int state)
{
	(void)state;
	report_calls++;
	return 0;
}

#include "../../../reconstructed/zte_tpd/set_finger_lock_flag.c"

struct fixture {
	uint8_t device[0x474 + sizeof(uint32_t)];
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

static void store_u32(uint8_t *base, size_t offset, uint32_t value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static uint32_t load_u32(const uint8_t *base, size_t offset)
{
	uint32_t value;
	memcpy(&value, base + offset, sizeof(value));
	return value;
}

static void fixture_init(struct fixture *fixture, uint32_t value,
					 uint32_t busy, unsigned short gate)
{
	memset(fixture, 0, sizeof(*fixture));
	store_u32(fixture->device, 0x474, value);
	store_u32(fixture->device, 0x458, busy);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	word_314C0 = gate;
	dword_314A0 = 0;
	printk_calls = 0;
	complete_calls = 0;
	report_calls = 0;
	last_sleep_ms = 0;
}

static void test_gate_and_busy_paths(void)
{
	const char *case_name = "gate_and_busy_paths";
	struct fixture fixture;
	const char enable[] = "1";
	ssize_t result;

	fixture_init(&fixture, 0, 1, 1);
	result = set_finger_lock_flag(NULL, enable, 1, NULL);
	expect(result == 1, case_name, "unexpected successful write length");
	expect(load_u32(fixture.device, 0x474) == 1, case_name,
	       "enabled state was not stored");
	expect(complete_calls == 1 && report_calls == 0 && last_sleep_ms == 0,
	       case_name, "busy path side effects differ");

	fixture_init(&fixture, 0, 0, 1);
	result = set_finger_lock_flag(NULL, enable, 1, NULL);
	expect(result == 1 && complete_calls == 1 && report_calls == 1,
	       case_name, "idle gate path side effects differ");
	expect(last_sleep_ms == 100, case_name, "sleep duration differs");
}

static void test_gate_disabled_reports_without_complete(void)
{
	const char *case_name = "gate_disabled_reports_without_complete";
	struct fixture fixture;
	const char enable[] = "1";

	fixture_init(&fixture, 0, 0, 0);
	expect(set_finger_lock_flag(NULL, enable, 1, NULL) == 1, case_name,
	       "unexpected successful write length");
	expect(complete_calls == 0 && report_calls == 1 && last_sleep_ms == 100,
	       case_name, "gate-disabled side effects differ");
}

static void test_disable_has_no_side_effects(void)
{
	const char *case_name = "disable_has_no_side_effects";
	struct fixture fixture;
	const char disable[] = "0";

	fixture_init(&fixture, 1, 0, 1);
	expect(set_finger_lock_flag(NULL, disable, 1, NULL) == 1, case_name,
	       "unexpected successful write length");
	expect(load_u32(fixture.device, 0x474) == 0, case_name,
	       "disabled state was not stored");
	expect(complete_calls == 0 && report_calls == 0 && last_sleep_ms == 0,
	       case_name, "disable path has unexpected side effects");
}

static void test_invalid_input_preserves_state(void)
{
	const char *case_name = "invalid_input_preserves_state";
	struct fixture fixture;
	const char invalid[] = "x";

	fixture_init(&fixture, 1, 0, 1);
	 expect(set_finger_lock_flag(NULL, invalid, 1, NULL) == -22, case_name,
	        "invalid input did not return -EINVAL");
	expect(load_u32(fixture.device, 0x474) == 1, case_name,
	       "invalid input changed state");
	expect(complete_calls == 0 && report_calls == 0 && printk_calls == 0,
	       case_name, "invalid input caused side effects");
}

int main(void)
{
	test_gate_and_busy_paths();
	test_gate_disabled_reports_without_complete();
	test_disable_has_no_side_effects();
	test_invalid_input_preserves_state();
	puts("PASS set_finger_lock_flag: 4 cases");
	return 0;
}
