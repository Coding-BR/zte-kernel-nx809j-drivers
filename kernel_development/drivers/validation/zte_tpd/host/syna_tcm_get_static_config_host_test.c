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

#define __fastcall
#define __int64 long long
#define __int16 short
#define __int8 char
#define _BYTE unsigned char
#define _DWORD unsigned int
#define _QWORD unsigned long long
#define __break(value) ((void)(value))
#define static_assert(condition, ...) _Static_assert(condition, #condition)

static char unk_31ACA[] = "length";
static char unk_3365A[] = "invalid";
static char unk_33E1E[] = "mode";
static char unk_38244[] = "lock";
static char unk_3944E[] = "copy";
static char unk_39AB7[] = "write";
static char unk_39F12[] = "buffer";
static char unk_3BA3F[] = "delay";

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int write_result;
static int write_calls;
static u8 last_command;
static u32 last_delay;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int printk_calls;

int printk(const void *format, ...)
{
	(void)format;
	++printk_calls;
	return 0;
}

static int test_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
				      u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	(void)payload;
	(void)length;
	(void)response_code;
	++write_calls;
	last_command = command;
	last_delay = delay_ms;
	return write_result;
}

static void mutex_lock(unsigned long address)
{
	(void)address;
	++lock_calls;
}

static void mutex_unlock(unsigned long address)
{
	(void)address;
	++unlock_calls;
}

static void syna_tcm_buf_unlock_0(unsigned long buffer)
{
	(void)buffer;
	++unlock_calls;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_get_static_config.c"

static void expect(bool condition, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL syna_tcm_get_static_config: %s\n", message);
	exit(EXIT_FAILURE);
}

static void put_u16(struct tcm_dev *tcm, size_t offset, u16 value)
{
	memcpy((u8 *)tcm + offset, &value, sizeof(value));
}

static void put_u32(struct tcm_dev *tcm, size_t offset, u32 value)
{
	memcpy((u8 *)tcm + offset, &value, sizeof(value));
}

static void put_ptr(struct tcm_dev *tcm, size_t offset, void *value)
{
	uintptr_t raw = (uintptr_t)value;
	memcpy((u8 *)tcm + offset, &raw, sizeof(raw));
}

static void reset_fixture(struct tcm_dev *tcm,
				  struct tcm_transport_overlay *transport)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(transport, 0, sizeof(*transport));
	tcm->firmware_mode = 1;
	tcm->transport = transport;
	tcm->command_delay_ms = 77;
	tcm->write_message = test_write_message;
	write_result = 0;
	write_calls = 0;
	last_command = 0;
	last_delay = 0;
	lock_calls = 0;
	unlock_calls = 0;
	printk_calls = 0;
}

static void test_validation(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char output[4] = {0};

	reset_fixture(&tcm, &transport);
	expect(syna_tcm_get_static_config(NULL, output, sizeof(output), 1) == -241,
	       "NULL device returns -241");
	tcm.firmware_mode = 2;
	expect(syna_tcm_get_static_config(&tcm, NULL, sizeof(output), 1) == -241,
       "non-application firmware mode is rejected");
	expect(syna_tcm_get_static_config(&tcm, output, sizeof(output), 1) == -241,
	       "invalid firmware mode returns -241");
	expect(write_calls == 0, "validation failures do not write");
}

static void test_length_and_delay(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char output[4] = {0};

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, 5);
	expect(syna_tcm_get_static_config(&tcm, output, sizeof(output), 1) == -241,
	       "length below required size is rejected");
	expect(write_calls == 0, "length guard prevents write");

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(output));
	expect(syna_tcm_get_static_config(&tcm, NULL, sizeof(output), 0) == 0,
	       "NULL output still sends the command");
	expect(write_calls == 1 && last_command == 33 && last_delay == 77,
	       "default delay and command are preserved");

	reset_fixture(&tcm, &transport);
	transport.flags = 1;
	put_u16(&tcm, 0x0b4, sizeof(output));
	expect(syna_tcm_get_static_config(&tcm, NULL, sizeof(output), 0) == 0,
	       "transport polling mode sends the command");
	expect(last_delay == 0, "transport flag suppresses default delay");
}

static void test_write_error(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char output[4] = {0};

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(output));
	write_result = -5;
	expect(syna_tcm_get_static_config(&tcm, output, sizeof(output), 9) == -5,
	       "write error is propagated");
	expect(write_calls == 1 && printk_calls == 1,
	       "write error emits one diagnostic");
}

static void test_response_copy(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char response[4] = {9, 8, 7, 6};
	char output[4] = {0};

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(output));
	put_ptr(&tcm, 0x148, response);
	put_u32(&tcm, 0x150, sizeof(response));
	put_u32(&tcm, 0x154, sizeof(response));
	expect(syna_tcm_get_static_config(&tcm, output, sizeof(output), 3) == 0,
	       "response is copied successfully");
	expect(memcmp(output, response, sizeof(output)) == 0,
	       "response bytes are copied");
	expect(lock_calls == 1 && unlock_calls == 1,
	       "successful copy locks and unlocks once");

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(output));
	put_u32(&tcm, 0x150, sizeof(response));
	expect(syna_tcm_get_static_config(&tcm, output, sizeof(output), 3) == -22,
	       "missing response data returns -22");
	expect(unlock_calls == 1, "invalid response calls buffer unlock");
}

int main(void)
{
	test_validation();
	test_length_and_delay();
	test_write_error();
	test_response_copy();
	puts("PASS syna_tcm_get_static_config host tests (4 groups)");
	return EXIT_SUCCESS;
}
