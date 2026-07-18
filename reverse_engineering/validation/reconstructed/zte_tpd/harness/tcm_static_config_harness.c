#define _GNU_SOURCE

#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

#define __fastcall
#define __int64 long long
#define __int16 short
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _WORD unsigned short
#define _BYTE unsigned char
#define __break(value) ((void)(value))
#define static_assert(condition, ...) _Static_assert(condition, #condition)

static char dummy_format[] = "";
#define unk_31ACA dummy_format
#define unk_332E4 dummy_format
#define unk_3365A dummy_format
#define unk_33E1E dummy_format
#define unk_34B2B dummy_format
#define unk_3501F dummy_format
#define unk_351D9 dummy_format
#define unk_36DD4 dummy_format
#define unk_373B9 dummy_format
#define unk_38006 dummy_format
#define unk_38244 dummy_format
#define unk_3944E dummy_format
#define unk_39AB7 dummy_format
#define unk_39F12 dummy_format
#define unk_3A63C dummy_format
#define unk_3BA3F dummy_format
#define unk_3BE43 dummy_format
#define unk_3C27E dummy_format

#define mutex_lock(lock) ((void)(lock))
#define mutex_unlock(lock) ((void)(lock))

#include "zte_tpd_tcm_layout.h"

static int write_result;
static unsigned int write_calls;
static struct tcm_dev *last_tcm;
static u8 last_command;
static u8 *last_payload;
static u32 last_length;
static u8 *last_response_code;
static u32 last_delay;
static bool managed_device_available;
static bool allocation_fails;
static int copy_result;
static unsigned int allocation_calls;
static unsigned int free_calls;
static unsigned int unlock_calls;

static int printk(const void *format, ...)
{
	(void)format;
	return 0;
}

static int test_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
			      u32 length, u8 *response_code, u32 delay_ms)
{
	write_calls++;
	last_tcm = tcm;
	last_command = command;
	last_payload = payload;
	last_length = length;
	last_response_code = response_code;
	last_delay = delay_ms;
	return write_result;
}

static unsigned long syna_request_managed_device(void)
{
	return managed_device_available ? 1 : 0;
}

static unsigned long devm_kmalloc(unsigned long device, size_t size,
				   unsigned int flags)
{
	(void)device;
	(void)flags;
	allocation_calls++;
	if (allocation_fails)
		return 0;
	return (unsigned long)calloc(1, size);
}

static int syna_pal_mem_cpy_1(unsigned long destination,
			      unsigned int destination_size,
			      unsigned long source,
			      unsigned int source_size,
			      unsigned int count)
{
	if (copy_result < 0)
		return copy_result;
	if (!destination || !source || count > destination_size || count > source_size)
		return -EINVAL;
	memcpy((void *)destination, (const void *)source, count);
	return 0;
}

static void syna_pal_mem_free_0(unsigned long pointer)
{
	free_calls++;
	free((void *)pointer);
}

static void syna_tcm_buf_unlock_0(unsigned long buffer)
{
	(void)buffer;
	unlock_calls++;
}

#include "syna_tcm_get_static_config.c"
#include "syna_tcm_set_static_config.c"
#include "syna_tcm_set_touch_report_config.c"

typedef int (*tcm_static_config_fn)(struct tcm_dev *tcm, char *config,
				    unsigned int length,
				    unsigned int delay_ms);

static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_get_static_config),
					   tcm_static_config_fn));
static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_set_static_config),
					   tcm_static_config_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_set_touch_report_config),
		      tcm_static_config_fn));

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_state(void)
{
	write_result = 0;
	write_calls = 0;
	last_tcm = NULL;
	last_command = 0;
	last_payload = NULL;
	last_length = 0;
	last_response_code = (u8 *)(uintptr_t)1;
	last_delay = 0;
	managed_device_available = true;
	allocation_fails = false;
	copy_result = 0;
	allocation_calls = 0;
	free_calls = 0;
	unlock_calls = 0;
}

static void setup_tcm(struct tcm_dev *tcm,
		      struct tcm_transport_overlay *transport)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(transport, 0, sizeof(*transport));
	tcm->firmware_mode = 1;
	tcm->transport = transport;
	tcm->command_delay_ms = 77;
	tcm->write_message = test_write_message;
}

static void set_u16(struct tcm_dev *tcm, size_t offset, u16 value)
{
	*(u16 *)((u8 *)tcm + offset) = value;
}

static void set_u32(struct tcm_dev *tcm, size_t offset, u32 value)
{
	*(u32 *)((u8 *)tcm + offset) = value;
}

static void set_ptr(struct tcm_dev *tcm, size_t offset, void *value)
{
	*(void **)((u8 *)tcm + offset) = value;
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_null_contracts(void)
{
	char config[4] = {0};

	reset_state();
	REQUIRE(syna_tcm_get_static_config(NULL, config, sizeof(config), 1) == -241);
	REQUIRE(syna_tcm_set_static_config(NULL, config, sizeof(config), 1) == -241);
	REQUIRE(syna_tcm_set_touch_report_config(NULL, config, sizeof(config), 1) == -241);
	REQUIRE(write_calls == 0);
	return true;
}

static bool test_firmware_mode_contracts(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[4] = {0};

	reset_state();
	setup_tcm(&tcm, &transport);
	tcm.firmware_mode = 2;
	REQUIRE(syna_tcm_get_static_config(&tcm, config, sizeof(config), 1) == -241);
	REQUIRE(syna_tcm_set_static_config(&tcm, config, sizeof(config), 1) == -241);
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, config, sizeof(config), 1) == -241);
	REQUIRE(write_calls == 0);
	return true;
}

static bool test_get_length_guard(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[4] = {0};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, 5);
	REQUIRE(syna_tcm_get_static_config(&tcm, config, sizeof(config), 1) == -241);
	REQUIRE(write_calls == 0);
	return true;
}

static bool test_set_length_guard(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[4] = {0};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, 5);
	REQUIRE(syna_tcm_set_static_config(&tcm, config, sizeof(config), 1) == -241);
	REQUIRE(write_calls == 0);
	return true;
}

static bool test_set_explicit_delay(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[4] = {1, 2, 3, 4};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, sizeof(config));
	REQUIRE(syna_tcm_set_static_config(&tcm, config, sizeof(config), 91) == 0);
	REQUIRE(write_calls == 1);
	REQUIRE(last_tcm == &tcm);
	REQUIRE(last_command == 0x22);
	REQUIRE(last_payload == (u8 *)config);
	REQUIRE(last_length == sizeof(config));
	REQUIRE(last_response_code == NULL);
	REQUIRE(last_delay == 91);
	return true;
}

static bool test_set_default_delay(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[2] = {1, 2};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, sizeof(config));
	REQUIRE(syna_tcm_set_static_config(&tcm, config, sizeof(config), 0) == 0);
	REQUIRE(last_delay == 77);
	return true;
}

static bool test_set_transport_delay_suppression(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[2] = {1, 2};

	reset_state();
	setup_tcm(&tcm, &transport);
	transport.flags = 1;
	set_u16(&tcm, 0xb4, sizeof(config));
	REQUIRE(syna_tcm_set_static_config(&tcm, config, sizeof(config), 0) == 0);
	REQUIRE(last_delay == 0);
	return true;
}

static bool test_set_write_error(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[2] = {1, 2};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, sizeof(config));
	write_result = -EIO;
	REQUIRE(syna_tcm_set_static_config(&tcm, config, sizeof(config), 3) == -EIO);
	return true;
}

static bool test_get_successful_copy(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char response[4] = {9, 8, 7, 6};
	char config[4] = {0};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, sizeof(config));
	set_ptr(&tcm, 0x148, response);
	set_u32(&tcm, 0x150, sizeof(response));
	set_u32(&tcm, 0x154, sizeof(response));
	REQUIRE(syna_tcm_get_static_config(&tcm, config, sizeof(config), 19) == 0);
	REQUIRE(memcmp(config, response, sizeof(config)) == 0);
	REQUIRE(last_command == 0x21);
	REQUIRE(last_payload == NULL);
	REQUIRE(last_length == 0);
	REQUIRE(last_delay == 19);
	return true;
}

static bool test_get_optional_output(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, 2);
	REQUIRE(syna_tcm_get_static_config(&tcm, NULL, 2, 4) == 0);
	REQUIRE(write_calls == 1);
	return true;
}

static bool test_get_write_error(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[2] = {0};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, sizeof(config));
	write_result = -EIO;
	REQUIRE(syna_tcm_get_static_config(&tcm, config, sizeof(config), 5) == -EIO);
	return true;
}

static bool test_get_invalid_response(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[2] = {0};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb4, sizeof(config));
	set_u32(&tcm, 0x154, sizeof(config));
	REQUIRE(syna_tcm_get_static_config(&tcm, config, sizeof(config), 5) == -EINVAL);
	REQUIRE(unlock_calls == 1);
	return true;
}

static bool test_touch_invalid_input(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config = 0;

	reset_state();
	setup_tcm(&tcm, &transport);
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, NULL, 1, 1) == -241);
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, &config, 0, 1) == -241);
	REQUIRE(write_calls == 0);
	return true;
}

static bool test_touch_missing_report_size(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config = 0;

	reset_state();
	setup_tcm(&tcm, &transport);
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, &config, 1, 1) == -241);
	return true;
}

static bool test_touch_length_guard(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[4] = {0};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb0, 1);
	set_u16(&tcm, 0xbc, 3);
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, config, sizeof(config), 1) == -241);
	REQUIRE(allocation_calls == 0);
	return true;
}

static bool test_touch_success(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config[4] = {1, 2, 3, 4};

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb0, 1);
	set_u16(&tcm, 0xbc, 8);
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, config, sizeof(config), 31) == 0);
	REQUIRE(allocation_calls == 1);
	REQUIRE(write_calls == 1);
	REQUIRE(last_command == 0x26);
	REQUIRE(last_length == 8);
	REQUIRE(last_delay == 31);
	REQUIRE(last_payload != NULL);
	REQUIRE(free_calls == 1);
	return true;
}

static bool test_touch_allocation_failures(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config = 1;

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb0, 1);
	set_u16(&tcm, 0xbc, 1);
	managed_device_available = false;
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, &config, 1, 1) == -243);
	managed_device_available = true;
	allocation_fails = true;
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, &config, 1, 1) == -243);
	REQUIRE(write_calls == 0);
	return true;
}

static bool test_touch_copy_error(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config = 1;

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb0, 1);
	set_u16(&tcm, 0xbc, 1);
	copy_result = -ERANGE;
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, &config, 1, 1) == -ERANGE);
	REQUIRE(write_calls == 0);
	REQUIRE(free_calls == 1);
	return true;
}

static bool test_touch_write_error(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	char config = 1;

	reset_state();
	setup_tcm(&tcm, &transport);
	set_u16(&tcm, 0xb0, 1);
	set_u16(&tcm, 0xbc, 1);
	write_result = -EIO;
	REQUIRE(syna_tcm_set_touch_report_config(&tcm, &config, 1, 1) == -EIO);
	REQUIRE(write_calls == 1);
	REQUIRE(free_calls == 1);
	return true;
}

static int run_test(const char *name, bool (*test)(void))
{
	if (!test()) {
		printf("FAIL %s\n", name);
		return 1;
	}
	printf("PASS %s\n", name);
	return 0;
}

int main(void)
{
	int failures = 0;
	int total = 0;

#define RUN(test) do { total++; failures += run_test(#test, test); } while (0)
	RUN(test_signature_contract);
	RUN(test_null_contracts);
	RUN(test_firmware_mode_contracts);
	RUN(test_get_length_guard);
	RUN(test_set_length_guard);
	RUN(test_set_explicit_delay);
	RUN(test_set_default_delay);
	RUN(test_set_transport_delay_suppression);
	RUN(test_set_write_error);
	RUN(test_get_successful_copy);
	RUN(test_get_optional_output);
	RUN(test_get_write_error);
	RUN(test_get_invalid_response);
	RUN(test_touch_invalid_input);
	RUN(test_touch_missing_report_size);
	RUN(test_touch_length_guard);
	RUN(test_touch_success);
	RUN(test_touch_allocation_failures);
	RUN(test_touch_copy_error);
	RUN(test_touch_write_error);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
