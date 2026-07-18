#define _GNU_SOURCE

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

#define __int64 long long
#define __int8 char
#define _DWORD unsigned int
#define _BYTE unsigned char
#define _QWORD unsigned long long
#define __break(value) ((void)(value))
#define static_assert(condition, ...) _Static_assert(condition, #condition)

static char dummy_format[] = "";
#define unk_3365A dummy_format
#define unk_34845 dummy_format
#define unk_3AC8E dummy_format
#define unk_3B33C dummy_format
#define unk_3BE43 dummy_format

#include "zte_tpd_tcm_layout.h"

static struct tcm_dev *protected_tcm;
static bool managed_device_available;
static unsigned int free_calls;
static unsigned int completion_checks;
static unsigned int complete_calls;
static unsigned int terminate_calls;
static struct tcm_dev *terminated_tcm;

static int printk(const void *format, ...)
{
	(void)format;
	return 0;
}

static unsigned long syna_request_managed_device(void)
{
	return managed_device_available ? 1 : 0;
}

static void devm_kfree(unsigned long device, unsigned long pointer)
{
	(void)device;
	free_calls++;
	if ((void *)pointer != protected_tcm)
		free((void *)pointer);
}

static unsigned long completion_done(unsigned long completion)
{
	completion_checks++;
	return *(unsigned int *)completion != 0;
}

static void complete(unsigned long completion)
{
	complete_calls++;
	*(unsigned int *)completion = 1;
}

#include "syna_tcm_clear_command_processing.c"
#include "syna_tcm_remove_device.c"
#include "syna_tcm_v1_terminate.c"

typedef void (*tcm_lifecycle_test_fn)(struct tcm_dev *tcm);

static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_clear_command_processing),
		      tcm_lifecycle_test_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_remove_device),
		      tcm_lifecycle_test_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_v1_terminate),
		      tcm_lifecycle_test_fn));

static void test_terminate_callback(struct tcm_dev *tcm)
{
	terminate_calls++;
	terminated_tcm = tcm;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_state(void)
{
	protected_tcm = NULL;
	managed_device_available = true;
	free_calls = 0;
	completion_checks = 0;
	complete_calls = 0;
	terminate_calls = 0;
	terminated_tcm = NULL;
}

static void setup_tcm(struct tcm_dev *tcm)
{
	memset(tcm, 0, sizeof(*tcm));
	protected_tcm = tcm;
}

static void set_ptr(struct tcm_dev *tcm, size_t offset, void *value)
{
	*(void **)((u8 *)tcm + offset) = value;
}

static void set_u8(struct tcm_dev *tcm, size_t offset, u8 value)
{
	*(u8 *)((u8 *)tcm + offset) = value;
}

static void set_u32(struct tcm_dev *tcm, size_t offset, u32 value)
{
	*(u32 *)((u8 *)tcm + offset) = value;
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_clear_null(void)
{
	reset_state();
	syna_tcm_clear_command_processing(NULL);
	REQUIRE(terminate_calls == 0);
	return true;
}

static bool test_clear_without_callback(void)
{
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm);
	syna_tcm_clear_command_processing(&tcm);
	REQUIRE(terminate_calls == 0);
	return true;
}

static bool test_clear_calls_callback_once(void)
{
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm);
	tcm.terminate = test_terminate_callback;
	syna_tcm_clear_command_processing(&tcm);
	REQUIRE(terminate_calls == 1);
	REQUIRE(terminated_tcm == &tcm);
	return true;
}

static bool test_terminate_null(void)
{
	reset_state();
	syna_tcm_v1_terminate(NULL);
	REQUIRE(completion_checks == 0);
	REQUIRE(complete_calls == 0);
	return true;
}

static bool test_terminate_idle(void)
{
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm);
	set_u32(&tcm, 0x1f8, 0);
	syna_tcm_v1_terminate(&tcm);
	REQUIRE(completion_checks == 0);
	REQUIRE(complete_calls == 0);
	REQUIRE(*(u32 *)((u8 *)&tcm + 0x1f8) == 0);
	return true;
}

static bool test_terminate_active_completes(void)
{
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm);
	set_u32(&tcm, 0x1f8, 1);
	set_u8(&tcm, 0x1fc, 7);
	syna_tcm_v1_terminate(&tcm);
	REQUIRE(completion_checks == 1);
	REQUIRE(complete_calls == 1);
	REQUIRE(*(u32 *)((u8 *)&tcm + 0x1f8) == 2);
	REQUIRE(*(u32 *)((u8 *)&tcm + 0x220) == 1);
	return true;
}

static bool test_terminate_active_already_done(void)
{
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm);
	set_u32(&tcm, 0x1f8, 1);
	set_u32(&tcm, 0x220, 1);
	syna_tcm_v1_terminate(&tcm);
	REQUIRE(completion_checks == 1);
	REQUIRE(complete_calls == 0);
	REQUIRE(*(u32 *)((u8 *)&tcm + 0x1f8) == 2);
	return true;
}

static bool test_remove_null(void)
{
	reset_state();
	syna_tcm_remove_device(NULL);
	REQUIRE(free_calls == 0);
	return true;
}

static bool test_remove_releases_buffers(void)
{
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm);
	set_ptr(&tcm, 0x2d0, calloc(1, 8));
	set_ptr(&tcm, 0x288, calloc(1, 8));
	set_ptr(&tcm, 0x240, calloc(1, 8));
	set_ptr(&tcm, 0x190, calloc(1, 8));
	set_ptr(&tcm, 0x100, calloc(1, 8));
	set_ptr(&tcm, 0x148, calloc(1, 8));
	set_u8(&tcm, 0x310, 1);
	set_u8(&tcm, 0x2c8, 1);
	set_u8(&tcm, 0x280, 1);
	set_u8(&tcm, 0x1d0, 1);
	set_u8(&tcm, 0x140, 1);
	set_u8(&tcm, 0x188, 1);
	set_u8(&tcm, 0x128, 1);
	syna_tcm_remove_device(&tcm);
	REQUIRE(free_calls == 7);
	REQUIRE(*(void **)((u8 *)&tcm + 0x2d8) == NULL);
	REQUIRE(*(void **)((u8 *)&tcm + 0x290) == NULL);
	REQUIRE(*(void **)((u8 *)&tcm + 0x248) == NULL);
	REQUIRE(*(void **)((u8 *)&tcm + 0x198) == NULL);
	REQUIRE(*(void **)((u8 *)&tcm + 0x108) == NULL);
	REQUIRE(*(void **)((u8 *)&tcm + 0x150) == NULL);
	REQUIRE(*(u8 *)((u8 *)&tcm + 0x310) == 0);
	REQUIRE(*(u8 *)((u8 *)&tcm + 0x188) == 0);
	return true;
}

static bool test_remove_without_managed_device(void)
{
	struct tcm_dev tcm;

	reset_state();
	setup_tcm(&tcm);
	managed_device_available = false;
	set_ptr(&tcm, 0x2d0, calloc(1, 8));
	set_u8(&tcm, 0x310, 1);
	syna_tcm_remove_device(&tcm);
	REQUIRE(free_calls == 0);
	REQUIRE(*(void **)((u8 *)&tcm + 0x2d8) == NULL);
	REQUIRE(*(u8 *)((u8 *)&tcm + 0x310) == 0);
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
	RUN(test_clear_null);
	RUN(test_clear_without_callback);
	RUN(test_clear_calls_callback_once);
	RUN(test_terminate_null);
	RUN(test_terminate_idle);
	RUN(test_terminate_active_completes);
	RUN(test_terminate_active_already_done);
	RUN(test_remove_null);
	RUN(test_remove_releases_buffers);
	RUN(test_remove_without_managed_device);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
