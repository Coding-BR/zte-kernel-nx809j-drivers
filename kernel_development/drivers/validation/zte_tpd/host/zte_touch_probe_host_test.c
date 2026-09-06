#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ENOMEM 12
#define _BYTE char
#define _WORD short
#define _DWORD int
#define _QWORD long long
#define __int8 char
#define __int16 short
#define __int64 long long
#define __uninitialized __attribute__((uninitialized))

struct lock_class_key {
	int value;
};

struct platform_device {
	unsigned char bytes[0x400];
};

struct fake_node {
	int tp_algo;
	int long_press;
	int ghost_config;
	int ufp_enable;
	int values_present;
};

struct delayed_call {
	int cpu;
	long long workqueue;
	long long work;
	long long delay;
};

long long tpd_cdev;
long long tpd_proc_dir;
long long jiffies;
char fwimage_attr;
char proc_ops_tp_module_Info;
char proc_ops_wake_gesture;
char proc_ops_smart_cover;
char proc_ops_glove;
char proc_ops_tpfwupgrade;
char proc_ops_suspend;
char proc_ops_headset_state;
char proc_ops_rotation_limit_level;
char proc_ops_mrotation;
char proc_ops_single_tap;
char proc_ops_single_aod;
char proc_ops_single_game;
char proc_ops_get_noise;
char proc_ops_edge_report_limit;
char proc_ops_onekey;
char proc_ops_playgame;
char proc_ops_tp_report_rate;
char proc_ops_follow_hand_level;
char proc_ops_stability_level;
char proc_ops_sensibility_level;
char proc_ops_game_partition;
char proc_ops_pen_only;
char proc_ops_finger_lock_flag;
char proc_ops_tp_self_test;
char proc_ops_palm_mode;
char proc_ops_fold_state;
char proc_ops_fake_sleep;
char proc_ops_screen_off_awake;
char proc_ops_zlog_debug;
char proc_ops_ghost_debug;
char proc_ops_BBAT_test;
char proc_ops_tp_test;
char proc_ops_frame_data;
struct lock_class_key init_completion___key;

static unsigned char fixture_cdev[0x1008];
static struct platform_device fixture_pdev;
static struct fake_node fixture_node;
static unsigned char fixture_kobject;
static int devm_failure;
static int workqueue_result;
static int sysfs_result;
static unsigned int devm_calls;
static unsigned int pdev_register_calls;
static unsigned int mutex_calls;
static unsigned int proc_mkdir_calls;
static unsigned int proc_create_calls;
static unsigned int kobject_create_calls;
static unsigned int kobject_put_calls;
static unsigned int clean_calls;
static unsigned int ghost_reset_calls;
static unsigned int ufp_calls;
static unsigned int workqueue_init_calls;
static unsigned int swait_calls;
static unsigned int log_calls;
static struct delayed_call delayed_calls[2];
static unsigned int delayed_call_count;
static long long mutex_addresses[3];
static struct lock_class_key *mutex_keys[3];

static void store_ptr(void *base, size_t offset, const void *value)
{
	memcpy((unsigned char *)base + offset, &value, sizeof(value));
}

static long long load_s64(const void *base, size_t offset)
{
	long long value;

	memcpy(&value, (const unsigned char *)base + offset, sizeof(value));
	return value;
}

static int load_s32(const void *base, size_t offset)
{
	int value;

	memcpy(&value, (const unsigned char *)base + offset, sizeof(value));
	return value;
}

static int printk(const char *format, ...)
{
	(void)format;
	log_calls++;
	return 0;
}

static long long devm_kmalloc(long long device, int size, int flags)
{
	(void)device;
	if (size != 4104 || flags != 3520)
		return 0;
	devm_calls++;
	return devm_failure ? 0 : (long long)(uintptr_t)fixture_cdev;
}

static int zte_touch_pdev_register(void)
{
	pdev_register_calls++;
	store_ptr(fixture_cdev, 0xdd0, &fixture_pdev);
	return 0;
}

static long long of_find_property(long long node, const char *name, long long unused)
{
	struct fake_node *properties = (struct fake_node *)(uintptr_t)node;

	(void)unused;
	if (strcmp(name, "zte,tp_algo") == 0)
		return properties->tp_algo;
	if (strcmp(name, "zte,tp_long_press") == 0)
		return properties->long_press;
	if (strcmp(name, "zte,ghost_check_config") == 0)
		return properties->ghost_config;
	if (strcmp(name, "zte,ufp_enable") == 0)
		return properties->ufp_enable;
	return 0;
}

static int property_value(const char *name)
{
	if (strcmp(name, "zte,ghost_check_single_time") == 0)
		return 41;
	if (strcmp(name, "zte,ghost_check_multi_time") == 0)
		return 42;
	if (strcmp(name, "zte,ghost_check_single_count") == 0)
		return 43;
	if (strcmp(name, "zte,ghost_check_multi_count") == 0)
		return 44;
	if (strcmp(name, "zte,ghost_check_start_time") == 0)
		return 45;
	if (strcmp(name, "zte,ghost_check_ignore_id") == 0)
		return 46;
	if (strcmp(name, "zte,ghost_check_ignore_edge_area") == 0)
		return 47;
	if (strcmp(name, "zte,ghost_check_ignore_corner_x") == 0)
		return 48;
	if (strcmp(name, "zte,ghost_check_ignore_corner_y") == 0)
		return 49;
	return 0;
}

static int of_property_read_variable_u32_array(long long node, const char *name,
		int *value, int min, int max)
{
	struct fake_node *properties = (struct fake_node *)(uintptr_t)node;

	(void)min;
	(void)max;
	if (!properties->values_present)
		return -1;
	*value = property_value(name);
	return 0;
}

static void _mutex_init(long long address, const char *name,
		struct lock_class_key *key)
{
	(void)name;
	if (mutex_calls < 3) {
		mutex_addresses[mutex_calls] = address;
		mutex_keys[mutex_calls] = key;
	}
	mutex_calls++;
}

static long long proc_mkdir(const char *name, long long parent)
{
	(void)name;
	(void)parent;
	proc_mkdir_calls++;
	return 1;
}

static long long proc_create(const char *name, int mode, long long parent, void *ops)
{
	(void)name;
	(void)mode;
	(void)parent;
	(void)ops;
	proc_create_calls++;
	return 1;
}

static long long kobject_create_and_add(const char *name, long long parent)
{
	(void)name;
	(void)parent;
	kobject_create_calls++;
	return (long long)(uintptr_t)&fixture_kobject;
}

static unsigned int sysfs_create_bin_file(long long kobject, void *attribute)
{
	(void)kobject;
	(void)attribute;
	return (unsigned int)sysfs_result;
}

static void kobject_put(long long kobject)
{
	(void)kobject;
	kobject_put_calls++;
}

static void tpd_clean_all_event(void)
{
	clean_calls++;
}

static void ghost_check_reset(void)
{
	ghost_reset_calls++;
}

static long long ufp_mac_init(void)
{
	ufp_calls++;
	return 0;
}

static int tpd_workqueue_init(void)
{
	workqueue_init_calls++;
	return workqueue_result;
}

static int queue_delayed_work_on(int cpu, long long workqueue, long long work,
		long long delay)
{
	if (delayed_call_count < 2)
		delayed_calls[delayed_call_count] = (struct delayed_call){cpu, workqueue, work, delay};
	delayed_call_count++;
	return 1;
}

static void _init_swait_queue_head(long long queue, const char *name,
		struct lock_class_key *key)
{
	(void)queue;
	(void)name;
	(void)key;
	swait_calls++;
}

#include "../../../reconstructed/zte_tpd/zte_touch_probe.c"

static int failures;

static void expect_int(const char *name, int actual, int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		failures++;
	}
}

static void expect_s64(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}

static void reset_fixture(void)
{
	memset(fixture_cdev, 0, sizeof(fixture_cdev));
	memset(&fixture_pdev, 0, sizeof(fixture_pdev));
	memset(&fixture_node, 0, sizeof(fixture_node));
	memset(delayed_calls, 0, sizeof(delayed_calls));
	memset(mutex_addresses, 0, sizeof(mutex_addresses));
	memset(mutex_keys, 0, sizeof(mutex_keys));
	devm_failure = 0;
	workqueue_result = 0;
	sysfs_result = 0;
	devm_calls = 0;
	pdev_register_calls = 0;
	mutex_calls = 0;
	proc_mkdir_calls = 0;
	proc_create_calls = 0;
	kobject_create_calls = 0;
	kobject_put_calls = 0;
	clean_calls = 0;
	ghost_reset_calls = 0;
	ufp_calls = 0;
	workqueue_init_calls = 0;
	swait_calls = 0;
	log_calls = 0;
	delayed_call_count = 0;
	jiffies = 0x123456789abcdefLL;
	store_ptr(&fixture_pdev, 0x2f8, &fixture_node);
	store_ptr(fixture_cdev, 0x4b0, (const void *)(uintptr_t)0x1111);
	store_ptr(fixture_cdev, 0x4b8, (const void *)(uintptr_t)0x2222);
}

static void test_allocation_failure(void)
{
	reset_fixture();
	devm_failure = 1;
	expect_int("allocation return", zte_touch_probe(&fixture_pdev), -ENOMEM);
	expect_int("allocation calls", (int)devm_calls, 1);
	expect_int("allocation pdev register", (int)pdev_register_calls, 0);
	expect_int("allocation workqueue", (int)delayed_call_count, 0);
}

static void test_default_success(void)
{
	reset_fixture();
	expect_int("default return", zte_touch_probe(&fixture_pdev), 0);
	expect_int("default devm calls", (int)devm_calls, 1);
	expect_int("default pdev register", (int)pdev_register_calls, 1);
	expect_s64("default pdev cdev slot", load_s64(&fixture_pdev, 0xa8),
		(long long)(uintptr_t)fixture_cdev);
	expect_s64("default cdev pdev slot", load_s64(fixture_cdev, 0xdc8),
		(long long)(uintptr_t)&fixture_pdev);
	expect_int("default ghost time", fixture_cdev[1169], 25);
	expect_int("default ghost multi", fixture_cdev[1170], 20);
	expect_int("default ghost count", fixture_cdev[1171], 5);
	expect_int("default ghost multi count", fixture_cdev[1172], 8);
	expect_int("default ghost start", fixture_cdev[1173], 35);
	expect_int("default ghost ignore id", load_s32(fixture_cdev, 1176), -1);
	expect_int("default ghost edge", load_s32(fixture_cdev, 1180), 3201);
	expect_int("default ghost corner x", load_s32(fixture_cdev, 1184), 801);
	expect_int("default ghost corner y", load_s32(fixture_cdev, 1188), 801);
	expect_int("default mutex count", (int)mutex_calls, 3);
	expect_s64("default cmd mutex", mutex_addresses[0],
		(long long)(uintptr_t)(fixture_cdev + 0xc60));
	expect_s64("default report mutex", mutex_addresses[1],
		(long long)(uintptr_t)(fixture_cdev + 0xc90));
	expect_s64("default resume mutex", mutex_addresses[2],
		(long long)(uintptr_t)(fixture_cdev + 0xcc0));
	expect_int("default proc mkdir", (int)proc_mkdir_calls, 1);
	expect_int("default proc entries", (int)proc_create_calls, 33);
	expect_int("default kobject create", (int)kobject_create_calls, 1);
	expect_int("default cleanup", (int)clean_calls, 1);
	expect_int("default ghost reset", (int)ghost_reset_calls, 1);
	expect_int("default ufp init", (int)ufp_calls, 1);
	expect_int("default workqueue init", (int)workqueue_init_calls, 1);
	expect_int("default delayed works", (int)delayed_call_count, 2);
	expect_int("default delayed work 0 cpu", delayed_calls[0].cpu, 32);
	expect_s64("default delayed work 0 queue", delayed_calls[0].workqueue, 0x1111);
	expect_s64("default delayed work 0 item", delayed_calls[0].work,
		(long long)(uintptr_t)(fixture_cdev + 0x8d0));
	expect_s64("default delayed work 0 delay", delayed_calls[0].delay, 375);
	expect_int("default delayed work 1 cpu", delayed_calls[1].cpu, 32);
	expect_s64("default delayed work 1 queue", delayed_calls[1].workqueue, 0x2222);
	expect_s64("default delayed work 1 item", delayed_calls[1].work,
		(long long)(uintptr_t)(fixture_cdev + 0xa50));
	expect_s64("default delayed work 1 delay", delayed_calls[1].delay, 1250);
	expect_int("default swait init", (int)swait_calls, 1);
	expect_s64("default zlog clear", load_s64(fixture_cdev, 3048), 0);
	expect_int("default zlog enabled", fixture_cdev[3056], 0);
	expect_s64("default zlog timestamp", load_s64(fixture_cdev, 3064), jiffies);
}

static void test_properties_and_sysfs_failure(void)
{
	reset_fixture();
	fixture_node.tp_algo = 1;
	fixture_node.long_press = 1;
	fixture_node.ghost_config = 1;
	fixture_node.ufp_enable = 1;
	fixture_node.values_present = 1;
	sysfs_result = 7;
	expect_int("property return", zte_touch_probe(&fixture_pdev), 0);
	expect_int("property ghost time", fixture_cdev[1169], 41);
	expect_int("property ghost multi", fixture_cdev[1170], 42);
	expect_int("property ghost count", fixture_cdev[1171], 43);
	expect_int("property ghost multi count", fixture_cdev[1172], 44);
	expect_int("property ghost start", fixture_cdev[1173], 45);
	expect_int("property ghost id", load_s32(fixture_cdev, 1176), 46);
	expect_int("property ghost edge", load_s32(fixture_cdev, 1180), 47);
	expect_int("property ghost corner x", load_s32(fixture_cdev, 1184), 48);
	expect_int("property ghost corner y", load_s32(fixture_cdev, 1188), 49);
	expect_int("property sysfs rollback", (int)kobject_put_calls, 1);
}

static void test_workqueue_failure(void)
{
	reset_fixture();
	workqueue_result = -5;
	expect_int("workqueue failure return", zte_touch_probe(&fixture_pdev), -ENOMEM);
	expect_int("workqueue failure calls", (int)workqueue_init_calls, 1);
	expect_int("workqueue failure delayed", (int)delayed_call_count, 0);
	expect_int("workqueue failure swait", (int)swait_calls, 0);
}

int main(void)
{
	test_allocation_failure();
	test_default_success();
	test_properties_and_sysfs_failure();
	test_workqueue_failure();
	if (failures != 0)
		return 1;
	puts("PASS zte_touch_probe host tests (4 cases)");
	return 0;
}
