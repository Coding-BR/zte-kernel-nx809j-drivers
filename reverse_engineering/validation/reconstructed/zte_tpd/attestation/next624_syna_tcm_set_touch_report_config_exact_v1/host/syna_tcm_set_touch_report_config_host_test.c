#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define static_assert(condition) _Static_assert(condition, #condition)

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

struct tcm_dev;

struct device {
	unsigned int marker;
};

static struct device managed_device;
static bool managed_available;
static bool allocation_failed;
static int copy_result;
static int write_result;
static int alloc_calls;
static int free_calls;
static int copy_calls;
static int write_calls;
static unsigned int alloc_size;
static u8 write_payload[32];
static unsigned int write_length;
static unsigned int write_delay;
static u8 write_command;
static u8 *write_response;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

struct device *syna_request_managed_device(void)
{
	return managed_available ? &managed_device : NULL;
}

void *devm_kmalloc(struct device *device, size_t size, unsigned int flags)
{
	(void)flags;
	if (device != &managed_device)
		exit(2);
	++alloc_calls;
	alloc_size = (unsigned int)size;
	if (allocation_failed)
		return NULL;
	return calloc(1, size);
}

int syna_pal_mem_cpy_1(void *destination, unsigned int destination_size,
			       const void *source, unsigned int source_size,
			       unsigned int copy_size)
{
	++copy_calls;
	if (copy_result)
		return copy_result;
	if (!destination || !source || copy_size > destination_size ||
	    copy_size > source_size)
		return -22;
	memcpy(destination, source, copy_size);
	return 0;
}

void syna_pal_mem_free_0(void *memory)
{
	if (memory)
		++free_calls;
	free(memory);
}

static int mock_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
				      u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	++write_calls;
	write_command = command;
	write_length = length;
	write_delay = delay_ms;
	write_response = response_code;
	memset(write_payload, 0, sizeof(write_payload));
	if (payload && length <= sizeof(write_payload))
		memcpy(write_payload, payload, length);
	return write_result;
}

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_set_touch_report_config.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void reset_fixture(struct tcm_dev *tcm,
				  struct tcm_transport_overlay *transport)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(transport, 0, sizeof(*transport));
	tcm->firmware_mode = 1;
	tcm->transport = transport;
	tcm->command_delay_ms = 37;
	tcm->application_info.version[0] = 1;
	tcm->application_info.max_touch_report_config_size[0] = 8;
	tcm->write_message = mock_write_message;
	managed_available = true;
	allocation_failed = false;
	copy_result = 0;
	write_result = 0;
	alloc_calls = 0;
	free_calls = 0;
	copy_calls = 0;
	write_calls = 0;
	alloc_size = 0;
	write_length = 0;
	write_delay = 0;
	write_command = 0;
	write_response = (u8 *)(uintptr_t)1;
	memset(write_payload, 0, sizeof(write_payload));
}

static void test_validation(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[4] = { 1, 2, 3, 4 };

	reset_fixture(&tcm, &transport);
	expect_true(syna_tcm_set_touch_report_config(NULL, config, 4, 1) == -241,
			"null tcm rejected");
	expect_true(syna_tcm_set_touch_report_config(&tcm, NULL, 4, 1) == -241,
			"null config rejected");
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 0, 1) == -241,
			"zero length rejected");
	tcm.firmware_mode = 0x0b;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 1) == -241,
			"wrong firmware mode rejected");
	expect_true(write_calls == 0, "validation does not write");
}

static void test_config_limits(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[9] = { 0 };

	reset_fixture(&tcm, &transport);
	tcm.application_info.version[0] = 0;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 1) == -241,
			"missing current config rejected");

	reset_fixture(&tcm, &transport);
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, sizeof(config),
							1) == -241,
			"oversized config rejected");
	expect_true(alloc_calls == 0 && write_calls == 0,
			"limit failures allocate and write nothing");
}

static void test_allocation_and_copy_failures(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[4] = { 9, 8, 7, 6 };

	reset_fixture(&tcm, &transport);
	managed_available = false;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 1) == -243,
			"missing managed device rejected");

	reset_fixture(&tcm, &transport);
	allocation_failed = true;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 1) == -243,
			"allocation failure rejected");

	reset_fixture(&tcm, &transport);
	copy_result = -22;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 1) == -22,
			"copy error propagated");
	expect_true(copy_calls == 1 && free_calls == 1 && write_calls == 0,
			"copy failure frees without writing");
}

static void test_success_and_delay_paths(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[4] = { 9, 8, 7, 6 };

	reset_fixture(&tcm, &transport);
	transport.flags = 0;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 0) == 0,
			"polling-mode update succeeds");
	expect_true(alloc_size == 8 && write_command == 0x26 &&
				write_length == 8 && write_delay == 37 &&
				write_response == NULL && write_payload[0] == 9 &&
				write_payload[3] == 6 && free_calls == 1,
			"polling-mode write contract preserved");

	reset_fixture(&tcm, &transport);
	transport.flags = 1;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 0) == 0,
			"irq-controlled update succeeds");
	expect_true(write_delay == 0, "irq-controlled path keeps zero delay");

	reset_fixture(&tcm, &transport);
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 99) == 0,
			"explicit delay update succeeds");
	expect_true(write_delay == 99, "explicit delay is preserved");

	reset_fixture(&tcm, &transport);
	write_result = -19;
	expect_true(syna_tcm_set_touch_report_config(&tcm, config, 4, 1) == -19,
			"write error propagated");
	expect_true(free_calls == 1, "write error frees configuration");
}

int main(void)
{
	test_validation();
	test_config_limits();
	test_allocation_and_copy_failures();
	test_success_and_delay_paths();
	puts("PASS: syna_tcm_set_touch_report_config host contract");
	return 0;
}
