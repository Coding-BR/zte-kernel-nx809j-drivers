/* SPDX-License-Identifier: GPL-2.0-only */
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

struct tcm_buffer {
	u8 *data;
	u32 buf_size;
	u32 data_length;
	u8 mutex[0x30];
	u8 lock_depth;
	u8 reserved_41[0x07];
};

struct tcm_identification_info {
	u8 version;
	u8 mode;
	u8 part_number[0x10];
	u8 build_id[0x04];
	u8 max_write_size[0x02];
	u8 reserved_18[0x18];
};

struct tcm_dev;
typedef int (*tcm_read_message_fn)(struct tcm_dev *tcm, u8 *code);
typedef int (*tcm_write_message_fn)(struct tcm_dev *tcm, u8 command,
				    u8 *payload, u32 length,
				    u8 *response_code, u32 delay_ms);

/* Only stock-proven fields used by the function under test are named. */
struct tcm_dev {
	u8 reserved_0000[0x08];
	union {
		u16 detection_state;
		struct {
			u8 reserved_0008;
			u8 firmware_mode;
		};
	};
	u8 reserved_000a[0x02];
	u32 build_id;
	u8 reserved_0010[0x70];
	struct tcm_identification_info identification_info;
	u8 reserved_00b0[0x190];
	struct tcm_buffer message_buf;
	u8 reserved_0288[0x108];
	tcm_read_message_fn read_message;
	tcm_write_message_fn write_message;
};

_Static_assert(sizeof(struct tcm_buffer) == 0x48, "tcm_buffer size");
_Static_assert(sizeof(struct tcm_identification_info) == 0x30,
	       "identification_info size");
_Static_assert(offsetof(struct tcm_dev, detection_state) == 0x08,
	       "detection_state offset");
_Static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09,
	       "firmware_mode offset");
_Static_assert(offsetof(struct tcm_dev, build_id) == 0x0c,
	       "build_id offset");
_Static_assert(offsetof(struct tcm_dev,
			identification_info.part_number) == 0x82,
	       "part_number offset");
_Static_assert(offsetof(struct tcm_dev, message_buf) == 0x240,
	       "message_buf offset");
_Static_assert(offsetof(struct tcm_dev, message_buf.buf_size) == 0x248,
	       "message_buf.buf_size offset");
_Static_assert(offsetof(struct tcm_dev, read_message) == 0x390,
	       "read_message offset");
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
#define barrier() __asm__ __volatile__("" : : : "memory")

#include "../../../reconstructed/zte_tpd/syna_tcm_detect_device.c"

struct harness_state {
	unsigned int detect_calls;
	struct tcm_dev *detect_tcm;
	bool quick_setup;
	bool reinit;
	u16 state_at_entry;
	int detect_result;
	u8 detected_mode;
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

int syna_tcm_v1_detect(struct tcm_dev *tcm_dev, bool quick_setup,
			bool reinit)
{
	state.detect_calls++;
	state.detect_tcm = tcm_dev;
	state.quick_setup = quick_setup;
	state.reinit = reinit;
	state.state_at_entry = tcm_dev->detection_state;
	if (state.detect_result >= 0)
		tcm_dev->firmware_mode = state.detected_mode;
	return state.detect_result;
}

static int read_message_stub(struct tcm_dev *tcm, u8 *code)
{
	(void)tcm;
	(void)code;
	return 0;
}

static int write_message_stub(struct tcm_dev *tcm, u8 command, u8 *payload,
			      u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	(void)command;
	(void)payload;
	(void)length;
	(void)response_code;
	(void)delay_ms;
	return 0;
}

static void reset_state(struct tcm_dev *tcm)
{
	memset(&state, 0, sizeof(state));
	memset(captured_log, 0, sizeof(captured_log));
	captured_log_length = 0;
	memset(tcm, 0, sizeof(*tcm));
	tcm->detection_state = 0xffff;
	tcm->read_message = read_message_stub;
	tcm->write_message = write_message_stub;
	state.detected_mode = 1;
}

static bool log_contains(const char *text)
{
	return strstr(captured_log, text) != NULL;
}

static void check_detect_call(struct tcm_dev *tcm, bool quick_setup,
			      bool reinit)
{
	CHECK(state.detect_calls == 1);
	CHECK(state.detect_tcm == tcm);
	CHECK(state.quick_setup == quick_setup);
	CHECK(state.reinit == reinit);
	CHECK(state.state_at_entry == 0);
}

static void test_null_device(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	CHECK(syna_tcm_detect_device(NULL, 1, false) == -241);
	CHECK(state.detect_calls == 0);
	CHECK(log_contains("Invalid tcm device handle"));
}

static void test_unsupported_v2(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	CHECK(syna_tcm_detect_device(&tcm, 2, false) == -241);
	CHECK(tcm.detection_state == 0);
	CHECK(state.detect_calls == 0);
	CHECK(log_contains("Touchcomm v2 is not built in"));
}

static void test_invalid_protocol(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	CHECK(syna_tcm_detect_device(&tcm, 0x35, true) == -241);
	CHECK(tcm.detection_state == 0);
	CHECK(state.detect_calls == 0);
	CHECK(log_contains("Invalid version of TouchComm protocol"));
}

static void test_v1_failure_without_response(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	state.detect_result = -9;
	CHECK(syna_tcm_detect_device(&tcm, 1, true) == -245);
	check_detect_call(&tcm, false, true);
	CHECK(!log_contains("a5 5a 12 34"));
}

static void test_v1_failure_with_response(void)
{
	struct tcm_dev tcm;
	u8 response[] = { 0xa5, 0x5a, 0x12, 0x34 };

	reset_state(&tcm);
	state.detect_result = -7;
	tcm.message_buf.data = response;
	tcm.message_buf.buf_size = sizeof(response);
	CHECK(syna_tcm_detect_device(&tcm, 1, false) == -245);
	check_detect_call(&tcm, false, false);
	CHECK(log_contains("a5 5a 12 34 ..."));
}

static void test_missing_write_callback(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	tcm.write_message = NULL;
	CHECK(syna_tcm_detect_device(&tcm, 1, false) == -245);
	check_detect_call(&tcm, false, false);
	CHECK(log_contains("Invalid TouchCom R/W operations"));
	CHECK(log_contains("Fail to allocate the handler"));
}

static void test_missing_read_callback(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	tcm.read_message = NULL;
	CHECK(syna_tcm_detect_device(&tcm, 1, false) == -245);
	check_detect_call(&tcm, false, false);
	CHECK(log_contains("Invalid TouchCom R/W operations"));
}

static void test_quick_setup(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	state.detected_mode = 0x7a;
	CHECK(syna_tcm_detect_device(&tcm, 0x81, true) == 1);
	check_detect_call(&tcm, true, true);
	CHECK(!log_contains("unknown mode"));
}

static void test_bootloader_mode(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	state.detected_mode = 11;
	CHECK(syna_tcm_detect_device(&tcm, 1, false) == 11);
	check_detect_call(&tcm, false, false);
	CHECK(log_contains("Device in Bootloader"));
}

static void test_application_mode(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	state.detected_mode = 1;
	tcm.build_id = 33169;
	memcpy(tcm.identification_info.part_number, "NX809J", 7);
	CHECK(syna_tcm_detect_device(&tcm, 0x41, false) == 1);
	check_detect_call(&tcm, false, false);
	CHECK(log_contains("build id: 33169, NX809J"));
}

static void test_unknown_mode(void)
{
	struct tcm_dev tcm;

	reset_state(&tcm);
	state.detected_mode = 0x7a;
	CHECK(syna_tcm_detect_device(&tcm, 1, false) == 0x7a);
	check_detect_call(&tcm, false, false);
	CHECK(log_contains("unknown mode:0x7a detected"));
}

int main(void)
{
	test_null_device();
	test_unsupported_v2();
	test_invalid_protocol();
	test_v1_failure_without_response();
	test_v1_failure_with_response();
	test_missing_write_callback();
	test_missing_read_callback();
	test_quick_setup();
	test_bootloader_mode();
	test_application_mode();
	test_unknown_mode();

	if (failures)
		return 1;

	puts("PASS syna_tcm_detect_device host tests (11 cases)");
	return 0;
}
