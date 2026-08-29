#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define SP_EL0 0
#define __int8 char
typedef long long __int64;
typedef uint64_t _QWORD;
typedef uint16_t _WORD;

static uint8_t fake_sp_el0[0x718];

static uintptr_t _ReadStatusReg(int register_id)
{
	(void)register_id;
	return (uintptr_t)fake_sp_el0;
}

struct file {
	int unused;
};

struct ztp_device;

long long tpd_cdev;
char unk_3A127[256] = "zte_tpd_log";

static unsigned int callback_calls;
static unsigned int wrong_callback_calls;
static uintptr_t callback_argument;
static unsigned int printk_calls;

static int refresh_suspend(struct ztp_device *cdev)
{
	callback_calls++;
	callback_argument = (uintptr_t)cdev;
	return 0;
}

static int wrong_callback(struct ztp_device *cdev)
{
	(void)cdev;
	wrong_callback_calls++;
	return 0;
}

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

ssize_t simple_read_from_buffer(__int64 to, __int64 count, __int64 *position,
				void *from, unsigned long available)
{
	size_t copied;
	char *destination = (char *)(uintptr_t)to;
	const char *source = (const char *)from;

	if (*position < 0 || (size_t)*position >= available)
		return 0;
	copied = available - (size_t)*position;
	if (copied > (size_t)count)
		copied = (size_t)count;
	memcpy(destination, source + *position, copied);
	*position += (__int64)copied;
	return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/headset_state_show.c"

struct fixture {
	uint8_t device[0xe78 + sizeof(void *)];
	char output[32];
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

static void fixture_init(struct fixture *fixture, uint8_t value,
				 int with_callback)
{
	memset(fixture, 0, sizeof(*fixture));
	memset(fake_sp_el0, 0, sizeof(fake_sp_el0));
	store_u8(fixture->device, 0x17, value);
	store_ptr(fixture->device, 0xe58, (void *)wrong_callback);
	if (with_callback)
		store_ptr(fixture->device, 0xe78, (void *)refresh_suspend);
	else
		store_ptr(fixture->device, 0xe78, NULL);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	callback_calls = 0;
	wrong_callback_calls = 0;
	callback_argument = 0;
	printk_calls = 0;
}

static void test_full_read_and_correct_callback_offset(void)
{
	const char *case_name = "full_read_and_correct_callback_offset";
	struct fixture fixture;
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1, 1);
	result = headset_state_show(&file, fixture.output, sizeof(fixture.output),
				     &position);
	expect(result == 17, case_name, "unexpected read length");
	expect(memcmp(fixture.output, "headset state: 1\n", 17) == 0,
	       case_name, "unexpected formatted value");
	expect(position == 17, case_name, "position not advanced");
	expect(callback_calls == 1, case_name, "callback not called");
	expect(wrong_callback_calls == 0, case_name,
	       "stale callback offset was used");
	expect(callback_argument == (uintptr_t)fixture.device, case_name,
	       "callback argument differs");
	expect(printk_calls == 1, case_name, "log contract differs");
}

static void test_partial_read_and_eof(void)
{
	const char *case_name = "partial_read_and_eof";
	struct fixture fixture;
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 42, 0);
	result = headset_state_show(&file, fixture.output, 2, &position);
	expect(result == 2, case_name, "partial read length differs");
	expect(memcmp(fixture.output, "he", 2) == 0, case_name,
	       "partial read data differs");
	expect(position == 2, case_name, "partial position differs");
	expect(callback_calls == 0, case_name, "callback count differs");
	result = headset_state_show(&file, fixture.output, sizeof(fixture.output),
				     &position);
	expect(result == 0, case_name, "second read did not reach EOF");
	expect(callback_calls == 0, case_name,
	       "callback ran after nonzero position");
}

int main(void)
{
	test_full_read_and_correct_callback_offset();
	test_partial_read_and_eof();
	puts("PASS headset_state_show host tests (2 cases)");
	return 0;
}
