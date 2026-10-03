#include <stdarg.h>
#include <stdio.h>
#include <string.h>

static const char unk_31F2D[] = "null";
static const char unk_35A7D[] = "blank-clear";
static const char unk_32F7F[] = "blank-post";
static const char unk_347E1[] = "unblank-pre";
static const char unk_3C4D0[] = "unknown";

static char panel_enter_low_power;
static unsigned int printk_calls;
static unsigned int notifier_calls;
static unsigned int lcd_state_calls;
static unsigned int state_change_calls;
static int last_notifier_value;
static int last_lcd_state;
static int last_state;
static int last_event;
static const char *last_format;

static int host_printk(const char *format, ...)
{
	va_list arguments;

	printk_calls++;
	last_format = format;
	va_start(arguments, format);
	if (format == unk_3C4D0)
		last_event = va_arg(arguments, int);
	va_end(arguments);
	return 0;
}

static int ufp_notifier_cb(int value)
{
	notifier_calls++;
	last_notifier_value = value;
	return 0;
}

static void ufp_report_lcd_state(void)
{
	lcd_state_calls++;
	last_lcd_state = 1;
}

static void change_tp_state(int state)
{
	state_change_calls++;
	last_state = state;
}

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_ts_panel_notifier_callback.c"
#undef printk

static void reset_observations(void)
{
	panel_enter_low_power = 0;
	printk_calls = 0;
	notifier_calls = 0;
	lcd_state_calls = 0;
	state_change_calls = 0;
	last_notifier_value = -1;
	last_lcd_state = 0;
	last_state = -1;
	last_event = -1;
	last_format = NULL;
}

#define CHECK(condition, message) \
	do { \
		if (!(condition)) { \
			fprintf(stderr, "FAIL: %s\n", message); \
			return 1; \
		} \
	} while (0)

static int run_null_case(void)
{
	reset_observations();
	syna_ts_panel_notifier_callback(0, NULL, NULL);
	CHECK(printk_calls == 1 && last_format == unk_31F2D,
		"null notification logger contract");
	return 0;
}

static int run_blank_early_case(void)
{
	struct panel_event_notification notification = {
		.notif_type = DRM_PANEL_EVENT_BLANK,
		.early_trigger = true,
	};

	reset_observations();
	panel_enter_low_power = 1;
	syna_ts_panel_notifier_callback(0, &notification, NULL);
	CHECK(panel_enter_low_power == 0 && notifier_calls == 1 &&
		last_notifier_value == 0 && state_change_calls == 1 &&
		last_state == 3 && printk_calls == 1 &&
		last_format == unk_35A7D, "blank early transition");
	return 0;
}

static int run_unblank_post_case(void)
{
	struct panel_event_notification notification = {
		.notif_type = DRM_PANEL_EVENT_UNBLANK,
		.early_trigger = false,
	};

	reset_observations();
	panel_enter_low_power = 1;
	syna_ts_panel_notifier_callback(0, &notification, NULL);
	CHECK(panel_enter_low_power == 0 && notifier_calls == 1 &&
		last_notifier_value == 0 && state_change_calls == 1 &&
		last_state == 2, "unblank post transition");
	return 0;
}

static int run_low_power_case(void)
{
	struct panel_event_notification notification = {
		.notif_type = DRM_PANEL_EVENT_BLANK_LP,
	};

	reset_observations();
	syna_ts_panel_notifier_callback(0, &notification, NULL);
	CHECK(panel_enter_low_power == 1 && notifier_calls == 1 &&
		last_notifier_value == 1 && lcd_state_calls == 1 &&
		last_lcd_state == 1, "blank low-power transition");
	return 0;
}

static int run_fps_and_unknown_cases(void)
{
	struct panel_event_notification fps = {
		.notif_type = DRM_PANEL_EVENT_FPS_CHANGE,
	};
	struct panel_event_notification unknown = {
		.notif_type = 5,
	};

	reset_observations();
	syna_ts_panel_notifier_callback(0, &fps, NULL);
	CHECK(printk_calls == 0 && notifier_calls == 0 &&
		state_change_calls == 0, "fps event is ignored");

	syna_ts_panel_notifier_callback(0, &unknown, NULL);
	CHECK(printk_calls == 1 && last_format == unk_3C4D0 &&
		last_event == 5, "unknown event logger contract");
	return 0;
}

int main(void)
{
	if (run_null_case() || run_blank_early_case() ||
		run_unblank_post_case() || run_low_power_case() ||
		run_fps_and_unknown_cases())
		return 1;

	puts("PASS syna_ts_panel_notifier_callback host tests (6 paths)");
	return 0;
}
