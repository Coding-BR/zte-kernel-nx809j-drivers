#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define _DEFS_H
#define __fastcall
#define __user
#define SP_EL0 0

typedef int64_t __int64;
typedef int16_t __int16;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
typedef uint64_t _BOOL8;
typedef uint32_t _BOOL4;

struct file { int unused; };

static uint8_t status_registers[2048];
static uint8_t device[4096];
__int64 tpd_cdev;

static const char unk_3A127[] = "";
static const char unk_34061[] = "";
static const char unk_328A8[] = "";
static const char unk_374F7[] = "";

static unsigned int callback_calls;
static unsigned int callback_value;
static unsigned int getter_value;
static size_t callback_field_offset;

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

static int kstrtouint_from_user(__int64 input, size_t count, unsigned int base,
			       unsigned int *value)
{
	char local[64];
	char *end;
	unsigned long parsed;

	if (!input || !count || count >= sizeof(local))
		return -EINVAL;
	memcpy(local, (const void *)(uintptr_t)input, count);
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

static void write_device_u32(size_t offset, unsigned int value)
{
	memcpy(device + offset, &value, sizeof(value));
}

static unsigned int read_device_u32(size_t offset)
{
	unsigned int value;

	memcpy(&value, device + offset, sizeof(value));
	return value;
}

static void getter_callback(_QWORD candidate_device)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	write_device_u32(callback_field_offset, getter_value);
}

static void record_setter(__int64 candidate_device, unsigned int value)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	callback_value = value;
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

#include "tp_wake_gesture_read.c"
#include "tp_wake_gesture_write.c"
#include "tp_smart_cover_read.c"
#include "tp_smart_cover_write.c"
#include "tp_glove_read.c"
#include "tp_glove_write.c"
#include "tp_single_tap_read.c"
#include "tp_single_tap_write.c"
#include "tp_single_aod_read.c"
#include "tp_single_aod_write.c"
#include "tp_single_game_read.c"
#include "tp_single_game_write.c"
#include "tp_palm_mode_read.c"
#include "tp_palm_mode_write.c"
#include "tp_fold_state_read.c"
#include "tp_fold_state_write.c"
#include "tp_frame_data_read.c"
#include "tp_frame_data_write.c"

typedef ssize_t (*feature_read_fn)(struct file *, char *, size_t, loff_t *);
typedef ssize_t (*feature_write_fn)(struct file *, const char *, size_t, loff_t *);

struct feature {
	const char *name;
	feature_read_fn read;
	feature_write_fn write;
	size_t field_offset;
	size_t getter_offset;
	size_t setter_offset;
	bool normalize_nonzero;
	bool boolean_setter;
};

static const struct feature features[] = {
	{ "wake_gesture", tp_wake_gesture_read, tp_wake_gesture_write, 0, 3184, 3192, false, true },
	{ "smart_cover", tp_smart_cover_read, tp_smart_cover_write, 4, 3200, 3208, false, true },
	{ "glove", tp_glove_read, tp_glove_write, 8, 3216, 3224, false, true },
	{ "single_tap", tp_single_tap_read, tp_single_tap_write, 1100, 3328, 3336, true, false },
	{ "single_aod", tp_single_aod_read, tp_single_aod_write, 1104, 3344, 3352, true, false },
	{ "single_game", tp_single_game_read, tp_single_game_write, 1108, 3360, 3368, true, false },
	{ "palm_mode", tp_palm_mode_read, tp_palm_mode_write, 1144, 3568, 3576, false, true },
	{ "fold_state", tp_fold_state_read, tp_fold_state_write, 1148, 3584, 3592, false, true },
	{ "frame_data", tp_frame_data_read, tp_frame_data_write, 1120, 3656, 3648, false, true },
};

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: CHECK failed: %s\n", __func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_fixture(void)
{
	memset(device, 0, sizeof(device));
	memset(status_registers, 0, sizeof(status_registers));
	tpd_cdev = (__int64)(uintptr_t)device;
	callback_calls = 0;
	callback_value = 0;
	getter_value = 0;
	callback_field_offset = 0;
}

static bool test_feature_reads_with_getters(void)
{
	size_t index;

	for (index = 0; index < sizeof(features) / sizeof(features[0]); index++) {
		const struct feature *feature = &features[index];
		char output[32] = { 0 };
		char expected[32];
		loff_t offset = 0;
		int expected_length;
		ssize_t result;

		reset_fixture();
		callback_field_offset = feature->field_offset;
		getter_value = 100U + (unsigned int)index;
		write_device_u32(feature->field_offset, 1);
		install_getter(feature->getter_offset);
		expected_length = snprintf(expected, sizeof(expected), "%u\n", getter_value);
		result = feature->read(NULL, output, sizeof(output), &offset);
		CHECK(result == expected_length);
		CHECK(offset == expected_length);
		CHECK(callback_calls == 1);
		CHECK(read_device_u32(feature->field_offset) == getter_value);
		CHECK(memcmp(output, expected, (size_t)expected_length) == 0);
	}
	return true;
}

static bool test_feature_reads_without_getters(void)
{
	size_t index;

	for (index = 0; index < sizeof(features) / sizeof(features[0]); index++) {
		const struct feature *feature = &features[index];
		char output[32] = { 0 };
		char expected[32];
		loff_t offset = 0;
		unsigned int value = 20U + (unsigned int)index;
		int expected_length;

		reset_fixture();
		write_device_u32(feature->field_offset, value);
		expected_length = snprintf(expected, sizeof(expected), "%u\n", value);
		CHECK(feature->read(NULL, output, sizeof(output), &offset) == expected_length);
		CHECK(callback_calls == 0);
		CHECK(memcmp(output, expected, (size_t)expected_length) == 0);
	}
	return true;
}

static bool test_feature_reads_at_eof(void)
{
	size_t index;

	for (index = 0; index < sizeof(features) / sizeof(features[0]); index++) {
		const struct feature *feature = &features[index];
		char output[8] = { 0x5a };
		loff_t offset = 1;

		reset_fixture();
		install_getter(feature->getter_offset);
		CHECK(feature->read(NULL, output, sizeof(output), &offset) == 0);
		CHECK(callback_calls == 0);
		CHECK(offset == 1);
		CHECK(output[0] == 0x5a);
	}
	return true;
}

static bool test_feature_read_partial_buffer(void)
{
	char output[2] = { 0 };
	loff_t offset = 0;

	reset_fixture();
	write_device_u32(features[0].field_offset, 42);
	CHECK(features[0].read(NULL, output, 1, &offset) == 1);
	CHECK(output[0] == '4');
	CHECK(offset == 1);
	return true;
}

static bool test_feature_writes_with_callbacks(void)
{
	static const char nonzero[] = "7\n";
	static const char zero[] = "0\n";
	size_t index;

	for (index = 0; index < sizeof(features) / sizeof(features[0]); index++) {
		const struct feature *feature = &features[index];
		unsigned int expected = feature->normalize_nonzero ? 5 : 7;
		loff_t offset = 0;

		reset_fixture();
		install_setter(feature->setter_offset, feature->boolean_setter);
		CHECK(feature->write(NULL, nonzero, sizeof(nonzero) - 1, &offset) ==
		      (ssize_t)(sizeof(nonzero) - 1));
		CHECK(callback_calls == 1);
		CHECK(callback_value == expected);

		reset_fixture();
		install_setter(feature->setter_offset, feature->boolean_setter);
		CHECK(feature->write(NULL, zero, sizeof(zero) - 1, &offset) ==
		      (ssize_t)(sizeof(zero) - 1));
		CHECK(callback_calls == 1);
		CHECK(callback_value == 0);
	}
	return true;
}

static bool test_feature_write_parse_errors(void)
{
	static const char invalid[] = "not-a-number";
	size_t index;

	for (index = 0; index < sizeof(features) / sizeof(features[0]); index++) {
		const struct feature *feature = &features[index];
		loff_t offset = 0;

		reset_fixture();
		install_setter(feature->setter_offset, feature->boolean_setter);
		CHECK(feature->write(NULL, invalid, sizeof(invalid) - 1, &offset) == -EINVAL);
		CHECK(callback_calls == 0);
	}
	return true;
}

static bool test_feature_writes_without_callbacks(void)
{
	static const char input[] = "9\n";
	size_t index;

	for (index = 0; index < sizeof(features) / sizeof(features[0]); index++) {
		loff_t offset = 0;

		reset_fixture();
		CHECK(features[index].write(NULL, input, sizeof(input) - 1, &offset) ==
		      (ssize_t)(sizeof(input) - 1));
		CHECK(callback_calls == 0);
	}
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "feature_reads_with_getters", test_feature_reads_with_getters },
		{ "feature_reads_without_getters", test_feature_reads_without_getters },
		{ "feature_reads_at_eof", test_feature_reads_at_eof },
		{ "feature_read_partial_buffer", test_feature_read_partial_buffer },
		{ "feature_writes_with_callbacks", test_feature_writes_with_callbacks },
		{ "feature_write_parse_errors", test_feature_write_parse_errors },
		{ "feature_writes_without_callbacks", test_feature_writes_without_callbacks },
	};
	size_t index;
	size_t passed = 0;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (tests[index].run()) {
			printf("PASS %s\n", tests[index].name);
			passed++;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	printf("SUMMARY %zu/%zu tests passed\n", passed,
	       sizeof(tests) / sizeof(tests[0]));
	return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
