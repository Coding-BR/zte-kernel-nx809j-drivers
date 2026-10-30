#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>

typedef uintptr_t _QWORD;
struct syna_tcm { void *tcm_dev; };
static int config_result;
static unsigned int config_calls, log_calls;
static void *seen_device;
static unsigned int seen_id, seen_value, seen_delay;

int printk(const char *format, ...)
{
	va_list args;
	va_start(args, format);
	(void)va_arg(args, const char *);
	(void)va_arg(args, unsigned int);
	va_end(args);
	log_calls++;
	return 0;
}

int syna_tcm_set_dynamic_config(_QWORD device, unsigned int id,
				unsigned int value, unsigned int delay)
{
	config_calls++;
	seen_device = (void *)device; seen_id = id; seen_value = value; seen_delay = delay;
	return config_result;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_dev_set_charger_mode.c"

static void check(int condition, const char *name, unsigned int *failures)
{ printf("%s %s\n", condition ? "PASS" : "FAIL", name); if (!condition) (*failures)++; }

int main(void)
{
	struct syna_tcm tcm = { .tcm_dev = (void *)(uintptr_t)0x1234 };
	unsigned int failures = 0;

	config_calls = log_calls = 0;
	check(syna_dev_set_charger_mode(NULL, 5, 8) == -22, "null_returns_einval", &failures);
	check(config_calls == 0 && log_calls == 1, "null_logs_before_validation", &failures);
	config_result = 0; config_calls = log_calls = 0;
	check(syna_dev_set_charger_mode(&tcm, 5, 8) == 0, "success_preserved", &failures);
	check(config_calls == 1 && seen_device == tcm.tcm_dev && seen_id == 7 && seen_value == 5 && seen_delay == 8, "dynamic_config_arguments", &failures);
	check(log_calls == 1, "success_logs", &failures);
	config_result = -55; config_calls = 0;
	check(syna_dev_set_charger_mode(&tcm, 2, 3) == -55, "negative_error_preserved", &failures);
	check(config_calls == 1, "negative_still_dispatches", &failures);
	printf("SUMMARY tests=7 failures=%u\n", failures);
	return failures ? 1 : 0;
}
