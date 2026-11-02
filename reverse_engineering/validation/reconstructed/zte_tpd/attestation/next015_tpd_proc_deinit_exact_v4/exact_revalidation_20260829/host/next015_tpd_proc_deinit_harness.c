#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void *tpd_proc_dir;
const char *unk_3CE70 = "tpd_proc_deinit";

static unsigned int printk_calls;
static unsigned int removed_count;
static const char *removed_names[32];
static void *removed_parents[32];

static int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static void remove_proc_entry(const char *name, void *parent)
{
	if (removed_count < 32) {
		removed_names[removed_count] = name;
		removed_parents[removed_count] = parent;
	}
	removed_count++;
}

#include "tpd_proc_deinit.c"

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #condition); \
		return 1; \
	} \
} while (0)

static const char *expected_names[] = {
	"ts_information", "wake_gesture", "smart_cover", "glove_mode",
	"FW_upgrade", "suspend", "headset_state", "rotation_limit_level",
	"mRotation", "single_tap", "single_aod", "get_noise",
	"edge_report_limit", "one_key", "play_game", "tp_report_rate",
	"follow_hand_level", "sensibility", "game_partition", "pen_only",
	"finger_lock_flag", "tp_self_test", "tp_palm_mode", "fold_state",
	"fake_sleep", "screen_off_awake", "BBAT_test", "frame_data",
	"ghost_debug", "touchscreen"
};

static void reset_fixture(void)
{
	printk_calls = 0;
	removed_count = 0;
	memset(removed_names, 0, sizeof(removed_names));
	memset(removed_parents, 0, sizeof(removed_parents));
	tpd_proc_dir = NULL;
}

static int test_null_directory_logs_and_returns(void)
{
	reset_fixture();
	tpd_proc_deinit();
	CHECK(printk_calls == 1);
	CHECK(removed_count == 0);
	return 0;
}

static int test_all_entries_are_removed_in_order(void)
{
	unsigned int index;
	void *parent = (void *)(uintptr_t)0x1234;

	reset_fixture();
	tpd_proc_dir = parent;
	tpd_proc_deinit();
	CHECK(printk_calls == 0);
	CHECK(removed_count == 30);
	for (index = 0; index < 30; index++) {
		CHECK(strcmp(removed_names[index], expected_names[index]) == 0);
		if (index < 29)
			CHECK(removed_parents[index] == parent);
		else
			CHECK(removed_parents[index] == NULL);
	}
	return 0;
}

static int test_deinit_is_repeatable_without_directory_mutation(void)
{
	void *parent = (void *)(uintptr_t)0x5678;

	reset_fixture();
	tpd_proc_dir = parent;
	tpd_proc_deinit();
	CHECK(removed_count == 30);
	removed_count = 0;
	tpd_proc_deinit();
	CHECK(removed_count == 30);
	CHECK(removed_parents[0] == parent);
	return 0;
}

int main(void)
{
	int failures = 0;

	if (test_null_directory_logs_and_returns() == 0)
		puts("PASS null_directory_logs_and_returns");
	else
		failures++;
	if (test_all_entries_are_removed_in_order() == 0)
		puts("PASS all_entries_are_removed_in_order");
	else
		failures++;
	if (test_deinit_is_repeatable_without_directory_mutation() == 0)
		puts("PASS deinit_is_repeatable_without_directory_mutation");
	else
		failures++;

	if (failures) {
		printf("SUMMARY %d/3 passed\n", 3 - failures);
		return 1;
	}
	puts("SUMMARY 3/3 passed");
	return 0;
}
