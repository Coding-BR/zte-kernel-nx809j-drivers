#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifndef HAPTIC_PLAY_MODE_SOURCE
#define HAPTIC_PLAY_MODE_SOURCE \
	"/drivers/reconstructed/haptic_86938/haptic_86938_fn_139_aw8693x_play_mode.c"
#endif

#include HAPTIC_PLAY_MODE_SOURCE

#define MAX_I2C_CALLS 4
#define MAX_LOG_CALLS 3
#define MAX_EVENTS 8
#define GUARD_BYTES 16

struct expected_i2c_call {
	u8 reg;
	u32 mask;
	u8 value;
};

struct actual_i2c_call {
	struct aw_haptic *device;
	u8 reg;
	u32 mask;
	u8 value;
};

struct guarded_device {
	u8 before[GUARD_BYTES];
	struct aw_haptic device;
	u8 after[GUARD_BYTES];
};

struct expected_mode {
	const struct expected_i2c_call *i2c;
	size_t i2c_count;
	const char *const *log_fragments;
	size_t log_count;
	const char *event_order;
	const char *name;
};

static const struct expected_i2c_call mode_0_i2c[] = {
	{ 0x45, ~UINT32_C(0x20), 0x20 },
	{ 0x45, ~UINT32_C(0x20), 0x00 },
};
static const struct expected_i2c_call mode_1_i2c[] = {
	{ 0x08, ~UINT32_C(0x03), 0x00 },
	{ 0x08, ~UINT32_C(0x04), 0x00 },
	{ 0x06, ~UINT32_C(0x20), 0x20 },
	{ 0x4c, ~UINT32_C(0x40), 0x00 },
};
static const struct expected_i2c_call mode_2_i2c[] = {
	{ 0x08, ~UINT32_C(0x03), 0x01 },
	{ 0x08, ~UINT32_C(0x04), 0x04 },
	{ 0x06, ~UINT32_C(0x20), 0x20 },
	{ 0x4c, ~UINT32_C(0x40), 0x00 },
};
static const struct expected_i2c_call mode_3_i2c[] = {
	{ 0x08, ~UINT32_C(0x03), 0x00 },
	{ 0x4c, ~UINT32_C(0x40), 0x00 },
};
static const struct expected_i2c_call mode_4_i2c[] = {
	{ 0x08, ~UINT32_C(0x03), 0x02 },
	{ 0x08, ~UINT32_C(0x04), 0x04 },
	{ 0x06, ~UINT32_C(0x20), 0x00 },
	{ 0x4c, ~UINT32_C(0x40), 0x40 },
};
static const struct expected_i2c_call mode_5_i2c[] = {
	{ 0x08, ~UINT32_C(0x03), 0x00 },
	{ 0x08, ~UINT32_C(0x04), 0x00 },
	{ 0x06, ~UINT32_C(0x20), 0x00 },
	{ 0x4c, ~UINT32_C(0x40), 0x40 },
};

static const char *const mode_0_logs[] = { "enter standby mode" };
static const char *const mode_1_logs[] = {
	"enter ram mode", "haptic bst mode = bst"
};
static const char *const mode_2_logs[] = {
	"enter rtp mode", "haptic bst mode = bst"
};
static const char *const mode_3_logs[] = { "enter trig mode" };
static const char *const mode_4_logs[] = {
	"enter cont mode", "haptic bst mode = bypass"
};
static const char *const mode_5_logs[] = {
	"enter ram loop mode", "haptic bst mode = bypass"
};

static const struct expected_mode expected_modes[] = {
	{ mode_0_i2c, 2, mode_0_logs, 1, "LII", "standby" },
	{ mode_1_i2c, 4, mode_1_logs, 2, "LIILII", "ram" },
	{ mode_2_i2c, 4, mode_2_logs, 2, "LIILII", "rtp" },
	{ mode_3_i2c, 2, mode_3_logs, 1, "LII", "trigger" },
	{ mode_4_i2c, 4, mode_4_logs, 2, "LIILII", "continuous" },
	{ mode_5_i2c, 4, mode_5_logs, 2, "LIILII", "ram-loop" },
};

static struct actual_i2c_call actual_i2c[MAX_I2C_CALLS];
static char actual_logs[MAX_LOG_CALLS][192];
static char actual_events[MAX_EVENTS + 1];
static size_t actual_i2c_count;
static size_t actual_log_count;
static size_t actual_event_count;
static unsigned int checks;

static int fail(unsigned int mode, const char *check, long expected,
		long actual)
{
	printf("FAIL mode=%u %s expected=%ld actual=%ld\n", mode, check,
	       expected, actual);
	return 0;
}

static int expect_int(unsigned int mode, const char *check, long expected,
		      long actual)
{
	++checks;
	if (expected != actual)
		return fail(mode, check, expected, actual);
	return 1;
}

static int expect_true(unsigned int mode, const char *check, int condition)
{
	return expect_int(mode, check, 1, condition ? 1 : 0);
}

static void reset_trace(void)
{
	memset(actual_i2c, 0, sizeof(actual_i2c));
	memset(actual_logs, 0, sizeof(actual_logs));
	memset(actual_events, 0, sizeof(actual_events));
	actual_i2c_count = 0;
	actual_log_count = 0;
	actual_event_count = 0;
}

int haptic_test_printk(const char *format, ...)
{
	va_list args;
	size_t index = actual_log_count;

	if (actual_event_count < MAX_EVENTS)
		actual_events[actual_event_count++] = 'L';
	if (index < MAX_LOG_CALLS) {
		va_start(args, format);
		vsnprintf(actual_logs[index], sizeof(actual_logs[index]), format,
			  args);
		va_end(args);
	}
	++actual_log_count;
	return -5;
}

int i2c_w_bits(struct aw_haptic *aw, u8 reg, u32 mask, u8 value)
{
	static const int results[] = { -5, 7, -121, 0 };
	size_t index = actual_i2c_count;

	if (actual_event_count < MAX_EVENTS)
		actual_events[actual_event_count++] = 'I';
	if (index < MAX_I2C_CALLS) {
		actual_i2c[index].device = aw;
		actual_i2c[index].reg = reg;
		actual_i2c[index].mask = mask;
		actual_i2c[index].value = value;
	}
	++actual_i2c_count;
	return results[index % (sizeof(results) / sizeof(results[0]))];
}

static int run_one_mode(unsigned int mode)
{
	struct guarded_device guarded;
	struct guarded_device expected_device;
	const struct expected_mode *expected = NULL;
	size_t expected_i2c_count = 0;
	size_t expected_log_count = 1;
	const char *expected_event_order = "L";
	char invalid_log[64];
	int valid_mode = mode < sizeof(expected_modes) / sizeof(expected_modes[0]);
	size_t i;

	memset(&guarded, 0xa5, sizeof(guarded));
	guarded.device.play_mode = 0xd3;
	expected_device = guarded;
	reset_trace();
	if (valid_mode) {
		expected = &expected_modes[mode];
		expected_i2c_count = expected->i2c_count;
		expected_log_count = expected->log_count;
		expected_event_order = expected->event_order;
		expected_device.device.play_mode = (u8)mode;
	}

	aw8693x_play_mode(&guarded.device, (u8)mode);

	if (!expect_true(mode, "guarded device bytes",
			 memcmp(&guarded, &expected_device, sizeof(guarded)) == 0))
		return 0;
	if (!expect_int(mode, "I2C call count", (long)expected_i2c_count,
			(long)actual_i2c_count))
		return 0;
	if (!expect_int(mode, "printk call count", (long)expected_log_count,
			(long)actual_log_count))
		return 0;
	if (!expect_int(mode, "event count", (long)strlen(expected_event_order),
			(long)actual_event_count))
		return 0;
	if (!expect_true(mode, "event order",
			 strcmp(expected_event_order, actual_events) == 0))
		return 0;

	if (valid_mode) {
		for (i = 0; i < expected_i2c_count; ++i) {
			if (!expect_true(mode, "I2C device pointer",
					 actual_i2c[i].device == &guarded.device))
				return 0;
			if (!expect_int(mode, "I2C register", expected->i2c[i].reg,
					actual_i2c[i].reg))
				return 0;
			if (!expect_int(mode, "I2C mask", expected->i2c[i].mask,
					actual_i2c[i].mask))
				return 0;
			if (!expect_int(mode, "I2C value", expected->i2c[i].value,
					actual_i2c[i].value))
				return 0;
		}
		for (i = 0; i < expected_log_count; ++i) {
			if (!expect_true(mode, "log content",
					strstr(actual_logs[i],
					       expected->log_fragments[i]) != NULL))
				return 0;
		}
	} else {
		snprintf(invalid_log, sizeof(invalid_log), "play mode %u error",
			 mode);
		if (!expect_true(mode, "invalid mode log",
				strstr(actual_logs[0], invalid_log) != NULL))
			return 0;
	}
	return 1;
}

int main(void)
{
	unsigned int mode;

	for (mode = 0; mode <= UINT8_MAX; ++mode) {
		if (!run_one_mode(mode))
			return 1;
	}
	printf("PASS aw8693x_play_mode bounded C contract: 256 inputs, %u checks\n",
	       checks);
	return 0;
}
