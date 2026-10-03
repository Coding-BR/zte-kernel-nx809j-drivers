#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#define TP_ZLOG_ERROR_MAX 19

struct zlog_item {
	unsigned long timer[TP_ZLOG_ERROR_MAX];
};

struct ztp_device {
	void *ztp_zlog_buffer;
	bool zlog_registered;
	unsigned long tp_reset_timer;
	struct zlog_item zlog_item;
};

static struct ztp_device device_a;
static struct ztp_device device_b;
static struct ztp_device *current_device;
static unsigned long jiffies;
static unsigned int failures;

static void expect_true(const char *name, bool condition)
{
	if (!condition) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static struct ztp_device *test_tpd_zlog_device(void)
{
	return current_device;
}

#define tpd_zlog_device test_tpd_zlog_device
#include "../../../reconstructed/zte_tpd/tpd_zlog_init.c"
#undef tpd_zlog_device

static void seed_device(struct ztp_device *device, unsigned long seed)
{
	unsigned int index;

	device->ztp_zlog_buffer = (void *)(uintptr_t)(0x1000 + seed);
	device->zlog_registered = true;
	device->tp_reset_timer = seed + 1;
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		device->zlog_item.timer[index] = seed + index + 2;
}

static void test_initializes_all_state(void)
{
	unsigned int index;

	seed_device(&device_a, 100);
	current_device = &device_a;
	jiffies = 0x12345678UL;
	tpd_zlog_init();
	expect_true("buffer cleared", device_a.ztp_zlog_buffer == NULL);
	expect_true("registration cleared", !device_a.zlog_registered);
	expect_true("reset timer initialized", device_a.tp_reset_timer == jiffies);
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		expect_true("log timer initialized", device_a.zlog_item.timer[index] == jiffies);
}

static void test_reinitialization_overwrites_stale_values(void)
{
	unsigned int index;

	seed_device(&device_a, 200);
	current_device = &device_a;
	jiffies = 0xabcdef01UL;
	tpd_zlog_init();
	jiffies = 0x55aa33ccUL;
	device_a.ztp_zlog_buffer = (void *)(uintptr_t)0xfeed0000;
	device_a.zlog_registered = true;
	device_a.tp_reset_timer = 1;
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		device_a.zlog_item.timer[index] = 2;
	tpd_zlog_init();
	expect_true("repeat buffer cleared", device_a.ztp_zlog_buffer == NULL);
	expect_true("repeat registration cleared", !device_a.zlog_registered);
	expect_true("repeat reset timer", device_a.tp_reset_timer == jiffies);
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		expect_true("repeat timer", device_a.zlog_item.timer[index] == jiffies);
}

static void test_current_device_selection(void)
{
	seed_device(&device_a, 300);
	seed_device(&device_b, 400);
	current_device = &device_b;
	jiffies = 77;
	tpd_zlog_init();
	expect_true("selected buffer cleared", device_b.ztp_zlog_buffer == NULL);
	expect_true("selected registration cleared", !device_b.zlog_registered);
	expect_true("selected reset timer", device_b.tp_reset_timer == jiffies);
	expect_true("other device preserved", device_a.ztp_zlog_buffer != NULL &&
		device_a.zlog_registered && device_a.tp_reset_timer != jiffies);
}

static void test_zero_jiffies_is_valid_value(void)
{
	unsigned int index;

	seed_device(&device_a, 500);
	current_device = &device_a;
	jiffies = 0;
	tpd_zlog_init();
	expect_true("zero reset timer", device_a.tp_reset_timer == 0);
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		expect_true("zero timer", device_a.zlog_item.timer[index] == 0);
}

int main(void)
{
	test_initializes_all_state();
	test_reinitialization_overwrites_stale_values();
	test_current_device_selection();
	test_zero_jiffies_is_valid_value();
	if (failures != 0)
		return 1;
	puts("PASS tpd_zlog_init host tests (4 cases)");
	return 0;
}
