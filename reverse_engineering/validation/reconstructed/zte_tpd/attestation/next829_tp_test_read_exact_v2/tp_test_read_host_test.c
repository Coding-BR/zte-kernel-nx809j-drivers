#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __user
#define __int64 long long
#define __int16 short
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define SP_EL0 0

typedef long ssize_t;
typedef long long zte_loff_t;
#define loff_t zte_loff_t

struct file {
	int unused;
};

static unsigned char fake_sp[2048];
static long long tpd_cdev;
static unsigned int printk_calls;

static int printk_stub(const char *format, ...)
{
	(void)format;
	++printk_calls;
	return 0;
}

static uintptr_t read_sp_el0_stub(void)
{
	return (uintptr_t)fake_sp;
}

#define _ReadStatusReg(x) read_sp_el0_stub()
#define printk printk_stub
#define unk_3CABE "tpd: TP probe success,chip_id = 0x%02x"
#define unk_37549 "tpd: cdev->fw_ready is true"
#define unk_39294 "tpd: err:cdev->fw_ready is false"
#define unk_3408C "tpd: TP probe failed,chip_id = 0x%02x"

static ssize_t simple_read_from_buffer(__int64 destination_address,
					       __int64 count, __int64 *position,
					       const void *source, __int64 available)
{
	char *destination = (char *)(uintptr_t)destination_address;
	const char *source_bytes = source;
	__int64 copied;

	if (*position < 0 || count < 0 || available < 0)
		return -1;
	if (*position >= available)
		return 0;
	copied = available - *position;
	if (copied > count)
		copied = count;
	memcpy(destination, source_bytes + *position, (size_t)copied);
	*position += copied;
	return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/tp_test_read.c"

struct fixture {
	unsigned char device[0xc00 + 1U];
};

static void fail_case(const char *name, const char *message)
{
	(void)fprintf(stderr, "FAIL %s: %s\n", name, message);
	exit(1);
}

static void expect_case(int condition, const char *name, const char *message)
{
	if (!condition)
		fail_case(name, message);
}

static void fixture_init(struct fixture *fixture, unsigned char fw_ready,
				unsigned char chip_id, unsigned char flags)
{
	memset(fixture, 0, sizeof(*fixture));
	fixture->device[0xc00] = fw_ready;
	fixture->device[0x446] = chip_id;
	fixture->device[0x1d] = flags;
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	memset(fake_sp, 0, sizeof(fake_sp));
	printk_calls = 0;
}

static void test_ready_success(void)
{
	const char *name = "ready_success";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 0xffU, 0x2aU, 1U);
	result = tp_test_read(NULL, output, sizeof(output), &position);
	expect_case(result == 2 && memcmp(output, "0\n", 2) == 0, name,
			    "ready path did not return 0");
	expect_case(position == 2 && printk_calls == 2, name,
			    "ready path log or position contract differs");
}

static void test_ready_not_enabled(void)
{
	const char *name = "ready_not_enabled";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 0xffU, 0x2aU, 0U);
	result = tp_test_read(NULL, output, sizeof(output), &position);
	expect_case(result == 2 && memcmp(output, "2\n", 2) == 0, name,
			    "disabled path did not return 2");
	expect_case(printk_calls == 2, name, "disabled path log contract differs");
}

static void test_probe_failed(void)
{
	const char *name = "probe_failed";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1U, 0x2aU, 0U);
	result = tp_test_read(NULL, output, sizeof(output), &position);
	expect_case(result == 2 && memcmp(output, "1\n", 2) == 0, name,
			    "failed path did not return 1");
	expect_case(printk_calls == 1, name, "failed path log contract differs");
}

static void test_eof_and_short_read(void)
{
	const char *name = "eof_and_short_read";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 1;
	ssize_t result;

	fixture_init(&fixture, 0xffU, 0x2aU, 1U);
	result = tp_test_read(NULL, output, sizeof(output), &position);
	expect_case(result == 0 && position == 1 && printk_calls == 0, name,
			    "nonzero position was not EOF");
	position = 0;
	result = tp_test_read(NULL, output, 1, &position);
	expect_case(result == 1 && output[0] == '0' && position == 1, name,
			    "short read contract differs");
}

int main(void)
{
	test_ready_success();
	test_ready_not_enabled();
	test_probe_failed();
	test_eof_and_short_read();
	(void)puts("tp_test_read host contract: PASS (4 cases)");
	return 0;
}
