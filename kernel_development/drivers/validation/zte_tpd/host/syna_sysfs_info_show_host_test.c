#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef uint32_t _DWORD;
typedef uint8_t _BYTE;
typedef long long __int64;
typedef uint64_t tcm_unaligned_u64
	__attribute__((aligned(1), may_alias));

struct kobject {
	uint8_t reserved[0x18];
	void *parent;
};

struct kobj_attribute {
	int unused;
};

struct parent_storage {
	uint8_t reserved[0x98];
	void *driver_data;
};

static char last_log[256];
static size_t log_count;

int scnprintf(char *buffer, size_t size, const char *format, ...)
{
	va_list arguments;
	int result;

	va_start(arguments, format);
	result = vsnprintf(buffer, size, format, arguments);
	va_end(arguments);
	if (result < 0)
		return result;
	if (size == 0)
		return 0;
	return result >= (int)size ? (int)size - 1 : result;
}

int printk(const char *format, ...)
{
	va_list arguments;

	log_count++;
	va_start(arguments, format);
	vsnprintf(last_log, sizeof(last_log), format, arguments);
	va_end(arguments);
	return (int)strlen(last_log);
}

#include "../../../reconstructed/zte_tpd/syna_sysfs_info_show.c"

struct fixture {
	struct kobject kobj;
	struct parent_storage parent;
	uint8_t syna_tcm[0x600];
	uint8_t tcm_dev[0x200];
	char output[4096];
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

static void fixture_init(struct fixture *fixture, uint32_t state,
			 uint8_t connected, uint8_t firmware_mode)
{
	static const uint8_t part_number[0x10] = "NX809J-PART-0001";
	static const uint8_t config_id[0x10] = {
		0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
		0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
	};

	memset(fixture, 0, sizeof(*fixture));
	fixture->kobj.parent = &fixture->parent;
	fixture->parent.driver_data = fixture->syna_tcm;
	store_pointer(fixture->syna_tcm, 0x00, fixture->tcm_dev);
	store_u32(fixture->syna_tcm, 0x384, 7);
	store_u32(fixture->syna_tcm, 0x57c, state);
	fixture->syna_tcm[0x582] = connected;

	fixture->tcm_dev[0x80] = 42;
	fixture->tcm_dev[0x81] = firmware_mode;
	memcpy(fixture->tcm_dev + 0x82, part_number, sizeof(part_number));
	store_u32(fixture->tcm_dev, 0x0c, 0x12345678);
	store_u32(fixture->tcm_dev, 0x10, 1080);
	store_u32(fixture->tcm_dev, 0x14, 2456);
	store_u32(fixture->tcm_dev, 0x18, 10);
	store_u32(fixture->tcm_dev, 0x1c, 32);
	store_u32(fixture->tcm_dev, 0x20, 18);
	store_u32(fixture->tcm_dev, 0x38, 512);
	store_u32(fixture->tcm_dev, 0x3c, 1024);
	memcpy(fixture->tcm_dev + 0x24, config_id, sizeof(config_id));
}

static ssize_t run_fixture(struct fixture *fixture)
{
	log_count = 0;
	last_log[0] = '\0';
	memset(fixture->output, 0, sizeof(fixture->output));
	return syna_sysfs_info_show(&fixture->kobj, NULL, fixture->output);
}

static void expect_common_prefix(const char *case_name,
				 const struct fixture *fixture, ssize_t length)
{
	const char *prefix =
		"Driver version:     1.9.0\n"
		"Core lib version:   2.12\n\n";

	expect(length == (ssize_t)strlen(fixture->output), case_name,
	       "returned length differs from output length");
	expect(strncmp(fixture->output, prefix, strlen(prefix)) == 0,
	       case_name, "common version output mismatch");
	expect(log_count == 0, case_name, "unexpected printk");
}

static void test_disconnected(void)
{
	const char *case_name = "disconnected";
	struct fixture fixture;
	ssize_t length;

	fixture_init(&fixture, 0, 0, 1);
	length = run_fixture(&fixture);
	expect_common_prefix(case_name, &fixture, length);
	expect(strstr(fixture.output, "Device is NOT connected\n") != NULL,
	       case_name, "disconnected state missing");
}

static void test_bare_connection(void)
{
	const char *case_name = "bare_connection";
	struct fixture fixture;
	ssize_t length;

	fixture_init(&fixture, 3, 1, 1);
	length = run_fixture(&fixture);
	expect_common_prefix(case_name, &fixture, length);
	expect(strstr(fixture.output, "Device in BARE connection\n") != NULL,
	       case_name, "bare state missing");
}

static void test_bootloader(void)
{
	const char *case_name = "bootloader";
	struct fixture fixture;
	ssize_t length;

	fixture_init(&fixture, 2, 1, 11);
	length = run_fixture(&fixture);
	expect_common_prefix(case_name, &fixture, length);
	expect(strstr(fixture.output,
		      "Character Dev. Node: /dev/tcm* (ref. count:7)\n\n") != NULL,
	       case_name, "character device line missing");
	expect(strstr(fixture.output,
		      "Firmware mode:      Bootloader, 0x0b\n") != NULL,
	       case_name, "bootloader mode missing");
	expect(strstr(fixture.output, "Config ID:") == NULL,
	       case_name, "application-only data leaked into bootloader");
}

static void test_application(void)
{
	const char *case_name = "application";
	struct fixture fixture;
	ssize_t length;

	fixture_init(&fixture, 2, 1, 1);
	length = run_fixture(&fixture);
	expect_common_prefix(case_name, &fixture, length);
	expect(strstr(fixture.output,
		      "Firmware mode:      Application Firmware, 0x01\n") != NULL,
	       case_name, "application mode missing");
	expect(strstr(fixture.output,
		      "Part number:        NX809J-PART-0001\n") != NULL,
	       case_name, "part number missing");
	expect(strstr(fixture.output, "Packrat number:     305419896\n\n") != NULL,
	       case_name, "packrat number missing");
	expect(strstr(fixture.output,
		      "Config ID:          0x 0 0x 1 0x 2 0x 3 0x 4 0x 5 0x 6 0x 7 "
		      "0x 8 0x 9 0x a 0x b 0x c 0x d 0x e 0x f \n") != NULL,
	       case_name, "config id missing");
	expect(strstr(fixture.output, "Max X & Y:          1080, 2456\n") != NULL,
	       case_name, "dimensions missing");
	expect(strstr(fixture.output, "Num of objects:     10\n") != NULL,
	       case_name, "object count missing");
	expect(strstr(fixture.output, "Num of cols & rows: 18, 32\n") != NULL,
	       case_name, "image dimensions missing");
	expect(strstr(fixture.output, "Max. Read Size:     1024 bytes\n") != NULL,
	       case_name, "read size missing");
	expect(strstr(fixture.output, "Max. Write Size:    512 bytes\n") != NULL,
	       case_name, "write size missing");
}

static void test_unknown_firmware_mode(void)
{
	const char *case_name = "unknown_firmware_mode";
	struct fixture fixture;
	ssize_t length;

	fixture_init(&fixture, 2, 1, 7);
	length = run_fixture(&fixture);
	expect_common_prefix(case_name, &fixture, length);
	expect(strstr(fixture.output,
		      "Firmware mode:      Mode 0x07\n") != NULL,
	       case_name, "unknown firmware mode missing");
	expect(strstr(fixture.output, "Config ID:") == NULL,
	       case_name, "unknown mode emitted application-only data");
}

int main(void)
{
	test_disconnected();
	test_bare_connection();
	test_bootloader();
	test_application();
	test_unknown_firmware_mode();
	puts("PASS syna_sysfs_info_show host tests (5 cases)");
	return 0;
}
