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

static char unk_3365A[] = "invalid";
static char unk_33E1E[] = "mode";
static char unk_3501F[] = "length";
static char unk_39AB7[] = "write";
static char unk_3BA3F[] = "delay";

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int write_result;
static int write_calls;
static u8 last_command;
static u8 *last_payload;
static u32 last_length;
static u8 *last_response_code;
static u32 last_delay;
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
	++write_calls;
	last_command = command;
	last_payload = payload;
	last_length = length;
	last_response_code = response_code;
	last_delay = delay_ms;
	return write_result;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_set_static_config.c"

static void expect(bool condition, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL syna_tcm_set_static_config: %s\n", message);
	exit(EXIT_FAILURE);
}

static void put_u16(struct tcm_dev *tcm, size_t offset, u16 value)
{
	memcpy((u8 *)tcm + offset, &value, sizeof(value));
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
	last_payload = NULL;
	last_length = 0;
	last_response_code = (u8 *)(uintptr_t)1;
	last_delay = 0;
	printk_calls = 0;
}

static void test_validation(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[4] = {1, 2, 3, 4};

	reset_fixture(&tcm, &transport);
	expect(syna_tcm_set_static_config(NULL, config, sizeof(config), 1) == -241,
	       "NULL device returns -241");
	tcm.firmware_mode = 2;
	expect(syna_tcm_set_static_config(&tcm, config, sizeof(config), 1) == -241,
	       "non-application firmware mode returns -241");
	expect(write_calls == 0, "validation failures do not write");
}

static void test_length_guard(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[4] = {0};

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(config) + 1);
	expect(syna_tcm_set_static_config(&tcm, config, sizeof(config), 1) == -241,
	       "length mismatch returns -241");
	expect(write_calls == 0, "length guard prevents write");
}

static void test_delay_selection(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[4] = {0};

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(config));
	expect(syna_tcm_set_static_config(&tcm, config, sizeof(config), 0) == 0,
	       "default delay path succeeds");
	expect(last_delay == 77 && printk_calls == 1,
	       "configured default delay is selected");

	reset_fixture(&tcm, &transport);
	transport.flags = 1;
	put_u16(&tcm, 0x0b4, sizeof(config));
	expect(syna_tcm_set_static_config(&tcm, config, sizeof(config), 0) == 0,
	       "polling transport path succeeds");
	expect(last_delay == 0 && printk_calls == 0,
	       "transport flag suppresses default delay");
}

static void test_write_paths(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport;
	char config[4] = {9, 8, 7, 6};

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(config));
	expect(syna_tcm_set_static_config(&tcm, config, sizeof(config), 13) == 0,
	       "write success returns zero");
	expect(write_calls == 1 && last_command == 34 && last_payload == (u8 *)config &&
	       last_length == sizeof(config) && last_response_code == NULL &&
	       last_delay == 13,
	       "write command arguments are exact");

	reset_fixture(&tcm, &transport);
	put_u16(&tcm, 0x0b4, sizeof(config));
	write_result = -5;
	expect(syna_tcm_set_static_config(&tcm, config, sizeof(config), 3) == -5,
	       "write error is propagated");
	expect(write_calls == 1 && printk_calls == 1,
	       "write error emits one diagnostic");
}

int main(void)
{
	test_validation();
	test_length_guard();
	test_delay_selection();
	test_write_paths();
	puts("PASS syna_tcm_set_static_config host tests (4 groups)");
	return EXIT_SUCCESS;
}
