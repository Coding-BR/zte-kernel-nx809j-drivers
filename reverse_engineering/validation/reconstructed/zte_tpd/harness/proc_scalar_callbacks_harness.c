#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define _DEFS_H
#define __fastcall
#define __int8 char
#define __user
#define SP_EL0 0

typedef int64_t __int64;
typedef int16_t __int16;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
typedef uint16_t _WORD;
typedef uint8_t _BYTE;
typedef uint64_t _BOOL8;
typedef uint32_t _BOOL4;

#define min(a, b) ((a) < (b) ? (a) : (b))

typedef enum zlog_error_no {
	TP_I2C_R_ERROR_NO = 1,
	TP_I2C_W_ERROR_NO,
	TP_I2C_R_WARN_NO,
	TP_I2C_W_WARN_NO,
	TP_SPI_R_ERROR_NO,
	TP_SPI_W_ERROR_NO,
	TP_SPI_R_WARN_NO,
	TP_SPI_W_WARN_NO,
	TP_CRC_ERROR_NO,
	TP_FW_UPGRADE_ERROR_NO,
	TP_ESD_CHECK_ERROR_NO,
	TP_ESD_CHECK_WARN_NO,
	TP_PROBE_ERROR_NO,
	TP_SUSPEND_GESTURE_OPEN_NO,
	TP_REQUEST_FIRMWARE_ERROR_NO,
} zlog_error_no;

struct file { int unused; };

static uint8_t status_registers[2048];
static uint8_t *device;
__int64 tpd_cdev;
_WORD word_314C0;
_DWORD dword_314A0;

static const char unk_3A127[] = "";
static const char unk_31DC4[] = "";
static const char unk_374F7[] = "";
static const char unk_31DA7[] = "";

static unsigned int callback_calls;
static unsigned int callback_value;
static size_t callback_field_offset;
static size_t callback_field_width;
static unsigned int complete_calls;
static unsigned int sleep_calls;
static unsigned int uevent_calls;
static unsigned int copy_from_user_fail;
static unsigned int zlog_calls;
static zlog_error_no zlog_value;

static uintptr_t read_status_register(int reg)
{
	(void)reg;
	return (uintptr_t)status_registers;
}

#define _ReadStatusReg(reg) read_status_register(reg)

static int printk(const void *format, ...)
{
	(void)format;
	return 0;
}

static ssize_t simple_read_from_buffer(__int64 destination, size_t count,
				       __int64 *position, const void *source,
				       size_t available)
{
	size_t copied;

	if (*position < 0)
		return -EINVAL;
	if ((uint64_t)*position >= available)
		return 0;
	copied = available - (size_t)*position;
	if (copied > count)
		copied = count;
	memcpy((void *)(uintptr_t)destination,
	       (const uint8_t *)source + *position, copied);
	*position += (__int64)copied;
	return (ssize_t)copied;
}

static int parse_uint_bytes(const char *input, size_t count, unsigned int base,
			    unsigned int *value)
{
	char local[64];
	char *end;
	unsigned long parsed;

	if (!input || !count || count >= sizeof(local))
		return -EINVAL;
	memcpy(local, input, count);
	local[count] = '\0';
	errno = 0;
	parsed = strtoul(local, &end, base);
	if (errno || end == local || parsed > UINT32_MAX)
		return -EINVAL;
	while (*end == '\n' || *end == '\r' || *end == ' ' || *end == '\t')
		end++;
	if (*end != '\0')
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

static int kstrtouint_from_user(__int64 input, size_t count, unsigned int base,
			       unsigned int *value)
{
	return parse_uint_bytes((const char *)(uintptr_t)input, count, base, value);
}

static int kstrtouint(const char *input, unsigned int base, unsigned int *value)
{
	return parse_uint_bytes(input, strlen(input), base ? base : 10, value);
}

static void _check_object_size(const void *object, size_t count, int to_user)
{
	(void)object;
	(void)count;
	(void)to_user;
}

static unsigned long copy_from_user(void *destination, const void *source,
				    size_t count)
{
	if (copy_from_user_fail)
		return count;
	memcpy(destination, source, count);
	return 0;
}

static unsigned long zte_inline_copy_from_user(void *destination,
                                               const void *source, size_t count)
{
	return copy_from_user(destination, source, count);
}

static void complete(void *completion)
{
	(void)completion;
	complete_calls++;
}

static void msleep(unsigned int milliseconds)
{
	if (milliseconds == 100)
		sleep_calls++;
}

static int report_ufp_uevent(int event)
{
	if (event == 0)
		uevent_calls++;
	return 0;
}

static void tpd_zlog_record_notify(zlog_error_no error_no)
{
	zlog_calls++;
	zlog_value = error_no;
}

static void write_device_value(size_t offset, size_t width, unsigned int value)
{
	if (width == 1) {
		device[offset] = (uint8_t)value;
	} else {
		memcpy(device + offset, &value, sizeof(value));
	}
}

static unsigned int read_device_value(size_t offset, size_t width)
{
	unsigned int value = 0;

	if (width == 1)
		return device[offset];
	memcpy(&value, device + offset, sizeof(value));
	return value;
}

static void getter_callback(_QWORD candidate_device)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	write_device_value(callback_field_offset, callback_field_width,
			   callback_value);
}

static void record_setter(__int64 candidate_device, unsigned int value)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	callback_value = value;
	write_device_value(callback_field_offset, callback_field_width,
			   callback_value);
}

static void setter_callback_int(__int64 candidate_device, __int64 value)
{
	record_setter(candidate_device, (unsigned int)value);
}

static void setter_callback_bool(__int64 candidate_device, _BOOL8 value)
{
	record_setter(candidate_device, (unsigned int)value);
}

static void install_getter(size_t offset)
{
	void (*callback)(_QWORD) = getter_callback;

	memcpy(device + offset, &callback, sizeof(callback));
}

static void install_setter(size_t offset, bool boolean_value)
{
	if (boolean_value) {
		void (*callback)(__int64, _BOOL8) = setter_callback_bool;

		memcpy(device + offset, &callback, sizeof(callback));
	} else {
		void (*callback)(__int64, __int64) = setter_callback_int;

		memcpy(device + offset, &callback, sizeof(callback));
	}
}

#include "display_rotation_show.c"
#include "set_display_rotation.c"
#include "get_fake_sleep.c"
#include "set_fake_sleep.c"
#include "get_finger_lock_flag.c"
#include "set_finger_lock_flag.c"
#include "get_follow_hand_level.c"
#include "set_follow_hand_level.c"
#include "get_one_key.c"
#include "set_one_key.c"
#include "get_play_game.c"
#include "set_play_game.c"
#include "get_rotation_limit_level.c"
#include "set_rotation_limit_level.c"
#include "get_screen_off_awake.c"
#include "set_screen_off_awake.c"
#include "get_stability_level.c"
#include "set_stability_level.c"
#include "get_tp_report_rate.c"
#include "set_tp_report_rate.c"
#include "headset_state_show.c"
#include "headset_state_store.c"
#include "suspend_show.c"
#include "tp_zlog_debug_write.c"

typedef ssize_t (*read_handler)(struct file *, char *, size_t, loff_t *);
typedef ssize_t (*write_handler)(struct file *, const char *, size_t, loff_t *);

struct read_case {
	const char *name;
	read_handler handler;
	size_t field_offset;
	size_t field_width;
	size_t callback_offset;
	const char *format;
};

struct write_case {
	const char *name;
	write_handler handler;
	size_t field_offset;
	size_t field_width;
	size_t callback_offset;
	bool direct_field_write;
	bool boolean_value;
};

#define NO_CALLBACK ((size_t)-1)

static const struct read_case read_cases[] = {
	{ "display_rotation_show", display_rotation_show, 16, 4, NO_CALLBACK,
	  "display rotation: %u\n" },
	{ "get_fake_sleep", get_fake_sleep, 1152, 4, 3600, "%u\n" },
	{ "get_finger_lock_flag", get_finger_lock_flag, 1140, 4, NO_CALLBACK,
	  "%u\n" },
	{ "get_follow_hand_level", get_follow_hand_level, 1128, 4, 3440, "%u\n" },
	{ "get_one_key", get_one_key, 1112, 4, 3384, "%u\n" },
	{ "get_play_game", get_play_game, 1116, 4, 3400, "%u\n" },
	{ "get_rotation_limit_level", get_rotation_limit_level, 12, 4, 3280,
	  "%u\n" },
	{ "get_screen_off_awake", get_screen_off_awake, 1156, 4, 3616, "%u\n" },
	{ "get_stability_level", get_stability_level, 1132, 4, 3456, "%u\n" },
	{ "get_tp_report_rate", get_tp_report_rate, 1124, 4, 3424, "%u\n" },
	{ "headset_state_show", headset_state_show, 23, 1, 3264,
	  "headset state: %u\n" },
	{ "suspend_show", suspend_show, 21, 1, 3232, "tp suspend is: %u\n" },
};

static const struct write_case write_cases[] = {
	{ "set_display_rotation", set_display_rotation, 16, 4, 3288, true, false },
	{ "set_fake_sleep", set_fake_sleep, 1152, 4, 3608, false, true },
	{ "set_finger_lock_flag", set_finger_lock_flag, 1140, 4, NO_CALLBACK, true, true },
	{ "set_follow_hand_level", set_follow_hand_level, 1128, 4, 3432, false, false },
	{ "set_one_key", set_one_key, 1112, 4, 3392, false, true },
	{ "set_play_game", set_play_game, 1116, 4, 3408, false, false },
	{ "set_rotation_limit_level", set_rotation_limit_level, 12, 4, 3272, false, false },
	{ "set_screen_off_awake", set_screen_off_awake, 1156, 4, 3624, false, true },
	{ "set_stability_level", set_stability_level, 1132, 4, 3448, false, false },
	{ "set_tp_report_rate", set_tp_report_rate, 1124, 4, 3416, false, false },
	{ "headset_state_store", headset_state_store, 23, 1, 3256, false, true },
};

static void reset_fixture(void)
{
	memset(device, 0, 4096);
	memset(status_registers, 0, sizeof(status_registers));
	tpd_cdev = (__int64)(uintptr_t)device;
	word_314C0 = 0;
	dword_314A0 = 0;
	callback_calls = 0;
	callback_value = 0;
	callback_field_offset = 0;
	callback_field_width = 0;
	complete_calls = 0;
	sleep_calls = 0;
	uevent_calls = 0;
	copy_from_user_fail = 0;
	zlog_calls = 0;
	zlog_value = 0;
}

static bool test_scalar_reads(void)
{
	char output[64];
	char expected[64];
	struct file file = { 0 };

	for (size_t index = 0; index < sizeof(read_cases) / sizeof(read_cases[0]);
	     index++) {
		const struct read_case *test = &read_cases[index];
		loff_t position = 0;
		unsigned int value = (unsigned int)(index + 3);
		int expected_size;
		ssize_t result;

		reset_fixture();
		callback_value = value;
		callback_field_offset = test->field_offset;
		callback_field_width = test->field_width;
		if (test->callback_offset == NO_CALLBACK) {
			write_device_value(test->field_offset, test->field_width, value);
		} else {
			install_getter(test->callback_offset);
		}
		memset(output, 0, sizeof(output));
		expected_size = snprintf(expected, sizeof(expected), test->format, value);
		result = test->handler(&file, output, sizeof(output), &position);
		if (result != expected_size || position != expected_size ||
		    memcmp(output, expected, (size_t)expected_size) != 0 ||
		    callback_calls != (test->callback_offset == NO_CALLBACK ? 0u : 1u)) {
			fprintf(stderr, "read mismatch: %s\n", test->name);
			return false;
		}
	}
	return true;
}

static bool test_scalar_reads_at_eof(void)
{
	char output[8] = { 0 };
	struct file file = { 0 };

	for (size_t index = 0; index < sizeof(read_cases) / sizeof(read_cases[0]);
	     index++) {
		const struct read_case *test = &read_cases[index];
		loff_t position = 1;

		reset_fixture();
		if (test->callback_offset != NO_CALLBACK)
			install_getter(test->callback_offset);
		if (test->handler(&file, output, sizeof(output), &position) != 0 ||
		    position != 1 || callback_calls != 0) {
			fprintf(stderr, "EOF mismatch: %s\n", test->name);
			return false;
		}
	}
	return true;
}

static bool test_scalar_writes(void)
{
	const char input[] = "7";
	struct file file = { 0 };

	for (size_t index = 0; index < sizeof(write_cases) / sizeof(write_cases[0]);
	     index++) {
		const struct write_case *test = &write_cases[index];
		loff_t position = 0;
		ssize_t result;

		reset_fixture();
		callback_field_offset = test->field_offset;
		callback_field_width = test->field_width;
		if (test->callback_offset != NO_CALLBACK)
			install_setter(test->callback_offset, test->boolean_value);
		if (strcmp(test->name, "set_finger_lock_flag") == 0)
			write_device_value(1112, 4, 1);
		result = test->handler(&file, input, sizeof(input) - 1, &position);
		if (result != (ssize_t)(sizeof(input) - 1) ||
		    read_device_value(test->field_offset, test->field_width) != 7 ||
		    callback_calls != (test->callback_offset == NO_CALLBACK ? 0u : 1u)) {
			fprintf(stderr, "write mismatch: %s\n", test->name);
			return false;
		}
	}
	return true;
}

static bool test_scalar_write_parse_errors(void)
{
	const char input[] = "invalid";
	struct file file = { 0 };

	for (size_t index = 0; index < sizeof(write_cases) / sizeof(write_cases[0]);
	     index++) {
		const struct write_case *test = &write_cases[index];
		loff_t position = 0;

		reset_fixture();
		write_device_value(test->field_offset, test->field_width, 99);
		if (test->callback_offset != NO_CALLBACK)
			install_setter(test->callback_offset, test->boolean_value);
		if (test->handler(&file, input, sizeof(input) - 1, &position) != -EINVAL ||
		    read_device_value(test->field_offset, test->field_width) != 99 ||
		    callback_calls != 0) {
			fprintf(stderr, "parse mismatch: %s\n", test->name);
			return false;
		}
	}
	return true;
}

static bool test_explicit_copy_bound(void)
{
	const char input[] = "123456789extra";
	const write_handler handlers[] = { set_display_rotation, headset_state_store };
	const size_t fields[] = { 16, 23 };
	const size_t widths[] = { 4, 1 };
	const size_t callbacks[] = { 3288, 3256 };
	const bool boolean_values[] = { false, true };
	struct file file = { 0 };

	for (size_t index = 0; index < 2; index++) {
		loff_t position = 0;
		ssize_t result;

		reset_fixture();
		callback_field_offset = fields[index];
		callback_field_width = widths[index];
		install_setter(callbacks[index], boolean_values[index]);
		result = handlers[index](&file, input, sizeof(input) - 1, &position);
		if (result != 9 || callback_calls != 1 || callback_value != 123456789u) {
			fprintf(stderr, "explicit copy bound mismatch: %zu\n", index);
			return false;
		}
	}
	return true;
}

static bool test_finger_lock_side_effects(void)
{
	const char input[] = "1";
	struct file file = { 0 };
	loff_t position = 0;

	reset_fixture();
	word_314C0 = 1;
	if (set_finger_lock_flag(&file, input, sizeof(input) - 1, &position) != 1)
		return false;
	return read_device_value(1140, 4) == 1 && complete_calls == 1 &&
	       sleep_calls == 1 && uevent_calls == 1;
}

static bool test_zlog_debug_write(void)
{
	static const unsigned int accepted[] = { 1, 2, 5, 6, 9, 10, 11, 13, 14, 15 };
	struct file file = { 0 };
	char input[32];

	for (size_t index = 0; index < sizeof(accepted) / sizeof(accepted[0]); index++) {
		loff_t position = 0;
		int length = snprintf(input, sizeof(input), "%u", accepted[index]);

		reset_fixture();
		if (tp_zlog_debug_write(&file, input, (size_t)length, &position) != length ||
		    zlog_calls != 1 || zlog_value != (zlog_error_no)accepted[index])
			return false;
	}

	reset_fixture();
	if (tp_zlog_debug_write(&file, "3", 1, NULL) != 1 || zlog_calls != 0)
		return false;
	reset_fixture();
	if (tp_zlog_debug_write(&file, "invalid", 7, NULL) != -EINVAL || zlog_calls != 0)
		return false;
	reset_fixture();
	copy_from_user_fail = 1;
	if (tp_zlog_debug_write(&file, "1", 1, NULL) != -EINVAL || zlog_calls != 0)
		return false;
	reset_fixture();
	return tp_zlog_debug_write(&file, "123456789extra", 14, NULL) == 9 &&
	       zlog_calls == 0;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "scalar_reads", test_scalar_reads },
		{ "scalar_reads_at_eof", test_scalar_reads_at_eof },
		{ "scalar_writes", test_scalar_writes },
		{ "scalar_write_parse_errors", test_scalar_write_parse_errors },
		{ "explicit_copy_bound", test_explicit_copy_bound },
		{ "finger_lock_side_effects", test_finger_lock_side_effects },
		{ "zlog_debug_write", test_zlog_debug_write },
	};
	size_t passed = 0;

	device = calloc(1, 4096);
	if (!device)
		return 2;
	for (size_t index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (tests[index].run()) {
			passed++;
			printf("PASS %s\n", tests[index].name);
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	free(device);
	printf("SUMMARY %zu/%zu tests passed\n", passed,
	       sizeof(tests) / sizeof(tests[0]));
	return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
