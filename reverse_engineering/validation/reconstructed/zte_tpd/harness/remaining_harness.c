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
typedef int8_t s8;
typedef uint16_t u16;
typedef uint32_t u32;

#define __fastcall
#define __int8 char
#define __int16 short
#define _BOOL8 bool

#ifndef __always_inline
#define __always_inline inline __attribute__((always_inline))
#endif
#define static_assert(condition, ...) _Static_assert(condition, #condition)
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define BIT(bit) (1U << (bit))
#define KOBJ_CHANGE 2
#define GFP_KERNEL 0
#define pr_debug(...) ((void)0)
#define pr_err(...) ((void)0)

struct kobject { int unused; };
struct device { struct kobject kobj; };
struct platform_device { int unused; struct device dev; };
struct ufp_tp_ops_struct { struct platform_device *pdev; };

unsigned long tpd_cdev;
struct ufp_tp_ops_struct ufp_tp_ops;
int current_lcd_state;

#include "zte_tpd_tcm_layout.h"

static bool fail_kmalloc;
static unsigned int kfree_calls;
static unsigned int uevent_calls;
static unsigned int callback_calls;
static char last_env0[64];
static char last_env1[64];
static u8 last_command;
static u8 last_payload[64];
static u32 last_payload_length;
static u32 last_delay;
static int callback_result;
static unsigned int printk_calls;
static unsigned int printk_args[4];
static unsigned int printk_arg_count;
static char printk_function[64];

static const char bit_mismatch_format[] = "bit mismatch";
static const char upper_bound_format[] = "upper bound";
static const char lower_bound_format[] = "lower bound";
const char *unk_3B2DF = bit_mismatch_format;
const char *unk_3C643 = upper_bound_format;
const char *unk_34372 = lower_bound_format;

static int printk(const char *format, ...)
{
	va_list args;
	const char *function;
	unsigned int index;

	printk_calls++;
	va_start(args, format);
	function = va_arg(args, const char *);
	snprintf(printk_function, sizeof(printk_function), "%s", function);
	printk_arg_count = format == bit_mismatch_format ? 1 : 4;
	for (index = 0; index < printk_arg_count; index++)
		printk_args[index] = va_arg(args, unsigned int);
	va_end(args);
	return 0;
}

static void *kmalloc(size_t size, int flags)
{
	(void)flags;
	return fail_kmalloc ? NULL : malloc(size);
}

static void kfree(const void *pointer)
{
	if (pointer) {
		kfree_calls++;
		free((void *)pointer);
	}
}

static int kobject_uevent_env(struct kobject *kobject, int action, char **envp)
{
	(void)kobject;
	if (action != KOBJ_CHANGE)
		abort();
	uevent_calls++;
	snprintf(last_env0, sizeof(last_env0), "%s", envp[0]);
	snprintf(last_env1, sizeof(last_env1), "%s", envp[1]);
	return 0;
}

#include "one_key_report.c"
#include "uf_touch_report.c"
#include "syna_tcm_set_game_partition_config.c"
#include "syna_tcm_testing_0100_check_data.c"
#include "syna_tcm_testing_0500_check_lower_bound.c"
#include "syna_tcm_testing_0500_check_upper_bound.c"
#include "syna_tcm_testing_0A00_check_lower_bound.c"
#include "syna_tcm_testing_0A00_check_upper_bound.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static struct platform_device pdev;
static u8 cdev_storage[0x100];

static void reset_state(void)
{
	memset(cdev_storage, 0, sizeof(cdev_storage));
	*(u16 *)(cdev_storage + 0x1e) = 100;
	*(u16 *)(cdev_storage + 0x20) = 200;
	*(u16 *)(cdev_storage + 0x22) = 20;
	tpd_cdev = (unsigned long)cdev_storage;
	ufp_tp_ops.pdev = &pdev;
	current_lcd_state = 0;
	memset(one_key_finger, 0, sizeof(one_key_finger));
	one_key_down = false;
	memset(fp_finger, 0, sizeof(fp_finger));
	area_meet_down = false;
	fail_kmalloc = false;
	kfree_calls = 0;
	uevent_calls = 0;
	callback_calls = 0;
	last_env0[0] = '\0';
	last_env1[0] = '\0';
	last_command = 0;
	memset(last_payload, 0, sizeof(last_payload));
	last_payload_length = 0;
	last_delay = 0;
	callback_result = 0;
	printk_calls = 0;
	memset(printk_args, 0, sizeof(printk_args));
	printk_arg_count = 0;
	printk_function[0] = '\0';
}

typedef bool (*testing_bound_fn)(void *data, void *limit,
				 int column, int row);

static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_testing_0100_check_data),
		      testing_bound_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_testing_0500_check_upper_bound),
		      testing_bound_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_testing_0500_check_lower_bound),
		      testing_bound_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_testing_0A00_check_upper_bound),
		      testing_bound_fn));
static_assert(__builtin_types_compatible_p(
		      typeof(&syna_tcm_testing_0A00_check_lower_bound),
		      testing_bound_fn));

static bool test_testing_0100_equal(void)
{
	u8 data = 0xa5;
	u8 limit = 0xa5;

	reset_state();
	REQUIRE(syna_tcm_testing_0100_check_data(&data, &limit, 3, 9));
	REQUIRE(printk_calls == 0);
	return true;
}

static bool test_testing_0100_mismatch_bits(void)
{
	u8 data = 0x00;
	u8 limit = 0x85;

	reset_state();
	REQUIRE(!syna_tcm_testing_0100_check_data(&data, &limit, 3, 9));
	REQUIRE(printk_calls == 3);
	REQUIRE(printk_arg_count == 1);
	REQUIRE(printk_args[0] == 31);
	REQUIRE(strcmp(printk_function, "syna_tcm_testing_0100_check_data") == 0);
	return true;
}

static bool test_testing_0500_upper_bound(void)
{
	u16 data = 501;
	u16 limit = 500;

	reset_state();
	REQUIRE(!syna_tcm_testing_0500_check_upper_bound(&data, &limit, 3, 4));
	REQUIRE(printk_calls == 1);
	REQUIRE(printk_arg_count == 4);
	REQUIRE(printk_args[0] == 4 && printk_args[1] == 3);
	REQUIRE(printk_args[2] == 501 && printk_args[3] == 500);
	data = 500;
	REQUIRE(syna_tcm_testing_0500_check_upper_bound(&data, &limit, 3, 4));
	REQUIRE(printk_calls == 1);
	return true;
}

static bool test_testing_0500_lower_bound(void)
{
	u16 data = 99;
	u16 limit = 100;

	reset_state();
	REQUIRE(!syna_tcm_testing_0500_check_lower_bound(&data, &limit, 7, 8));
	REQUIRE(printk_calls == 1);
	REQUIRE(printk_args[0] == 8 && printk_args[1] == 7);
	REQUIRE(printk_args[2] == 99 && printk_args[3] == 100);
	data = 100;
	REQUIRE(syna_tcm_testing_0500_check_lower_bound(&data, &limit, 7, 8));
	return true;
}

static bool test_testing_0A00_upper_bound(void)
{
	__int16 data = -4;
	__int16 limit = -5;

	reset_state();
	REQUIRE(!syna_tcm_testing_0A00_check_upper_bound(&data, &limit, 1, 2));
	REQUIRE(printk_calls == 1);
	REQUIRE(printk_args[0] == 2 && printk_args[1] == 1);
	REQUIRE((int)printk_args[2] == -4 && (int)printk_args[3] == -5);
	data = -5;
	REQUIRE(syna_tcm_testing_0A00_check_upper_bound(&data, &limit, 1, 2));
	return true;
}

static bool test_testing_0A00_lower_bound(void)
{
	__int16 data = -6;
	__int16 limit = -5;

	reset_state();
	REQUIRE(!syna_tcm_testing_0A00_check_lower_bound(&data, &limit, 5, 6));
	REQUIRE(printk_calls == 1);
	REQUIRE(printk_args[0] == 6 && printk_args[1] == 5);
	REQUIRE((int)printk_args[2] == -6 && (int)printk_args[3] == -5);
	data = -5;
	REQUIRE(syna_tcm_testing_0A00_check_lower_bound(&data, &limit, 5, 6));
	return true;
}

static bool test_testing_bound_callback_dispatch(void)
{
	testing_bound_fn callbacks[] = {
		syna_tcm_testing_0100_check_data,
		syna_tcm_testing_0500_check_upper_bound,
		syna_tcm_testing_0500_check_lower_bound,
		syna_tcm_testing_0A00_check_upper_bound,
		syna_tcm_testing_0A00_check_lower_bound,
	};
	u16 value = 0;
	unsigned int index;

	reset_state();
	for (index = 0; index < ARRAY_SIZE(callbacks); index++)
		REQUIRE(callbacks[index](&value, &value, 0, 0));
	REQUIRE(printk_calls == 0);
	return true;
}

static bool test_one_key_geometry_and_state(void)
{
	reset_state();
	one_key_report(1, 100, 200, 2);
	REQUIRE(uevent_calls == 1);
	REQUIRE(strcmp(last_env0, "fp_gesture_down=true") == 0);
	REQUIRE(strcmp(last_env1, "finger_id=2") == 0);
	one_key_report(1, 100, 200, 2);
	REQUIRE(uevent_calls == 1);
	one_key_report(1, 80, 200, 3);
	REQUIRE(uevent_calls == 1);
	one_key_report(0, -1, -1, 2);
	REQUIRE(uevent_calls == 2);
	REQUIRE(strcmp(last_env0, "fp_gesture_up=true") == 0);
	one_key_report(0, -1, -1, 2);
	one_key_report(1, 100, 200, 10);
	REQUIRE(uevent_calls == 2);
	return true;
}

static bool test_one_key_missing_device(void)
{
	reset_state();
	ufp_tp_ops.pdev = NULL;
	one_key_report(1, 100, 200, 0);
	REQUIRE(uevent_calls == 0);
	REQUIRE(one_key_finger[0] == 1);
	return true;
}

static bool test_uf_touch_events_and_power_states(void)
{
	static const char *const expected_power[] = {
		"TP_POWER_STATUS=2", "TP_POWER_STATUS=1", "TP_POWER_STATUS=3",
	};
	int state;

	for (state = 0; state < 3; state++) {
		reset_state();
		current_lcd_state = state;
		uf_touch_report(1, 100, 200, state);
		REQUIRE(uevent_calls == 1);
		REQUIRE(strcmp(last_env0, "areameet_down=true") == 0);
		REQUIRE(strcmp(last_env1, expected_power[state]) == 0);
		uf_touch_report(1, 100, 200, state);
		REQUIRE(uevent_calls == 1);
		uf_touch_report(0, -1, -1, state);
		REQUIRE(uevent_calls == 2);
		REQUIRE(strcmp(last_env0, "areameet_up=true") == 0);
	}
	return true;
}

static bool test_uf_touch_rejections(void)
{
	reset_state();
	uf_touch_report(1, 120, 200, 0);
	REQUIRE(uevent_calls == 0);
	uf_touch_report(1, 100, 200, 10);
	REQUIRE(uevent_calls == 0);
	current_lcd_state = 3;
	uf_touch_report(1, 100, 200, 0);
	REQUIRE(uevent_calls == 0);
	REQUIRE(fp_finger[0] == 1);
	return true;
}

static int test_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
			      u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	(void)response_code;
	callback_calls++;
	last_command = command;
	last_payload_length = length;
	last_delay = delay_ms;
	if (length > sizeof(last_payload))
		abort();
	memcpy(last_payload, payload, length);
	return callback_result;
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

static bool test_game_partition_payload_and_default_delay(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	u8 data[] = { 0x11, 0x22, 0x33 };

	reset_state();
	setup_tcm(&tcm, &transport);
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 0x5a, 3, data, 0) == 0);
	REQUIRE(callback_calls == 1);
	REQUIRE(last_command == 0xc7);
	REQUIRE(last_payload_length == 4);
	REQUIRE(memcmp(last_payload, "\x5a\x11\x22\x33", 4) == 0);
	REQUIRE(last_delay == 77);
	REQUIRE(kfree_calls == 1);
	return true;
}

static bool test_game_partition_delay_modes(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	u8 data = 0xaa;

	reset_state();
	setup_tcm(&tcm, &transport);
	transport.flags = BIT(0);
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 1, 1, &data, 0) == 0);
	REQUIRE(last_delay == 0);
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 2, 1, &data, 123) == 0);
	REQUIRE(last_delay == 123);
	REQUIRE(kfree_calls == 2);
	return true;
}

static bool test_game_partition_errors_and_cleanup(void)
{
	struct tcm_transport_overlay transport;
	struct tcm_dev tcm;
	u8 data = 0xaa;

	reset_state();
	REQUIRE(syna_tcm_set_game_partition_config(NULL, 1, 1, &data, 0) == -241);
	setup_tcm(&tcm, &transport);
	tcm.firmware_mode = 0;
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 1, 1, &data, 0) == -241);
	tcm.firmware_mode = 1;
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 1, -1, &data, 0) == -EINVAL);
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 1, 1, NULL, 0) == -EINVAL);
	tcm.write_message = NULL;
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 1, 1, &data, 0) == -EOPNOTSUPP);
	tcm.write_message = test_write_message;
	fail_kmalloc = true;
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 1, 1, &data, 0) == -ENOMEM);
	REQUIRE(kfree_calls == 0);
	fail_kmalloc = false;
	callback_result = -EIO;
	REQUIRE(syna_tcm_set_game_partition_config(&tcm, 1, 1, &data, 0) == -EIO);
	REQUIRE(kfree_calls == 1);
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
	RUN(test_one_key_geometry_and_state);
	RUN(test_one_key_missing_device);
	RUN(test_uf_touch_events_and_power_states);
	RUN(test_uf_touch_rejections);
	RUN(test_game_partition_payload_and_default_delay);
	RUN(test_game_partition_delay_modes);
	RUN(test_game_partition_errors_and_cleanup);
	RUN(test_testing_0100_equal);
	RUN(test_testing_0100_mismatch_bits);
	RUN(test_testing_0500_upper_bound);
	RUN(test_testing_0500_lower_bound);
	RUN(test_testing_0A00_upper_bound);
	RUN(test_testing_0A00_lower_bound);
	RUN(test_testing_bound_callback_dispatch);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
