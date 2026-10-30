#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 int64_t
#define _QWORD const void *
#define _DWORD uint32_t
#define SP_EL0 0

struct kobject { int unused; };
struct device { struct kobject kobj; };
struct platform_device { struct device dev; };
struct ufp_tp_ops_struct { struct platform_device *pdev; };

struct ufp_tp_ops_struct ufp_tp_ops;
static uint64_t stack_canary_word;
static unsigned int printk_calls;
static unsigned int uevent_calls;
static int uevent_result;
static const char *last_printk;
static char last_env0[64];

#define _ReadStatusReg(reg) ((uintptr_t)&stack_canary_word - 1808U)
static char unk_35F05[] = "event";
static char unk_37C83[] = "missing";
static char unk_37CDC[] = "failed";

static int test_printk(const char *message)
{
	printk_calls++;
	last_printk = message;
	return 0;
}
#define printk test_printk

static int kobject_uevent_env(uintptr_t kobject, int action, const void *envp)
{
	const void *const *values = envp;
	(void)kobject;
	if (action != 2)
		return -1;
	uevent_calls++;
	(void)snprintf(last_env0, sizeof(last_env0), "%s",
		       (const char *)(uintptr_t)values[0]);
	return uevent_result;
}

#include "../../../reconstructed/zte_tpd/ufp_report_lcd_state.c"

static struct platform_device pdev;
static unsigned int failures;

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed: %s\n", #condition); \
		failures++; \
	} \
} while (0)

static void reset_fixture(void)
{
	ufp_tp_ops.pdev = &pdev;
	printk_calls = 0;
	uevent_calls = 0;
	uevent_result = 0;
	last_printk = NULL;
	last_env0[0] = '\0';
	stack_canary_word = UINT64_C(0x1122334455667788);
}

static void test_success(void)
{
	reset_fixture();
	ufp_report_lcd_state();
	REQUIRE(uevent_calls == 1);
	REQUIRE(printk_calls == 1);
	REQUIRE(strcmp(last_env0, "aod=true") == 0);
}

static void test_missing_pdev(void)
{
	reset_fixture();
	ufp_tp_ops.pdev = NULL;
	ufp_report_lcd_state();
	REQUIRE(uevent_calls == 0);
	REQUIRE(printk_calls == 1);
	REQUIRE(strcmp(last_printk, unk_37C83) == 0);
}

static void test_uevent_failure(void)
{
	reset_fixture();
	uevent_result = -1;
	ufp_report_lcd_state();
	REQUIRE(uevent_calls == 1);
	REQUIRE(printk_calls == 2);
	REQUIRE(strcmp(last_printk, unk_37CDC) == 0);
}

int main(void)
{
	test_success();
	test_missing_pdev();
	test_uevent_failure();
	if (failures != 0)
		return 1;
	puts("PASS ufp_report_lcd_state host tests (3 cases)");
	return 0;
}
