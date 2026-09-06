#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef _Bool bool;
struct tcm_dev {
	uint8_t reserved[0x37a];
	uint8_t predict_reading_enabled;
	uint8_t reserved_37b;
	uint32_t predict_reading_offset;
};

static unsigned int log_calls;
static const char *last_format;
static const char *last_name;
static const char *last_state;

int printk(const char *format, ...)
{
	va_list args;
	va_start(args, format);
	log_calls++;
	last_format = format;
	last_name = va_arg(args, const char *);
	last_state = strstr(format, "Predicted") ? va_arg(args, const char *) : NULL;
	va_end(args);
	return 0;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_tcm_enable_predict_reading.c"

static void check(int condition, const char *name, unsigned int *failures)
{ printf("%s %s\n", condition ? "PASS" : "FAIL", name); if (!condition) (*failures)++; }

static void reset_log(void)
{ log_calls = 0; last_format = last_name = last_state = NULL; }

int main(void)
{
	struct tcm_dev tcm;
	unsigned int failures = 0;

	reset_log();
	check(syna_tcm_enable_predict_reading(NULL, 1) == -241, "null_returns_stock_errno", &failures);
	check(log_calls == 1 && strcmp(last_name, "syna_tcm_enable_predict_reading") == 0, "null_logs_error", &failures);

	memset(&tcm, 0xa5, sizeof(tcm));
	reset_log();
	check(syna_tcm_enable_predict_reading(&tcm, 3) == 0, "enable_returns_zero", &failures);
	check(tcm.predict_reading_enabled == 1 && tcm.predict_reading_offset == 0, "enable_masks_and_clears", &failures);
	check(log_calls == 1 && strcmp(last_state, "enabled") == 0, "enable_logs_state", &failures);

	tcm.predict_reading_offset = 99;
	reset_log();
	check(syna_tcm_enable_predict_reading(&tcm, 0) == 0, "disable_returns_zero", &failures);
	check(tcm.predict_reading_enabled == 0 && tcm.predict_reading_offset == 0, "disable_clears", &failures);
	check(log_calls == 1 && strcmp(last_state, "disabled") == 0, "disable_logs_state", &failures);
	printf("SUMMARY tests=8 failures=%u\n", failures);
	return failures ? 1 : 0;
}
