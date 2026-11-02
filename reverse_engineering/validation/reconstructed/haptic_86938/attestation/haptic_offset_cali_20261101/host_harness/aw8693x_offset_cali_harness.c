#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include <linux/types.h>

struct aw_haptic {
	u8 bytes[0x500];
	u8 sample[2];
	int write_status;
	int read_status;
	bool read_fills_sample;
};

#include "/work/repo/kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_131_aw8693x_offset_cali.c"

enum event_kind { EVENT_WRITE, EVENT_READ, EVENT_SLEEP };

struct event {
	enum event_kind kind;
	u8 reg;
	u32 mask;
	u8 value;
	u32 length;
	unsigned long min;
	unsigned long max;
	u32 state;
};

static struct event events[16];
static size_t event_count;
static char logs[8][256];
static size_t log_count;
static int failures;

static void fail(const char *case_name, const char *message)
{
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	failures++;
}

static void expect(bool condition, const char *case_name, const char *message)
{
	if (!condition)
		fail(case_name, message);
}

int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value)
{
	struct event *event = &events[event_count++];

	(void)haptic;
	*event = (struct event){ .kind = EVENT_WRITE, .reg = reg,
		.mask = mask, .value = value };
	return haptic->write_status;
}

int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length)
{
	struct event *event = &events[event_count++];

	*event = (struct event){ .kind = EVENT_READ, .reg = reg, .length = length };
	if (haptic->read_status == 0 && haptic->read_fills_sample && length == 2)
		memcpy(data, haptic->sample, 2);
	return haptic->read_status;
}

void usleep_range_state(unsigned long min, unsigned long max, u32 state)
{
	struct event *event = &events[event_count++];

	*event = (struct event){ .kind = EVENT_SLEEP, .min = min,
		.max = max, .state = state };
}

int printk(const char *format, ...)
{
	va_list args;
	int result;

	if (log_count >= sizeof(logs) / sizeof(logs[0]))
		return -1;
	va_start(args, format);
	result = vsnprintf(logs[log_count], sizeof(logs[log_count]), format, args);
	va_end(args);
	log_count++;
	return result;
}

static const s32 reference_gain[8] = {
	2046, 3069, 5115, 9207, 11253, 17391, 21483, 41943,
};

static s32 reference_offset(u8 index, unsigned int raw)
{
	s32 divisor = index < 8 ? reference_gain[index] : 0;
	s32 dividend = 0x988 * (s32)raw - 0x131000;

	return divisor ? dividend / divisor : 0;
}

static bool log_contains(const char *needle)
{
	for (size_t i = 0; i < log_count; i++)
		if (strstr(logs[i], needle))
			return true;
	return false;
}

static size_t log_count_containing(const char *needle)
{
	size_t found = 0;

	for (size_t i = 0; i < log_count; i++)
		found += strstr(logs[i], needle) != NULL;
	return found;
}

static void check_bus_sequence(const char *case_name, u8 index)
{
	static const struct event expected[] = {
		{ .kind = EVENT_WRITE, .reg = 0x4e, .mask = 0xfffffff8U },
		{ .kind = EVENT_WRITE, .reg = 0x45, .mask = 0xfffffffbU, .value = 4 },
		{ .kind = EVENT_SLEEP, .min = 500, .max = 600, .state = 2 },
		{ .kind = EVENT_WRITE, .reg = 0x4e, .mask = 0xffffff87U, .value = 0x20 },
		{ .kind = EVENT_WRITE, .reg = 0x4d, .mask = 0xfffffffcU, .value = 1 },
		{ .kind = EVENT_SLEEP, .min = 3000, .max = 3500, .state = 2 },
		{ .kind = EVENT_WRITE, .reg = 0x4d, .mask = 0xfffffffcU, .value = 0 },
		{ .kind = EVENT_READ, .reg = 0x4f, .length = 2 },
		{ .kind = EVENT_WRITE, .reg = 0x45, .mask = 0xfffffffbU, .value = 0 },
	};

	expect(event_count == sizeof(expected) / sizeof(expected[0]), case_name,
	       "bus operation count changed");
	if (event_count != sizeof(expected) / sizeof(expected[0]))
		return;
	for (size_t i = 0; i < event_count; i++) {
		const struct event *got = &events[i];
		const struct event *want = &expected[i];

		if (got->kind != want->kind || got->reg != want->reg ||
		    got->mask != want->mask || got->length != want->length ||
		    got->min != want->min || got->max != want->max ||
		    got->state != want->state ||
		    (got->kind == EVENT_WRITE && i == 0 && got->value != index) ||
		    (got->kind == EVENT_WRITE && i != 0 && got->value != want->value)) {
			fail(case_name, "I2C/delay sequence or argument changed");
			return;
		}
	}
}

static void run_case(const char *name, u8 index, unsigned int raw,
		     bool write_failure, bool read_failure, bool read_fills_sample,
		     bool force_zero_read)
{
	struct aw_haptic haptic = { 0 };
	unsigned int actual_raw = force_zero_read ? 0 : raw;
	s32 expected = reference_offset(index, actual_raw);
	bool expected_warning = expected < -15 || expected > 15;
	bool expected_index_error = index >= 8;
	char offset_log[64];

	memset(events, 0, sizeof(events));
	memset(logs, 0, sizeof(logs));
	event_count = 0;
	log_count = 0;
	haptic.bytes[0x495] = index;
	haptic.sample[0] = (u8)((raw >> 8) & 3U);
	haptic.sample[1] = (u8)(raw & 0xffU);
	haptic.write_status = write_failure ? -5 : 0;
	haptic.read_status = read_failure ? -5 : 0;
	haptic.read_fills_sample = read_fills_sample;

	aw8693x_offset_cali(&haptic);
	check_bus_sequence(name, index);
	snprintf(offset_log, sizeof(offset_log), "os_code = %d", expected);
	expect(log_count_containing("os_code =") == 1, name,
	       "offset must be logged exactly once");
	expect(log_contains(offset_log), name, "logged offset differs from reference");
	expect(log_count_containing("d2s_gain is error") == expected_index_error,
	       name, "invalid-index log count changed");
	expect(log_count_containing("offset calibration out of range") == expected_warning,
	       name, "range warning predicate changed");
	if (read_failure)
		expect(force_zero_read, name, "read-failure case must use zero-initialized sample");
	if (write_failure || read_failure)
		expect(event_count == 9, name, "helper error must not short-circuit later bus operations");
}

int main(void)
{
	run_case("index0_offset_minus16", 0, 498, false, false, true, false);
	run_case("index0_offset_minus15", 0, 499, false, false, true, false);
	run_case("index0_offset_plus15", 0, 525, false, false, true, false);
	run_case("index0_offset_plus16", 0, 526, false, false, true, false);
	run_case("index7_last_table_entry", 7, 512, false, false, true, false);
	run_case("index8_zero_divisor", 8, 512, false, false, true, false);
	run_case("index255_zero_divisor", 255, 0, false, false, true, false);
	run_case("ignored_io_failures_zero_sample", 0, 512, true, true, false, true);

	if (failures) {
		fprintf(stderr, "FAILED %d assertion(s)\n", failures);
		return 1;
	}
	puts("PASS 8 cases; I2C order, delays, logs, boundary offsets, invalid indices, and ignored helper errors match the reference model.");
	return 0;
}
