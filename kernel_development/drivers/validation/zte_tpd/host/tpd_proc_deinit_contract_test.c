#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

struct proc_dir_entry {
	unsigned int marker;
};

static struct proc_dir_entry expected_dir;
static struct proc_dir_entry *tpd_proc_dir;
static const char unk_3CE70[] = "tpd_proc_deinit: %s";
static unsigned int remove_calls;
static unsigned int printk_calls;
static unsigned int failures;
static const char *removed_names[32];
static struct proc_dir_entry *removed_parents[32];

static void test_remove_proc_entry(const char *name,
					   struct proc_dir_entry *parent)
{
	if (remove_calls < 32) {
		removed_names[remove_calls] = name;
		removed_parents[remove_calls] = parent;
	}
	remove_calls++;
}

static int test_printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

#define remove_proc_entry test_remove_proc_entry
#define printk test_printk
#include "../../../reconstructed/zte_tpd/tpd_proc_deinit.c"
#undef remove_proc_entry
#undef printk

static void reset_trace(void)
{
	remove_calls = 0;
	printk_calls = 0;
	memset(removed_names, 0, sizeof(removed_names));
	memset(removed_parents, 0, sizeof(removed_parents));
}

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void test_null_directory(void)
{
	reset_trace();
	tpd_proc_dir = NULL;
	tpd_proc_deinit();
	expect_int("null remove calls", remove_calls, 0);
	expect_int("null printk calls", printk_calls, 1);
}

static void test_full_cleanup_order(void)
{
	static const char *const expected_names[] = {
		"ts_information", "wake_gesture", "smart_cover", "glove_mode",
		"FW_upgrade", "suspend", "headset_state", "rotation_limit_level",
		"mRotation", "single_tap", "single_aod", "get_noise",
		"edge_report_limit", "one_key", "play_game", "tp_report_rate",
		"follow_hand_level", "sensibility", "game_partition", "pen_only",
		"finger_lock_flag", "tp_self_test", "tp_palm_mode", "fold_state",
		"fake_sleep", "screen_off_awake", "BBAT_test", "frame_data",
		"ghost_debug", "touchscreen",
	};
	const unsigned int expected_count = sizeof(expected_names) /
						 sizeof(expected_names[0]);

	reset_trace();
	tpd_proc_dir = &expected_dir;
	tpd_proc_deinit();
	expect_int("full remove calls", remove_calls, expected_count);
	expect_int("full printk calls", printk_calls, 0);
	for (unsigned int i = 0; i < expected_count && i < 32; ++i) {
		if (strcmp(removed_names[i], expected_names[i]) != 0) {
			fprintf(stderr, "name[%u]: got %s expected %s\n", i,
				removed_names[i], expected_names[i]);
			failures++;
		}
		if (i + 1 == expected_count)
			expect_true("root touchscreen parent", removed_parents[i] == NULL);
		else
			expect_true("directory parent", removed_parents[i] == &expected_dir);
	}
}

static void test_cleanup_is_repeatable(void)
{
	reset_trace();
	tpd_proc_dir = &expected_dir;
	tpd_proc_deinit();
	expect_int("repeat remove calls", remove_calls, 30);
	expect_int("repeat printk calls", printk_calls, 0);
}

int main(void)
{
	test_null_directory();
	test_full_cleanup_order();
	test_cleanup_is_repeatable();
	if (failures != 0)
		return 1;
	puts("PASS tpd_proc_deinit host tests (3 cases, 60 removals)");
	return 0;
}
