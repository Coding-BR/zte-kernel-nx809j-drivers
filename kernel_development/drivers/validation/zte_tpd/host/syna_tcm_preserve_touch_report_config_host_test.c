#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

#define static_assert(condition) _Static_assert(condition, #condition)

struct tcm_dev;
struct device {
	unsigned int marker;
};

static struct device managed_device;
static bool managed_available;
static bool allocation_failed;
static int write_result;
static int write_calls;
static int alloc_calls;
static int free_calls;
static int lock_calls;
static int unlock_calls;
static u8 write_command;
static u32 write_delay;
static u8 *write_response;
static u32 write_length;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

void mutex_lock(void *lock)
{
	(void)lock;
	++lock_calls;
}

void mutex_unlock(void *lock)
{
	(void)lock;
	++unlock_calls;
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
	if (allocation_failed)
		return NULL;
	return calloc(1, size);
}

void devm_kfree(struct device *device, void *memory)
{
	if (device != &managed_device)
		exit(3);
	if (memory) {
		++free_calls;
		free(memory);
	}
}

static int mock_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
				      u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	(void)payload;
	++write_calls;
	write_command = command;
	write_length = length;
	write_response = response_code;
	write_delay = delay_ms;
	return write_result;
}

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_preserve_touch_report_config.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void dispose_fixture(struct tcm_dev *tcm)
{
	if (tcm->touch_report_config.buffer.data) {
		free(tcm->touch_report_config.buffer.data);
		tcm->touch_report_config.buffer.data = NULL;
	}
}

static void reset_fixture(struct tcm_dev *tcm,
				  struct tcm_transport_overlay *transport,
				  u8 *response_data, u32 response_length,
				  u32 response_capacity)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(transport, 0, sizeof(*transport));
	tcm->firmware_mode = 1;
	tcm->transport = transport;
	tcm->command_delay_ms = 37;
	tcm->response.data = response_data;
	tcm->response.data_length = response_length;
	tcm->response.buf_size = response_capacity;
	tcm->write_message = mock_write_message;
	managed_available = true;
	allocation_failed = false;
	write_result = 0;
	write_calls = 0;
	alloc_calls = 0;
	free_calls = 0;
	lock_calls = 0;
	unlock_calls = 0;
	write_command = 0;
	write_delay = 0;
	write_response = (u8 *)(uintptr_t)1;
	write_length = 0;
}

static void test_validation_and_transport(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	u8 response_data[] = { 0 };

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	expect_true(syna_tcm_preserve_touch_report_config(NULL, 1) == -241,
			"null tcm rejected");
	tcm.firmware_mode = 0x0b;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == -241,
			"wrong firmware mode rejected");
	expect_true(write_calls == 0, "invalid mode does not write");

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	write_result = -19;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == -19,
			"write failure propagated");
	expect_true(write_command == 0x25 && write_length == 0 &&
				write_response == NULL && tcm.touch_report_parser_mode == 0,
			"request command ABI preserved");

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	tcm.touch_report_parser_mode = 77;
	tcm.response.data = NULL;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == -241 &&
				tcm.touch_report_parser_mode == 77,
			"missing response preserves early-return state");

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data), 0);
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == -241,
			"zero response capacity rejected");
}

static void test_success_and_delay_paths(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	u8 response_data[] = { 3, 5, 3, 4, 0 };

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	transport.flags = 0;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 0) == 0,
			"polling-mode preserve succeeds");
	expect_true(write_delay == 37 && write_command == 0x25 &&
				write_response == NULL && write_length == 0 &&
				tcm.touch_report_config.buffer.data_length == 5 &&
				tcm.touch_report_config.format_offset == 1 &&
				tcm.touch_report_config.header_bits == 8 &&
				tcm.touch_report_config.report_size == 0 &&
				tcm.touch_report_parser_mode == 0 &&
				tcm.response.lock_depth == 0 &&
				tcm.touch_report_config.buffer.lock_depth == 0,
			"polling-mode preserve state and delay are correct");
	dispose_fixture(&tcm);

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	transport.flags = 1;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 0) == 0 &&
				write_delay == 0,
			"IRQ-controlled path keeps zero delay");
	dispose_fixture(&tcm);

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 99) == 0 &&
				write_delay == 99,
			"explicit delay is preserved");
	dispose_fixture(&tcm);
}

static void test_reallocation_and_failures(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	u8 response_data[] = { 5, 3 };

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	tcm.touch_report_config.buffer.data = calloc(1, 8);
	tcm.touch_report_config.buffer.buf_size = 8;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == 0 &&
				alloc_calls == 0 && free_calls == 0 &&
				tcm.touch_report_config.report_size == 3,
			"existing capacity is reused");
	dispose_fixture(&tcm);

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	allocation_failed = true;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == -243 &&
				lock_calls == 2 && unlock_calls == 2 &&
				tcm.response.lock_depth == 0 &&
				tcm.touch_report_config.buffer.lock_depth == 0,
			"allocation failure releases both locks");

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data),
			      sizeof(response_data));
	managed_available = false;
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == -243,
			"managed-device failure propagated");

	reset_fixture(&tcm, &transport, response_data, sizeof(response_data), 1);
	expect_true(syna_tcm_preserve_touch_report_config(&tcm, 1) == -22,
			"response copy bounds failure rejected");
	dispose_fixture(&tcm);
}

int main(void)
{
	test_validation_and_transport();
	test_success_and_delay_paths();
	test_reallocation_and_failures();
	puts("PASS: syna_tcm_preserve_touch_report_config host contract");
	return 0;
}
