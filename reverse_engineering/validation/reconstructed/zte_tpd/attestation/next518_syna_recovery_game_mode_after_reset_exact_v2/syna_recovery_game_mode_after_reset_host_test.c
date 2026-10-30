#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned char _BYTE;
typedef uint32_t _DWORD;
typedef unsigned long long _QWORD;
typedef unsigned char u8;
typedef unsigned short u16;
struct tcm_dev { unsigned char reserved[0x20c]; uint32_t delay_value; };
struct mode_context { unsigned char reserved[0xb8]; uint32_t ready; uint8_t flags; };
struct syna_tcm {
	struct tcm_dev *tcm_dev;
	unsigned char reserved_to_mode[0x268];
	struct mode_context *mode;
	unsigned char reserved_to_game[0x364];
	int game_mode;
	unsigned char reserved_to_levels[0x18];
	int report_rate;
	int sensibility;
	int follow_hand;
	int stability;
};

static struct tcm_dev expected_tcm;
static unsigned int dynamic_calls, report_calls, sensibility_calls;
static unsigned int follow_calls, stability_calls, printk_calls;
static unsigned int dynamic_id, dynamic_value, dynamic_delay;
static unsigned int report_value, report_delay;
static unsigned int sensibility_value, sensibility_delay;
static unsigned int follow_value, follow_delay;
static unsigned int stability_value, stability_delay;
static unsigned int printk_values[8], printk_arg_counts[8];
static unsigned int failures;
static int dynamic_return, report_return, sensibility_return;
static int follow_return, stability_return;

static int syna_tcm_set_dynamic_config(_QWORD tcm, u8 id, u16 value,
					       unsigned int delay_ms)
{
	if ((struct tcm_dev *)(uintptr_t)tcm != &expected_tcm)
		failures++;
	dynamic_calls++;
	dynamic_id = id;
	dynamic_value = value;
	dynamic_delay = delay_ms;
	return dynamic_return;
}
static int syna_dev_set_tp_report_rate(struct syna_tcm *tcm, int value,
					       unsigned int delay_ms)
{
	if (!tcm) failures++;
	report_calls++; report_value = value; report_delay = delay_ms;
	return report_return;
}
static int syna_dev_set_sensibility_level(struct syna_tcm *tcm, int value,
					       unsigned int delay_ms)
{
	if (!tcm) failures++;
	sensibility_calls++; sensibility_value = value; sensibility_delay = delay_ms;
	return sensibility_return;
}
static int syna_dev_set_follow_hand_level(struct syna_tcm *tcm, int value,
					       unsigned int delay_ms)
{
	if (!tcm) failures++;
	follow_calls++; follow_value = value; follow_delay = delay_ms;
	return follow_return;
}
static int syna_dev_set_stability_level(struct syna_tcm *tcm, int value,
					       unsigned int delay_ms)
{
	if (!tcm) failures++;
	stability_calls++; stability_value = value; stability_delay = delay_ms;
	return stability_return;
}
static int printk(const char *format, ...)
{
	va_list args;
	const char *name;
	unsigned int value = 0;
	unsigned int count = 0;
	(void)format;
	va_start(args, format);
	name = va_arg(args, const char *);
	count++;
	if (strcmp(name, "syna_recovery_game_mode_after_reset") != 0 &&
	    strcmp(name, "syna_dev_set_play_game") != 0)
		failures++;
	if (strcmp(name, "syna_dev_set_play_game") == 0) {
		value = va_arg(args, unsigned int);
		count++;
	}
	if (printk_calls >= 8)
		failures++;
	printk_values[printk_calls] = value;
	printk_arg_counts[printk_calls] = count;
	printk_calls++;
	va_end(args);
	return 0;
}

static char unk_35F27[] = "play";
static char unk_34708[] = "error";
static char unk_37D46[] = "rate_error";
static char unk_3A258[] = "rate_done";
static char unk_3BDE4[] = "game_done";

#include "../../../reconstructed/zte_tpd/syna_recovery_game_mode_after_reset.c"

static void reset_trace(void)
{
	dynamic_calls = report_calls = sensibility_calls = follow_calls = stability_calls = 0;
	printk_calls = 0;
	dynamic_id = dynamic_value = dynamic_delay = 0;
	report_value = report_delay = sensibility_value = sensibility_delay = 0;
	follow_value = follow_delay = stability_value = stability_delay = 0;
	memset(printk_values, 0, sizeof(printk_values));
	memset(printk_arg_counts, 0, sizeof(printk_arg_counts));
	dynamic_return = report_return = sensibility_return = 0;
	follow_return = stability_return = 0;
}
static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}
static void setup(struct syna_tcm *tcm, struct mode_context *mode,
			  int game_mode, unsigned int delay)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(mode, 0, sizeof(*mode));
	tcm->tcm_dev = &expected_tcm;
	tcm->mode = mode;
	tcm->game_mode = game_mode;
	tcm->report_rate = 1;
	tcm->sensibility = 2;
	tcm->follow_hand = 3;
	tcm->stability = 4;
	expected_tcm.delay_value = delay;
}
static void test_null(void)
{
	reset_trace();
	expect_int("null return", syna_recovery_game_mode_after_reset(NULL), -22);
	expect_int("null calls", dynamic_calls + report_calls + sensibility_calls +
		   follow_calls + stability_calls + printk_calls, 0);
}
static void test_normal_mode(void)
{
	struct syna_tcm tcm; struct mode_context mode;
	reset_trace(); setup(&tcm, &mode, 0, 77);
	mode.ready = 1; mode.flags = 1;
	expect_int("normal return", syna_recovery_game_mode_after_reset(&tcm), 0);
	expect_int("normal report calls", report_calls, 1);
	expect_int("normal delay", report_delay, 0);
	expect_int("normal value", report_value, 1);
	expect_int("normal logs", printk_calls, 1);
}
static void test_fallback_delay(void)
{
	struct syna_tcm tcm; struct mode_context mode;
	reset_trace(); setup(&tcm, &mode, 0, 77);
	tcm.mode = (struct mode_context *)(intptr_t)-168;
	expect_int("fallback return", syna_recovery_game_mode_after_reset(&tcm), 0);
	expect_int("fallback delay", report_delay, 77);
	expect_int("fallback calls", report_calls, 1);
}
static void test_game_mode(void)
{
	struct syna_tcm tcm; struct mode_context mode;
	reset_trace(); setup(&tcm, &mode, 1, 77);
	mode.ready = 1; mode.flags = 1;
	expect_int("game return", syna_recovery_game_mode_after_reset(&tcm), 0);
	expect_int("game dynamic calls", dynamic_calls, 1);
	expect_int("game dynamic id", dynamic_id, 213);
	expect_int("game dynamic value", dynamic_value, 3);
	expect_int("game dynamic delay", dynamic_delay, 0);
	expect_int("game report", report_calls, 1);
	expect_int("game sensibility", sensibility_calls, 1);
	expect_int("game follow", follow_calls, 1);
	expect_int("game stability", stability_calls, 1);
	expect_int("game logs", printk_calls, 2);
}
static void test_all_failures_continue(void)
{
	struct syna_tcm tcm; struct mode_context mode;
	reset_trace(); setup(&tcm, &mode, 1, 77);
	dynamic_return = report_return = sensibility_return = follow_return = stability_return = -5;
	expect_int("error return", syna_recovery_game_mode_after_reset(&tcm), 0);
	expect_int("error dynamic", dynamic_calls, 1);
	expect_int("error report", report_calls, 1);
	expect_int("error sensibility", sensibility_calls, 1);
	expect_int("error follow", follow_calls, 1);
	expect_int("error stability", stability_calls, 1);
	expect_int("error logs", printk_calls, 7);
}
int main(void)
{
	test_null(); test_normal_mode(); test_fallback_delay(); test_game_mode();
	test_all_failures_continue();
	if (failures) return 1;
	puts("PASS syna_recovery_game_mode_after_reset host tests (5 scenarios)");
	return 0;
}
