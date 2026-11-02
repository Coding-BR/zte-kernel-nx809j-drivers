/* SPDX-License-Identifier: GPL-2.0-only */
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

struct tcm_buffer {
	u8 *data;
	u32 buf_size;
	u32 data_length;
	u8 mutex[0x30];
	u8 lock_depth;
	u8 reserved_41[0x07];
};

struct tcm_transport_overlay {
	u8 reserved_0000[0x14];
	u8 flags;
};

struct tcm_dev;
typedef int (*tcm_write_message_fn)(struct tcm_dev *tcm, u8 command,
				    u8 *payload, u32 length,
				    u8 *response_code, u32 delay_ms);

/* Only stock-proven fields used by the function under test are named. */
struct tcm_dev {
	u8 reserved_0000[0x09];
	u8 firmware_mode;
	u8 reserved_000a[0x3e];
	struct tcm_transport_overlay *transport;
	u8 reserved_0050[0xf8];
	struct tcm_buffer resp_buf;
	u8 reserved_0190[0x7c];
	u32 command_delay_ms;
	u8 reserved_0210[0x188];
	tcm_write_message_fn write_message;
};

_Static_assert(sizeof(struct tcm_buffer) == 0x48, "tcm_buffer size");
_Static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09,
	       "firmware_mode offset");
_Static_assert(offsetof(struct tcm_dev, transport) == 0x48,
	       "transport offset");
_Static_assert(offsetof(struct tcm_dev, resp_buf) == 0x148,
	       "resp_buf offset");
_Static_assert(offsetof(struct tcm_dev, command_delay_ms) == 0x20c,
	       "command_delay_ms offset");
_Static_assert(offsetof(struct tcm_dev, write_message) == 0x398,
	       "write_message offset");

static char captured_log[8192];
static size_t captured_log_length;

static int host_printk(const char *format, ...)
{
	va_list args;
	int written;

	va_start(args, format);
	written = vsnprintf(captured_log + captured_log_length,
			    sizeof(captured_log) - captured_log_length,
			    format, args);
	va_end(args);
	if (written > 0) {
		size_t available = sizeof(captured_log) - captured_log_length;

		captured_log_length += (size_t)written < available ?
			(size_t)written : available - 1;
	}

	return written;
}

#define printk host_printk

static int syna_tcm_buf_copy_2(struct tcm_buffer *dst,
			       struct tcm_buffer *src);

#include "../../../reconstructed/zte_tpd/syna_tcm_run_production_test.c"

struct harness_state {
	unsigned int write_calls;
	unsigned int copy_calls;
	struct tcm_dev *write_tcm;
	u8 command;
	u8 payload_at_entry;
	u32 length;
	u8 *response_code;
	u32 delay_ms;
	struct tcm_buffer *copy_dst;
	struct tcm_buffer *copy_src;
	int write_result;
	int copy_result;
	bool mutate_payload;
	u8 mutated_payload;
};

static struct harness_state state;
static unsigned int failures;

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, \
			#condition); \
		failures++; \
	} \
} while (0)

static int write_message_stub(struct tcm_dev *tcm, u8 command, u8 *payload,
			      u32 length, u8 *response_code, u32 delay_ms)
{
	state.write_calls++;
	state.write_tcm = tcm;
	state.command = command;
	state.payload_at_entry = payload[0];
	state.length = length;
	state.response_code = response_code;
	state.delay_ms = delay_ms;
	if (state.mutate_payload)
		payload[0] = state.mutated_payload;

	return state.write_result;
}

static int syna_tcm_buf_copy_2(struct tcm_buffer *dst,
			       struct tcm_buffer *src)
{
	state.copy_calls++;
	state.copy_dst = dst;
	state.copy_src = src;
	return state.copy_result;
}

static void reset_state(struct tcm_dev *tcm,
			struct tcm_transport_overlay *transport)
{
	memset(&state, 0, sizeof(state));
	memset(captured_log, 0, sizeof(captured_log));
	captured_log_length = 0;
	memset(tcm, 0, sizeof(*tcm));
	memset(transport, 0, sizeof(*transport));
	tcm->firmware_mode = 1;
	tcm->transport = transport;
	tcm->command_delay_ms = 123;
	tcm->write_message = write_message_stub;
}

static bool log_contains(const char *text)
{
	return strstr(captured_log, text) != NULL;
}

static void check_common_write(struct tcm_dev *tcm, u8 test_code,
			       u32 delay_ms)
{
	CHECK(state.write_calls == 1);
	CHECK(state.write_tcm == tcm);
	CHECK(state.command == 42);
	CHECK(state.payload_at_entry == test_code);
	CHECK(state.length == 1);
	CHECK(state.response_code == NULL);
	CHECK(state.delay_ms == delay_ms);
}

static void test_null_device(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;

	reset_state(&tcm, &transport);
	CHECK(syna_tcm_run_production_test(NULL, 5, NULL, 0) == -241);
	CHECK(state.write_calls == 0);
	CHECK(state.copy_calls == 0);
	CHECK(log_contains("Invalid tcm device handle"));
}

static void test_wrong_firmware_mode(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;

	reset_state(&tcm, &transport);
	tcm.firmware_mode = 0x7a;
	CHECK(syna_tcm_run_production_test(&tcm, 5, NULL, 0) == -241);
	CHECK(state.write_calls == 0);
	CHECK(state.copy_calls == 0);
	CHECK(log_contains("application fw mode, mode: 7a"));
}

static void test_explicit_response_mode(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;

	reset_state(&tcm, &transport);
	tcm.transport = NULL;
	state.write_result = 5;
	CHECK(syna_tcm_run_production_test(&tcm, 0x31, NULL, 77) == 5);
	check_common_write(&tcm, 0x31, 77);
	CHECK(!log_contains("polling mode"));
}

static void test_irq_control_response_mode(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;

	reset_state(&tcm, &transport);
	transport.flags = 1;
	state.write_result = 9;
	CHECK(syna_tcm_run_production_test(&tcm, 0x22, NULL, 0) == 9);
	check_common_write(&tcm, 0x22, 0);
	CHECK(!log_contains("polling mode"));
}

static void test_polling_fallback(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;

	reset_state(&tcm, &transport);
	state.write_result = 11;
	CHECK(syna_tcm_run_production_test(&tcm, 0x44, NULL, 0) == 11);
	check_common_write(&tcm, 0x44, 123);
	CHECK(log_contains("No support of IRQ control, use polling mode instead"));
}

static void test_write_failure_uses_post_callback_payload(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;

	reset_state(&tcm, &transport);
	state.write_result = -91;
	state.mutate_payload = true;
	state.mutated_payload = 0xa5;
	CHECK(syna_tcm_run_production_test(&tcm, 0x12, NULL, 8) == -91);
	check_common_write(&tcm, 0x12, 8);
	CHECK(state.copy_calls == 0);
	CHECK(log_contains("PIDA5 (command 0x2A)"));
}

static void test_null_output_preserves_positive_result(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;

	reset_state(&tcm, &transport);
	state.write_result = 23;
	CHECK(syna_tcm_run_production_test(&tcm, 0x08, NULL, 4) == 23);
	check_common_write(&tcm, 0x08, 4);
	CHECK(state.copy_calls == 0);
}

static void test_copy_success(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	struct tcm_buffer output = { 0 };

	reset_state(&tcm, &transport);
	state.write_result = 7;
	CHECK(syna_tcm_run_production_test(&tcm, 0x09, &output, 3) == 0);
	check_common_write(&tcm, 0x09, 3);
	CHECK(state.copy_calls == 1);
	CHECK(state.copy_dst == &output);
	CHECK(state.copy_src == &tcm.resp_buf);
}

static void test_copy_failure(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	struct tcm_buffer output = { 0 };

	reset_state(&tcm, &transport);
	state.copy_result = -34;
	CHECK(syna_tcm_run_production_test(&tcm, 0x0a, &output, 2) == -34);
	check_common_write(&tcm, 0x0a, 2);
	CHECK(state.copy_calls == 1);
	CHECK(state.copy_dst == &output);
	CHECK(state.copy_src == &tcm.resp_buf);
	CHECK(log_contains("Fail to copy testing data"));
}

int main(void)
{
	test_null_device();
	test_wrong_firmware_mode();
	test_explicit_response_mode();
	test_irq_control_response_mode();
	test_polling_fallback();
	test_write_failure_uses_post_callback_payload();
	test_null_output_preserves_positive_result();
	test_copy_success();
	test_copy_failure();

	if (failures)
		return 1;

	puts("PASS syna_tcm_run_production_test host tests (9 cases)");
	return 0;
}
