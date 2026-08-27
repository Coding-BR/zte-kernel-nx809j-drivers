#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

#ifndef __always_inline
#define __always_inline inline __attribute__((always_inline))
#endif
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define KOBJ_CHANGE 2

struct kobject { int unused; };
struct device { struct kobject kobj; };
struct platform_device { struct device dev; };
struct ufp_tp_ops_struct { struct platform_device *pdev; };

unsigned long tpd_cdev;
struct ufp_tp_ops_struct ufp_tp_ops;
int current_lcd_state;

static unsigned int uevent_calls;
static char last_env0[64];
static char last_env1[64];

#define pr_err(...) ((void)0)
#define pr_debug(...) ((void)0)

static int kobject_uevent_env(struct kobject *kobject, int action,
				      char **envp)
{
	(void)kobject;
	if (action != KOBJ_CHANGE)
		return -1;
	uevent_calls++;
	(void)snprintf(last_env0, sizeof(last_env0), "%s", envp[0]);
	(void)snprintf(last_env1, sizeof(last_env1), "%s", envp[1]);
	return 0;
}

#include "../../../reconstructed/zte_tpd/uf_touch_report.c"

static u8 cdev_storage[0x40];
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
	memset(cdev_storage, 0, sizeof(cdev_storage));
	*(u16 *)(cdev_storage + 0x1e) = 100;
	*(u16 *)(cdev_storage + 0x20) = 200;
	*(u16 *)(cdev_storage + 0x22) = 20;
	tpd_cdev = (unsigned long)(uintptr_t)cdev_storage;
	ufp_tp_ops.pdev = &pdev;
	current_lcd_state = 0;
	uevent_calls = 0;
	last_env0[0] = '\0';
	last_env1[0] = '\0';
	memset(fp_finger, 0, sizeof(fp_finger));
	area_meet_down = false;
}

static void test_down_duplicate_up(void)
{
	reset_fixture();
	uf_touch_report(1, 100, 200, 2);
	REQUIRE(uevent_calls == 1);
	REQUIRE(strcmp(last_env0, "areameet_down=true") == 0);
	REQUIRE(strcmp(last_env1, "TP_POWER_STATUS=2") == 0);
	uf_touch_report(1, 100, 200, 2);
	REQUIRE(uevent_calls == 1);
	uf_touch_report(0, -1, -1, 2);
	REQUIRE(uevent_calls == 2);
	REQUIRE(strcmp(last_env0, "areameet_up=true") == 0);
}

static void test_geometry_index_and_lcd_rejection(void)
{
	reset_fixture();
	uf_touch_report(1, 80, 200, 3);
	REQUIRE(uevent_calls == 0);
	uf_touch_report(1, 100, 200, 10);
	REQUIRE(uevent_calls == 0);
	uf_touch_report(0, -1, -1, -1);
	REQUIRE(uevent_calls == 0);
	current_lcd_state = 3;
	uf_touch_report(1, 100, 200, 1);
	REQUIRE(uevent_calls == 0);
	REQUIRE(fp_finger[1] == 1);
}

static void test_missing_device_and_cdev(void)
{
	reset_fixture();
	ufp_tp_ops.pdev = NULL;
	uf_touch_report(1, 100, 200, 0);
	REQUIRE(uevent_calls == 0);
	REQUIRE(fp_finger[0] == 1);
	REQUIRE(area_meet_down);
	reset_fixture();
	tpd_cdev = 0;
	uf_touch_report(1, 100, 200, 0);
	REQUIRE(uevent_calls == 0);
	REQUIRE(fp_finger[0] == 0);
}

int main(void)
{
	test_down_duplicate_up();
	test_geometry_index_and_lcd_rejection();
	test_missing_device_and_cdev();
	if (failures != 0)
		return 1;
	puts("PASS uf_touch_report host tests (3 cases)");
	return 0;
}
