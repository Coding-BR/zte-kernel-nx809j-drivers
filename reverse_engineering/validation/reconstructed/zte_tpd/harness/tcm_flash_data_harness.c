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
#define static_assert(condition, ...) _Static_assert(condition, #condition)

#define WORDn(value, index) (*((u16 *)&(value) + (index)))
#define HIWORD(value) WORDn(value, 1)
#define BYTEn(value, index) (*((u8 *)&(value) + (index)))
#define LOBYTE(value) BYTEn(value, 0)
#define HIDWORD(value) (*((u32 *)&(value) + 1))

static u8 status_region[2048];
#define _ReadStatusReg(reg) ((unsigned long)status_region)
#define _mutex_init(lock, name, key) ((void)(lock), (void)(name), (void)(key))

static int dummy_mutex_key;
#define syna_pal_mutex_alloc___key_8 dummy_mutex_key

static char dummy_format[] = "";
#define unk_32BC8 dummy_format
#define unk_3365A dummy_format
#define unk_33953 dummy_format
#define unk_34475 dummy_format
#define unk_34845 dummy_format
#define unk_34A93 dummy_format
#define unk_34AB2 dummy_format
#define unk_36D12 dummy_format
#define unk_3728A dummy_format
#define unk_372B2 dummy_format
#define unk_38286 dummy_format
#define unk_38FA8 dummy_format
#define unk_3944E dummy_format
#define unk_3BAC0 dummy_format
#define unk_3BE43 dummy_format
#define unk_3D41E dummy_format

#include "zte_tpd_tcm_layout.h"

static int setup_result;
static unsigned int setup_calls;
static unsigned int setup_command_delay;
static unsigned int setup_reset_delay;
static unsigned int switch_calls;
static int switch_mode;
static unsigned int switch_delay;

static int printk(const void *format, ...)
{
	(void)format;
	return 0;
}

static unsigned long syna_request_managed_device(void)
{
	return 1;
}

static void devm_kfree(unsigned long device, unsigned long pointer)
{
	(void)device;
	free((void *)pointer);
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
					unsigned int command_delay,
					unsigned int reset_delay)
{
	(void)tcm;
	(void)buffer;
	setup_calls++;
	setup_command_delay = command_delay;
	setup_reset_delay = reset_delay;
	return setup_result;
}

static int syna_tcm_switch_fw_mode(unsigned long tcm, int mode,
				    unsigned int delay)
{
	(void)tcm;
	switch_calls++;
	switch_mode = mode;
	switch_delay = delay;
	return 0;
}

static int syna_tcm_read_flash_boot_cs_config(unsigned long tcm,
					       unsigned long config,
					       unsigned long output,
					       unsigned int length,
					       unsigned int offset,
					       unsigned int delay_mode)
{
	(void)tcm;
	(void)config;
	(void)output;
	(void)length;
	(void)offset;
	(void)delay_mode;
	return -EOPNOTSUPP;
}

static int syna_tcm_read_flash_mtp_config(unsigned long tcm,
					   unsigned long config,
					   unsigned long output,
					   unsigned int length,
					   unsigned int offset,
					   unsigned int delay_mode)
{
	(void)tcm;
	(void)config;
	(void)output;
	(void)length;
	(void)offset;
	(void)delay_mode;
	return -EOPNOTSUPP;
}

static int syna_tcm_read_flash_boot_config(unsigned long tcm,
					    unsigned long config,
					    unsigned long output,
					    unsigned int delay)
{
	(void)tcm;
	(void)config;
	(void)output;
	(void)delay;
	return -EOPNOTSUPP;
}

static int syna_tcm_write_flash(unsigned long tcm, unsigned long config,
				unsigned int address, unsigned long data,
				unsigned int length, unsigned int delay_mode)
{
	(void)tcm;
	(void)config;
	(void)address;
	(void)data;
	(void)length;
	(void)delay_mode;
	return -EOPNOTSUPP;
}

__attribute__((noreturn))
static void _fortify_panic(unsigned int reason, unsigned long available,
			   unsigned long requested)
{
	(void)reason;
	(void)available;
	(void)requested;
	abort();
}

#include "syna_tcm_read_cs_data.c"
#include "syna_tcm_read_mtp_data.c"
#include "syna_tcm_update_cs_config.c"
#include "syna_tcm_update_mtp_data.c"

typedef int (*tcm_flash_data_fn)(struct tcm_dev *tcm, char *data,
				 unsigned int length, unsigned int offset,
				 unsigned int delay_mode);

static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_read_cs_data),
					   tcm_flash_data_fn));
static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_read_mtp_data),
					   tcm_flash_data_fn));
static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_update_cs_config),
					   tcm_flash_data_fn));
static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_update_mtp_data),
					   tcm_flash_data_fn));

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
	setup_result = -EIO;
	setup_calls = 0;
	setup_command_delay = 0;
	setup_reset_delay = 0;
	switch_calls = 0;
	switch_mode = 0;
	switch_delay = 0;
}

static void setup_tcm(struct tcm_dev *tcm, u32 command_delay,
		      u32 reset_delay)
{
	memset(tcm, 0, sizeof(*tcm));
	*(u32 *)((u8 *)tcm + 0x20c) = command_delay;
	*(u32 *)((u8 *)tcm + 0x1e8) = reset_delay;
}

static bool busy(const struct tcm_dev *tcm)
{
	return *(const u32 *)((const u8 *)tcm + 0x388) != 0;
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_null_tcm_contracts(void)
{
	char data = 0;

	reset_state();
	REQUIRE(syna_tcm_read_cs_data(NULL, &data, 1, 0, 0) == -241);
	REQUIRE(syna_tcm_read_mtp_data(NULL, &data, 1, 0, 0) == -241);
	REQUIRE(syna_tcm_update_cs_config(NULL, &data, 1, 0, 0) == -241);
	REQUIRE(syna_tcm_update_mtp_data(NULL, &data, 1, 0, 0) == -241);
	REQUIRE(setup_calls == 0);
	return true;
}

static bool test_invalid_buffer_contracts(void)
{
	struct tcm_dev tcm;
	char data = 0;

	reset_state();
	setup_tcm(&tcm, 70, 80);
	REQUIRE(syna_tcm_read_cs_data(&tcm, NULL, 1, 0, 1) == -241);
	REQUIRE(syna_tcm_read_mtp_data(&tcm, &data, 0, 0, 1) == -241);
	REQUIRE(syna_tcm_update_cs_config(&tcm, NULL, 1, 0, 1) == -241);
	REQUIRE(syna_tcm_update_mtp_data(&tcm, &data, 0, 0, 1) == -241);
	REQUIRE(setup_calls == 0);
	return true;
}

static bool test_read_cs_setup_error(void)
{
	struct tcm_dev tcm;
	char data = 0;

	reset_state();
	setup_tcm(&tcm, 70, 80);
	REQUIRE(syna_tcm_read_cs_data(&tcm, &data, 1, 3, 1) == -EIO);
	REQUIRE(setup_calls == 1);
	REQUIRE(setup_command_delay == 70);
	REQUIRE(setup_reset_delay == 80);
	return true;
}

static bool test_read_mtp_setup_error(void)
{
	struct tcm_dev tcm;
	char data = 0;

	reset_state();
	setup_tcm(&tcm, 71, 81);
	REQUIRE(syna_tcm_read_mtp_data(&tcm, &data, 1, 4, 1) == -EIO);
	REQUIRE(setup_calls == 1);
	REQUIRE(setup_command_delay == 71);
	REQUIRE(setup_reset_delay == 81);
	return true;
}

static bool test_update_cs_setup_error(void)
{
	struct tcm_dev tcm;
	char data = 0;

	reset_state();
	setup_tcm(&tcm, 72, 82);
	REQUIRE(syna_tcm_update_cs_config(&tcm, &data, 1, 5, 1) == -EIO);
	REQUIRE(setup_calls == 1);
	REQUIRE(!busy(&tcm));
	return true;
}

static bool test_update_mtp_setup_error(void)
{
	struct tcm_dev tcm;
	char data = 0;

	reset_state();
	setup_tcm(&tcm, 73, 83);
	REQUIRE(syna_tcm_update_mtp_data(&tcm, &data, 1, 6, 1) == -EIO);
	REQUIRE(setup_calls == 1);
	REQUIRE(!busy(&tcm));
	return true;
}

static bool test_delay_mode_disabled(void)
{
	struct tcm_dev tcm;
	char data = 0;

	reset_state();
	setup_tcm(&tcm, 74, 84);
	REQUIRE(syna_tcm_read_cs_data(&tcm, &data, 1, 0, 0) == -EIO);
	REQUIRE(setup_command_delay == 0);
	REQUIRE(setup_reset_delay == 0);
	return true;
}

static bool test_firmware_mode_cleanup(void)
{
	struct tcm_dev tcm;
	char data = 0;

	reset_state();
	setup_tcm(&tcm, 75, 85);
	tcm.firmware_mode = 11;
	REQUIRE(syna_tcm_read_mtp_data(&tcm, &data, 1, 0, 1) == -EIO);
	REQUIRE(switch_calls == 1);
	REQUIRE(switch_mode == 1);
	REQUIRE(switch_delay == 85);
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
	RUN(test_null_tcm_contracts);
	RUN(test_invalid_buffer_contracts);
	RUN(test_read_cs_setup_error);
	RUN(test_read_mtp_setup_error);
	RUN(test_update_cs_setup_error);
	RUN(test_update_mtp_setup_error);
	RUN(test_delay_mode_disabled);
	RUN(test_firmware_mode_cleanup);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
