#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef int64_t __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;

__int64 tpd_cdev;

#include "tpd_reset_fw_data_pos_and_size.c"

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #condition); \
		return 1; \
	} \
} while (0)

struct fixture {
	unsigned char cdev[0xc60];
	uint64_t firmware_size;
};

static void fixture_init(struct fixture *fixture, uint32_t position,
			 uint64_t initial_size)
{
	memset(fixture, 0, sizeof(*fixture));
	fixture->firmware_size = initial_size;
	*(uint64_t *)(fixture->cdev + 0xc58) =
		(uint64_t)(uintptr_t)&fixture->firmware_size;
	*(uint32_t *)(fixture->cdev + 0x448) = position;
	tpd_cdev = (__int64)(uintptr_t)fixture->cdev;
}

static int test_position_is_committed_and_cleared(void)
{
	struct fixture fixture;

	fixture_init(&fixture, 0x12345678U, 0xfeedfaceULL);
	tpd_reset_fw_data_pos_and_size();
	CHECK(fixture.firmware_size == 0x12345678ULL);
	CHECK(*(uint32_t *)(fixture.cdev + 0x448) == 0);
	return 0;
}

static int test_zero_position_is_idempotent(void)
{
	struct fixture fixture;

	fixture_init(&fixture, 0, 0xfeedfaceULL);
	tpd_reset_fw_data_pos_and_size();
	CHECK(fixture.firmware_size == 0);
	CHECK(*(uint32_t *)(fixture.cdev + 0x448) == 0);
	return 0;
}

static int test_unsigned_position_width(void)
{
	struct fixture fixture;

	fixture_init(&fixture, UINT32_MAX, 0);
	tpd_reset_fw_data_pos_and_size();
	CHECK(fixture.firmware_size == UINT32_MAX);
	CHECK(*(uint32_t *)(fixture.cdev + 0x448) == 0);
	return 0;
}

static int test_repeated_reset_uses_current_position(void)
{
	struct fixture fixture;

	fixture_init(&fixture, 7, 0);
	tpd_reset_fw_data_pos_and_size();
	CHECK(fixture.firmware_size == 7);
	*(uint32_t *)(fixture.cdev + 0x448) = 99;
	tpd_reset_fw_data_pos_and_size();
	CHECK(fixture.firmware_size == 99);
	CHECK(*(uint32_t *)(fixture.cdev + 0x448) == 0);
	return 0;
}

int main(void)
{
	int failures = 0;

	if (test_position_is_committed_and_cleared() == 0)
		puts("PASS position_is_committed_and_cleared");
	else
		failures++;
	if (test_zero_position_is_idempotent() == 0)
		puts("PASS zero_position_is_idempotent");
	else
		failures++;
	if (test_unsigned_position_width() == 0)
		puts("PASS unsigned_position_width");
	else
		failures++;
	if (test_repeated_reset_uses_current_position() == 0)
		puts("PASS repeated_reset_uses_current_position");
	else
		failures++;

	if (failures) {
		printf("SUMMARY %d/4 passed\n", 4 - failures);
		return 1;
	}
	puts("SUMMARY 4/4 passed");
	return 0;
}
