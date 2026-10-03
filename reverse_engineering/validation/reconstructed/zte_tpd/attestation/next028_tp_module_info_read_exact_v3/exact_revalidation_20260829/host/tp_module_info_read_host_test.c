#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define _QWORD long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define __int64 long long

struct file {
	int unused;
};

struct ztp_device;

long long tpd_cdev;

static unsigned int callback_calls;
static struct ztp_device *callback_argument;

static int refresh_module_info(struct ztp_device *cdev)
{
	callback_calls++;
	callback_argument = cdev;
	return 0;
}

ssize_t simple_read_from_buffer(__int64 to, __int64 count, __int64 *position,
				_QWORD *from, unsigned long available)
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

#include "../../../reconstructed/zte_tpd/tp_module_info_read.c"

struct fixture {
	uint8_t cdev[0xe00];
	char output[512];
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

static void store_pointer(uint8_t *base, size_t offset, void *value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, int include_optional)
{
	memset(fixture, 0, sizeof(*fixture));
	tpd_cdev = (long long)(uintptr_t)fixture->cdev;
	store_pointer(fixture->cdev, 0xe20, refresh_module_info);
	store_u32(fixture->cdev, 0xcfc, 0x42);
	store_u32(fixture->cdev, 0xd00, 73);
	memcpy(fixture->cdev + 0xd40, "NX809J", sizeof("NX809J"));
	memcpy(fixture->cdev + 0xd18, "syna-tcm", sizeof("syna-tcm"));
	if (include_optional) {
		store_u32(fixture->cdev, 0xd0c, 0x2a);
		store_u32(fixture->cdev, 0xd14, 15);
		store_u32(fixture->cdev, 0xd04, 0x1234);
		store_u32(fixture->cdev, 0xd08, 0x99);
		memcpy(fixture->cdev + 0xd68, "A1", sizeof("A1"));
		memcpy(fixture->cdev + 0xd90, "ready", sizeof("ready"));
	}
	callback_calls = 0;
	callback_argument = NULL;
}

static void test_full_read_with_optional_fields(void)
{
	const char *case_name = "full_read_with_optional_fields";
	const char *expected =
		"TP module: NX809J(0x42)\n"
		"IC type : syna-tcm\n"
		"I2C address: 0x2a\n"
		"Spi num: 15\n"
		"Firmware version : 73\n"
		"Config version:0x1234\n"
		"Display version:0x99\n"
		"Chip hard version:A1\n"
		"fw update status:ready\n";
	struct fixture fixture;
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1);
	result = tp_module_info_read(&file, fixture.output, sizeof(fixture.output),
				     &position);
	expect(result == (ssize_t)strlen(expected), case_name, "unexpected length");
	expect(position == result, case_name, "position not advanced");
	expect(memcmp(fixture.output, expected, (size_t)result) == 0, case_name,
	       "formatted module information differs");
	expect(callback_calls == 1, case_name, "callback count differs");
	expect(callback_argument == (struct ztp_device *)fixture.cdev, case_name,
	       "callback argument differs");
}

static void test_short_read_and_second_read(void)
{
	const char *case_name = "short_read_and_second_read";
	struct fixture fixture;
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 0);
	result = tp_module_info_read(&file, fixture.output, 10, &position);
	expect(result == 10, case_name, "short read length differs");
	expect(memcmp(fixture.output, "TP module:", 10) == 0, case_name,
	       "short read content differs");
	expect(position == 10, case_name, "short read position differs");
	expect(callback_calls == 1, case_name, "callback not called on first read");
	result = tp_module_info_read(&file, fixture.output, sizeof(fixture.output),
				     &position);
	expect(result == 0, case_name, "second read must reach EOF");
	expect(callback_calls == 1, case_name,
	       "callback ran again after nonzero position");
}

int main(void)
{
	test_full_read_with_optional_fields();
	test_short_read_and_second_read();
	puts("PASS tp_module_info_read host tests (2 cases)");
	return 0;
}
