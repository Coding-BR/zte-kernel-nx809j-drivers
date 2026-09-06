#include <assert.h>
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
typedef long long __int64;
#define __fastcall

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int write_return;
static int write_calls;
static u32 last_address;
static u32 last_chunk;
static u32 last_delay;
static u8 last_command;
static u8 response_storage[32];
static u32 response_length_override;
static bool override_response_length;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static u32 decode_address(const u8 *payload)
{
	return ((u32)payload[0] << 1) |
	       ((u32)payload[1] << 9) |
	       ((u32)payload[2] << 17) |
	       ((u32)payload[3] << 25);
}

static u32 decode_chunk(const u8 *payload)
{
	return ((u32)payload[4] << 1) | ((u32)payload[5] << 9);
}

static int mock_write_message(struct tcm_dev *tcm, u8 command,
				      u8 *payload, u32 length,
				      u8 *response_code, u32 delay_ms)
{
	(void)response_code;
	if (write_return < 0)
		return write_return;
	++write_calls;
	last_command = command;
	last_address = decode_address(payload);
	last_chunk = decode_chunk(payload);
	last_delay = delay_ms;
	if (length != 6)
		return -99;
	tcm->resp_buf.data_length = override_response_length ?
		response_length_override : last_chunk;
	if (tcm->resp_buf.data)
		memset(tcm->resp_buf.data, 0xa0 + write_calls,
		       tcm->resp_buf.buf_size);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash.c"

static void reset_fixture(struct tcm_dev *tcm,
				  struct tcm_transport_overlay *transport)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(transport, 0, sizeof(*transport));
	memset(response_storage, 0, sizeof(response_storage));
	write_return = 0;
	write_calls = 0;
	last_address = 0;
	last_chunk = 0;
	last_delay = 0;
	last_command = 0;
	response_length_override = 0;
	override_response_length = false;
	tcm->transport = transport;
	tcm->write_message = mock_write_message;
	tcm->resp_buf.data = response_storage;
	tcm->resp_buf.buf_size = sizeof(response_storage);
	tcm->firmware_mode = 0x0b;
	tcm->detection_state = 0;
	transport->flags = 1;
}

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void test_validation(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	u8 destination[8];

	reset_fixture(&tcm, &transport);
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 1, 0, 4, 0) == -241,
			"null destination returns -241");
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 0,
					(__int64)(uintptr_t)destination, 4, 0) == -241,
			"zero address returns -241");
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 1,
					(__int64)(uintptr_t)destination, 0, 0) == -241,
			"zero length returns -241");
}

static void test_single_chunk_and_delay(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	u8 destination[8] = {};

	reset_fixture(&tcm, &transport);
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 0x1234,
					(__int64)(uintptr_t)destination, 4, 0) == 0,
			"single chunk succeeds");
	expect_true(write_calls == 1 && last_command == 0x13 &&
			    last_address == 0x1234 && last_chunk == 4 &&
			    last_delay == 0 && destination[0] == 0xa1,
			    "command payload and response copy are correct");

	reset_fixture(&tcm, &transport);
	transport.flags = 0;
	tcm.command_delay_ms = 7;
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 0x20,
					(__int64)(uintptr_t)destination, 8, 0) == 0,
			"transport delay fallback succeeds");
	expect_true(last_delay == 7, "command delay fallback is selected");
}

static void test_special_max_write_and_failures(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	u8 destination[16] = {};

	reset_fixture(&tcm, &transport);
	tcm.detection_state = 2;
	tcm.max_write_size = 6;
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 0x100,
					(__int64)(uintptr_t)destination, 8, 1000) == 0,
			"max-write-six special path succeeds");
	expect_true(write_calls == 1 && last_chunk == 0 && last_delay == 0,
			    "special path preserves zero chunk and delay arithmetic");

	reset_fixture(&tcm, &transport);
	write_return = -19;
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 1,
					(__int64)(uintptr_t)destination, 4, 0) == -19,
			"write callback error is propagated");

	reset_fixture(&tcm, &transport);
	override_response_length = true;
	response_length_override = 3;
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 1,
					(__int64)(uintptr_t)destination, 4, 0) == -241,
			"response length mismatch returns -241");

	reset_fixture(&tcm, &transport);
	tcm.resp_buf.data = NULL;
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 1,
					(__int64)(uintptr_t)destination, 4, 0) == -22,
			"null response buffer returns -22");

	reset_fixture(&tcm, &transport);
	tcm.resp_buf.buf_size = 2;
	expect_true(syna_tcm_read_flash((__int64)(uintptr_t)&tcm, 1,
					(__int64)(uintptr_t)destination, 4, 0) == -22,
			"short response buffer returns -22");
}

int main(void)
{
	test_validation();
	test_single_chunk_and_delay();
	test_special_max_write_and_failures();
	puts("PASS: syna_tcm_read_flash host contract");
	return 0;
}
