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
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define nullptr NULL
#define SP_EL0 0
#define BIT(bit) (1U << (bit))
#define static_assert(condition, ...) _Static_assert(condition, #condition)

#define WORDn(value, index) (*((u16 *)&(value) + (index)))
#define HIWORD(value) WORDn(value, 1)
#define BYTEn(value, index) (*((u8 *)&(value) + (index)))
#define LOBYTE(value) BYTEn(value, 0)
#define BYTE1(value) BYTEn(value, 1)
#define LODWORD(value) (*((u32 *)&(value)))
#define HIDWORD(value) (*((u32 *)&(value) + 1))

static u8 status_region[2048];
#define _ReadStatusReg(reg) ((unsigned long)status_region)
#define __break(value) ((void)(value))
#define _mutex_init(lock, name, key) ((void)(lock), (void)(name), (void)(key))
#define mutex_lock(lock) ((void)(lock))
#define mutex_unlock(lock) ((void)(lock))

static int dummy_mutex_key;
#define syna_pal_mutex_alloc___key_8 dummy_mutex_key

static char dummy_format[] = "";
#define unk_32B5F dummy_format
#define unk_32BC8 dummy_format
#define unk_3365A dummy_format
#define unk_339F8 dummy_format
#define unk_33E1E dummy_format
#define unk_34475 dummy_format
#define unk_34845 dummy_format
#define unk_34B7A dummy_format
#define unk_357BB dummy_format
#define unk_35DBE dummy_format
#define unk_36439 dummy_format
#define unk_36818 dummy_format
#define unk_36DD4 dummy_format
#define unk_3703C dummy_format
#define unk_37A54 dummy_format
#define unk_38244 dummy_format
#define unk_38286 dummy_format
#define unk_38FD4 dummy_format
#define unk_3944E dummy_format
#define unk_39AB7 dummy_format
#define unk_3AE77 dummy_format
#define unk_3BA3F dummy_format
#define unk_3BC27 dummy_format
#define unk_3BE43 dummy_format
#define unk_3C2AD dummy_format

#include "zte_tpd_tcm_layout.h"

static unsigned int write_calls;
static u8 last_command;
static u32 last_delay;
static int write_result;
static int post_reset_result;
static unsigned int reset_callback_calls;
static unsigned int post_reset_callback_calls;
static void *last_post_reset_context;

static int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static int test_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
			      u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	(void)payload;
	(void)length;
	(void)response_code;
	write_calls++;
	last_command = command;
	last_delay = delay_ms;
	return write_result;
}

static long long test_reset_callback(unsigned long context)
{
	(void)context;
	reset_callback_calls++;
	return 0;
}

static long long test_post_reset_callback(unsigned long context)
{
	post_reset_callback_calls++;
	last_post_reset_context = (void *)context;
	return post_reset_result;
}

static unsigned long syna_request_managed_device(void)
{
	return 1;
}

static void devm_kfree(unsigned long device, unsigned long pointer)
{
	(void)device;
	(void)pointer;
}

static void *devm_kmalloc(unsigned long device, size_t size,
			 unsigned int flags)
{
	(void)device;
	(void)flags;
	return malloc(size);
}

static int syna_tcm_set_up_flash_access(unsigned long tcm,
					unsigned long buffer,
					unsigned int delay_ms,
					unsigned int reset_delay_ms)
{
	(void)tcm;
	(void)buffer;
	(void)delay_ms;
	(void)reset_delay_ms;
	return -EOPNOTSUPP;
}

static int syna_tcm_switch_fw_mode(unsigned long tcm, int mode,
				    unsigned int delay_ms)
{
	(void)tcm;
	(void)mode;
	(void)delay_ms;
	return 0;
}

#include "syna_tcm_reset.c"
#include "syna_tcm_rezero.c"
#include "syna_tcm_erase_mtp_data.c"
#include "syna_tcm_preserve_touch_report_config.c"

typedef int (*tcm_delay_fn)(struct tcm_dev *tcm, unsigned int delay_ms);

static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_reset),
					   tcm_delay_fn));
static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_rezero),
					   tcm_delay_fn));
static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_erase_mtp_data),
					   tcm_delay_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_preserve_touch_report_config),
		      tcm_delay_fn));

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_state(void)
{
	memset(status_region, 0, sizeof(status_region));
	write_calls = 0;
	last_command = 0;
	last_delay = 0;
	write_result = 0;
	post_reset_result = 0;
	reset_callback_calls = 0;
	post_reset_callback_calls = 0;
	last_post_reset_context = NULL;
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

static void set_reset_delay(struct tcm_dev *tcm, u32 delay_ms)
{
	*(u32 *)((u8 *)tcm + 0x1ec) = delay_ms;
}

static void set_identified_mode(struct tcm_dev *tcm, u8 mode)
{
	*((u8 *)tcm + 0x81) = mode;
}

static bool test_null_contracts(void)
{
	reset_state();
	REQUIRE(syna_tcm_reset(NULL, 0) == -241);
	REQUIRE(syna_tcm_rezero(NULL, 0) == -241);
	REQUIRE(syna_tcm_erase_mtp_data(NULL, 0) == -241);
	REQUIRE(syna_tcm_preserve_touch_report_config(NULL, 0) == -241);
	REQUIRE(write_calls == 0);
	return true;
}

static bool test_rezero_explicit_delay(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	REQUIRE(syna_tcm_rezero(&tcm, 123) == 0);
	REQUIRE(write_calls == 1);
	REQUIRE(last_command == 0x27);
	REQUIRE(last_delay == 123);
	return true;
}

static bool test_rezero_default_delay(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	REQUIRE(syna_tcm_rezero(&tcm, 0) == 0);
	REQUIRE(last_delay == 77);
	return true;
}

static bool test_rezero_transport_delay_suppression(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	transport.flags = BIT(0);
	REQUIRE(syna_tcm_rezero(&tcm, 0) == 0);
	REQUIRE(last_delay == 0);
	return true;
}

static bool test_rezero_errors(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	tcm.firmware_mode = 0;
	REQUIRE(syna_tcm_rezero(&tcm, 1) == -241);
	REQUIRE(write_calls == 0);
	tcm.firmware_mode = 1;
	write_result = -EIO;
	REQUIRE(syna_tcm_rezero(&tcm, 1) == -EIO);
	return true;
}

static bool test_reset_callbacks_and_mode(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	int context;

	reset_state();
	setup_tcm(&tcm, &transport);
	set_reset_delay(&tcm, 55);
	set_identified_mode(&tcm, 7);
	tcm.reset_callback = (void *)test_reset_callback;
	tcm.post_reset_context = &context;
	tcm.post_reset_callback = (void *)test_post_reset_callback;
	REQUIRE(syna_tcm_reset(&tcm, 10) == 0);
	REQUIRE(last_command == 4);
	REQUIRE(last_delay == 55);
	REQUIRE(tcm.firmware_mode == 7);
	REQUIRE(reset_callback_calls == 1);
	REQUIRE(post_reset_callback_calls == 1);
	REQUIRE(last_post_reset_context == &context);
	return true;
}

static bool test_reset_transport_delay_suppression(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	set_reset_delay(&tcm, 55);
	transport.flags = BIT(0);
	REQUIRE(syna_tcm_reset(&tcm, 0) == 0);
	REQUIRE(last_delay == 0);
	return true;
}

static bool test_reset_error_propagation(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	write_result = -EIO;
	REQUIRE(syna_tcm_reset(&tcm, 1) == -EIO);
	REQUIRE(reset_callback_calls == 0);
	REQUIRE(post_reset_callback_calls == 0);
	return true;
}

static bool test_reset_post_callback_error(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	tcm.post_reset_callback = (void *)test_post_reset_callback;
	write_result = 0;
	REQUIRE(syna_tcm_reset(&tcm, 1) == 0);
	post_reset_result = -ERANGE;
	REQUIRE(syna_tcm_reset(&tcm, 1) == -ERANGE);
	REQUIRE(post_reset_callback_calls == 2);
	return true;
}

static bool test_preserve_early_paths(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm, &transport);
	write_result = -EIO;
	REQUIRE(syna_tcm_preserve_touch_report_config(&tcm, 91) == -EIO);
	REQUIRE(last_command == 0x25);
	REQUIRE(last_delay == 91);
	write_result = 0;
	REQUIRE(syna_tcm_preserve_touch_report_config(&tcm, 91) == -241);
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
	RUN(test_null_contracts);
	RUN(test_rezero_explicit_delay);
	RUN(test_rezero_default_delay);
	RUN(test_rezero_transport_delay_suppression);
	RUN(test_rezero_errors);
	RUN(test_reset_callbacks_and_mode);
	RUN(test_reset_transport_delay_suppression);
	RUN(test_reset_error_propagation);
	RUN(test_reset_post_callback_error);
	RUN(test_preserve_early_paths);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
