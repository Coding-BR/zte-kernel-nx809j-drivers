#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define _DEFS_H
#define __exit
#define __fastcall
#define SP_EL0 0

typedef int64_t __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
typedef uint16_t _WORD;
typedef uint8_t _BYTE;

struct work_struct { uint64_t unused; };
void ufp_report_lcd_state_work(struct work_struct *work);
struct input_dev { int marker; };
struct platform_device { int marker; };
struct platform_driver { int marker; };
struct spi_driver { int marker; };
struct wakeup_source { int marker; };

static uint8_t status_registers[2048];
static uintptr_t read_status_register(int reg)
{
	(void)reg;
	return (uintptr_t)status_registers;
}

#define _ReadStatusReg(reg) read_status_register(reg)

static unsigned int printk_calls;
static int printk(const void *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static uintptr_t delayed_cancels[64];
static size_t delayed_cancel_count;
static uintptr_t work_cancels[16];
static size_t work_cancel_count;
static uintptr_t timer_objects[8];
static size_t timer_count;
static unsigned int vfree_calls;
static unsigned int kfree_calls;
static unsigned int zlog_deinit_calls;

static int record_delayed_cancel(uintptr_t object)
{
	delayed_cancels[delayed_cancel_count++] = object;
	return 1;
}

static int record_work_cancel(uintptr_t object)
{
	work_cancels[work_cancel_count++] = object;
	return 1;
}

static void record_timer(uintptr_t object)
{
	timer_objects[timer_count++] = object;
}

#define cancel_delayed_work_sync(object) record_delayed_cancel((uintptr_t)(object))
#define cancel_work_sync(object) record_work_cancel((uintptr_t)(object))
#define init_timer_key(object, function, flags, name, key) \
	do { \
		(void)(function); \
		(void)(flags); \
		(void)(name); \
		(void)(key); \
		record_timer((uintptr_t)(object)); \
	} while (0)

static void test_vfree(void *pointer)
{
	vfree_calls++;
	free(pointer);
}

static void test_kfree(void *pointer)
{
	kfree_calls++;
	free(pointer);
}

#define vfree(pointer) test_vfree((void *)(pointer))
#define kfree(pointer) test_kfree((void *)(pointer))

static const char *removed_entries[64];
static size_t removed_entry_count;
static void *tpd_proc_dir;

static void remove_proc_entry(const char *name, void *parent)
{
	(void)parent;
	removed_entries[removed_entry_count++] = name;
}

static struct platform_driver zte_touch_device_driver;
static struct platform_driver syna_dev_driver;
static struct spi_driver syna_spi_driver;
static struct platform_device syna_spi_device;
static const void *platform_driver_unregistered[16];
static size_t platform_driver_unregister_count;
static const void *platform_device_unregistered[16];
static size_t platform_device_unregister_count;
static const void *spi_driver_unregistered[8];
static size_t spi_driver_unregister_count;
static unsigned int zte_touch_deinit_calls;

static void record_platform_driver_unregister(const void *driver)
{
	platform_driver_unregistered[platform_driver_unregister_count++] = driver;
}

static void record_platform_device_unregister(const void *device)
{
	platform_device_unregistered[platform_device_unregister_count++] = device;
}

static void record_spi_unregister(const void *driver)
{
	spi_driver_unregistered[spi_driver_unregister_count++] = driver;
}

#define platform_driver_unregister(driver) record_platform_driver_unregister(driver)
#define platform_device_unregister(device) record_platform_device_unregister(device)
#define spi_unregister_driver(driver) record_spi_unregister(driver)

static __int64 zte_touch_deinit(__int64 a1, __int64 a2, __int64 a3)
{
	(void)a1;
	(void)a2;
	(void)a3;
	zte_touch_deinit_calls++;
	return 0;
}

static uintptr_t qword_31430;
static uintptr_t qword_31498;
static struct wakeup_source tp_wakeup;
static unsigned int flush_calls;
static unsigned int destroy_calls;
static unsigned int wakeup_remove_calls;

static void record_flush(uintptr_t workqueue)
{
	(void)workqueue;
	flush_calls++;
}

static void record_destroy(uintptr_t workqueue)
{
	(void)workqueue;
	destroy_calls++;
}

static void record_wakeup_remove(const void *source)
{
	(void)source;
	wakeup_remove_calls++;
}

#define _flush_workqueue(workqueue) record_flush((uintptr_t)(workqueue))
#define destroy_workqueue(workqueue) record_destroy((uintptr_t)(workqueue))
#define wakeup_source_remove(source) record_wakeup_remove(source)

static struct {
	struct platform_device *pdev;
} ufp_tp_ops;
static unsigned int kobject_event_calls;
static int kobject_event_result;
static uintptr_t kobject_event_target;
static const char *kobject_event_value;

static int kobject_uevent_env(uintptr_t target, int action, _QWORD *environment)
{
	(void)action;
	kobject_event_calls++;
	kobject_event_target = target;
	kobject_event_value = (const char *)(uintptr_t)environment[0];
	return kobject_event_result;
}

static void *unk_322AA;
static void *unk_35F05;
static void *unk_37CDC;
static void *unk_37C83;
static void *unk_3CE70;
static int delayed_work_timer_fn;

static __int64 tpd_cdev;
static unsigned int dword_31428;

static uint32_t dword_30F04, dword_30F8C, dword_31014, dword_3109C;
static uint32_t dword_31124, dword_311AC, dword_31234, dword_312BC;
static uint32_t dword_31344, dword_313CC;
static uint32_t dword_3100F, dword_31097, dword_3111F, dword_311A7;
static uint32_t dword_3122F, dword_30EFF, dword_30F87, dword_312B7;
static uint32_t dword_3133F, dword_313C7;
static uint64_t unk_31008, unk_31090, unk_31228, unk_30EF8;
static uint64_t unk_30F80, unk_31118, unk_311A0, unk_312B0;
static uint64_t unk_31338, unk_313C0;

static uintptr_t qword_30F28, qword_30FB0, qword_31038, qword_310C0;
static uintptr_t qword_31148, qword_311D0, qword_31258, qword_312E0;
static uintptr_t qword_31368, qword_313F0;
static struct input_dev *edge_inputs[16];
static int edge_indices[16];
static size_t edge_call_count;

static __int64 edge_long_press_up(struct input_dev *input, int index)
{
	edge_inputs[edge_call_count] = input;
	edge_indices[edge_call_count++] = index;
	return index;
}

static void ztp_probe_work(struct work_struct *work) { (void)work; }
static void tpd_resume_work(struct work_struct *work) { (void)work; }
static void tpd_suspend_work(struct work_struct *work) { (void)work; }
static void zlog_register_work_deinit(void) { zlog_deinit_calls++; }

#include "tpd_id0_report_work.c"
#include "tpd_id1_report_work.c"
#include "tpd_id2_report_work.c"
#include "tpd_id3_report_work.c"
#include "tpd_id4_report_work.c"
#include "tpd_id5_report_work.c"
#include "tpd_id6_report_work.c"
#include "tpd_id7_report_work.c"
#include "tpd_id8_report_work.c"
#include "tpd_id9_report_work.c"
#include "ufp_single_tap_work.c"
#include "ghost_check_reset.c"
#include "tpd_clean_all_event.c"
#include "cancel_report_lcd_state_delayed_work.c"
#include "tpd_probe_work_deinit.c"
#include "tpd_report_work_deinit.c"
#include "tpd_resume_work_deinit.c"
#include "tpd_workqueue_deinit.c"
#include "tpd_probe_work_init.c"
#include "tpd_resume_work_init.c"
#include "tpd_proc_deinit.c"
#include "tpd_reset_fw_data_pos_and_size.c"
#include "tp_free_tp_firmware_data.c"
#include "ufp_report_lcd_state.c"
#include "ufp_report_lcd_state_work.c"
#include "ufp_mac_exit.c"
#include "zte_touch_pdev_unregister.c"
#include "syna_hw_interface_exit.c"
#include "syna_dev_module_exit.c"
#include "cleanup_module.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static _Alignas(8) uint8_t cdev_storage[4096];

static void reset_fixture(void)
{
	memset(cdev_storage, 0, sizeof(cdev_storage));
	memset(status_registers, 0, sizeof(status_registers));
	tpd_cdev = (__int64)(uintptr_t)cdev_storage;
	delayed_cancel_count = 0;
	work_cancel_count = 0;
	timer_count = 0;
	printk_calls = 0;
	removed_entry_count = 0;
	platform_driver_unregister_count = 0;
	platform_device_unregister_count = 0;
	spi_driver_unregister_count = 0;
	zte_touch_deinit_calls = 0;
	flush_calls = 0;
	destroy_calls = 0;
	wakeup_remove_calls = 0;
	kobject_event_calls = 0;
	kobject_event_result = 0;
	kobject_event_target = 0;
	kobject_event_value = NULL;
	zlog_deinit_calls = 0;
	vfree_calls = 0;
	kfree_calls = 0;
}

static bool test_edge_dispatchers(void)
{
	struct input_dev inputs[10];
	struct work_struct work = { 0 };
	void (*callbacks[10])(struct work_struct *) = {
		tpd_id0_report_work, tpd_id1_report_work, tpd_id2_report_work,
		tpd_id3_report_work, tpd_id4_report_work, tpd_id5_report_work,
		tpd_id6_report_work, tpd_id7_report_work, tpd_id8_report_work,
		tpd_id9_report_work,
	};
	uintptr_t *slots[10] = {
		&qword_30F28, &qword_30FB0, &qword_31038, &qword_310C0,
		&qword_31148, &qword_311D0, &qword_31258, &qword_312E0,
		&qword_31368, &qword_313F0,
	};
	size_t index;

	edge_call_count = 0;
	for (index = 0; index < 10; index++) {
		*slots[index] = (uintptr_t)&inputs[index];
		callbacks[index](&work);
	}
	REQUIRE(edge_call_count == 10);
	for (index = 0; index < 10; index++) {
		REQUIRE(edge_inputs[index] == &inputs[index]);
		REQUIRE(edge_indices[index] == (int)index);
	}
	return true;
}

static bool test_reset_callbacks(void)
{
	dword_30F04 = dword_30F8C = dword_31014 = dword_3109C = 7;
	dword_31124 = dword_311AC = dword_31234 = dword_312BC = 7;
	dword_31344 = dword_313CC = 7;
	ghost_check_reset();
	REQUIRE(dword_30F04 == 0 && dword_313CC == 0);

	memset(&unk_31008, 0xff, sizeof(unk_31008));
	dword_3100F = dword_313C7 = 9;
	unk_313C0 = 9;
	tpd_clean_all_event();
	REQUIRE(unk_31008 == 0 && dword_3100F == 0);
	REQUIRE(unk_313C0 == 0 && dword_313C7 == 0);
	return true;
}

static bool test_cancel_and_deinit_offsets(void)
{
	uintptr_t base;
	size_t index;

	reset_fixture();
	base = (uintptr_t)cdev_storage;
	cancel_report_lcd_state_delayed_work();
	REQUIRE(delayed_cancel_count == 1 && delayed_cancels[0] == base + 2528);

	delayed_cancel_count = 0;
	tpd_probe_work_deinit();
	REQUIRE(delayed_cancel_count == 1 && delayed_cancels[0] == base + 2256);

	delayed_cancel_count = 0;
	tpd_report_work_deinit();
	REQUIRE(delayed_cancel_count == 10);
	for (index = 0; index < 10; index++)
		REQUIRE(delayed_cancels[index] == base + 1216 + index * 104);

	delayed_cancel_count = 0;
	work_cancel_count = 0;
	tpd_resume_work_deinit();
	REQUIRE(work_cancel_count == 2);
	REQUIRE(work_cancels[0] == base + 2496 && work_cancels[1] == base + 2464);
	REQUIRE(delayed_cancel_count == 1 && delayed_cancels[0] == base + 2528);
	return true;
}

static bool test_workqueue_deinit_order(void)
{
	uintptr_t base;

	reset_fixture();
	base = (uintptr_t)cdev_storage;
	tpd_workqueue_deinit();
	REQUIRE(delayed_cancel_count == 13);
	REQUIRE(delayed_cancels[10] == base + 2528);
	REQUIRE(delayed_cancels[11] == base + 2256);
	REQUIRE(delayed_cancels[12] == base + 2360);
	REQUIRE(work_cancel_count == 2);
	REQUIRE(zlog_deinit_calls == 1);
	return true;
}

static bool test_work_initializers(void)
{
	_QWORD *words;
	uintptr_t base;

	reset_fixture();
	words = (_QWORD *)cdev_storage;
	base = (uintptr_t)cdev_storage;
	tpd_probe_work_init();
	REQUIRE(words[282] == 0xFFFFFFFE00000ULL);
	REQUIRE(words[283] == (uintptr_t)(words + 283));
	REQUIRE(words[285] == (uintptr_t)ztp_probe_work);
	REQUIRE(timer_count == 1 && timer_objects[0] == base + 286 * 8);

	tpd_resume_work_init();
	REQUIRE(words[315] == (uintptr_t)tpd_resume_work);
	REQUIRE(words[311] == (uintptr_t)tpd_suspend_work);
	REQUIRE(words[319] == (uintptr_t)ufp_report_lcd_state_work);
	REQUIRE(timer_count == 2 && timer_objects[1] == base + 320 * 8);
	return true;
}

static bool test_proc_deinit_entries(void)
{
	reset_fixture();
	tpd_proc_dir = (void *)0x1234;
	tpd_proc_deinit();
	REQUIRE(removed_entry_count == 30);
	REQUIRE(strcmp(removed_entries[0], "ts_information") == 0);
	REQUIRE(strcmp(removed_entries[28], "ghost_debug") == 0);
	REQUIRE(strcmp(removed_entries[29], "touchscreen") == 0);

	removed_entry_count = 0;
	tpd_proc_dir = NULL;
	tpd_proc_deinit();
	REQUIRE(removed_entry_count == 0);
	REQUIRE(printk_calls > 0);
	return true;
}

static bool test_firmware_free_and_reset(void)
{
	_QWORD *metadata;
	_QWORD reset_metadata[2] = { 0 };
	void *data;

	reset_fixture();
	metadata = calloc(2, sizeof(*metadata));
	data = malloc(32);
	REQUIRE(metadata != NULL && data != NULL);
	metadata[0] = 99;
	metadata[1] = (uintptr_t)data;
	memcpy(cdev_storage + 2720, &metadata, sizeof(metadata));
	*(_DWORD *)(cdev_storage + 1096) = 77;
	tp_free_tp_firmware_data();
	REQUIRE(*(_QWORD *)(cdev_storage + 2720) == 0);
	REQUIRE(*(_DWORD *)(cdev_storage + 1096) == 0);
	REQUIRE(vfree_calls == 1 && kfree_calls == 1);

	metadata = reset_metadata;
	memcpy(cdev_storage + 2720, &metadata, sizeof(metadata));
	*(_DWORD *)(cdev_storage + 1096) = 1234;
	tpd_reset_fw_data_pos_and_size();
	REQUIRE(reset_metadata[0] == 1234);
	REQUIRE(*(_DWORD *)(cdev_storage + 1096) == 0);
	return true;
}

static bool test_lcd_report_and_single_tap(void)
{
	struct platform_device pdev;
	struct work_struct work = { 0 };

	reset_fixture();
	dword_31428 = 1;
	ufp_single_tap_work(&work);
	REQUIRE(dword_31428 == 0);

	ufp_tp_ops.pdev = &pdev;
	ufp_report_lcd_state_work(&work);
	REQUIRE(kobject_event_calls == 1);
	REQUIRE(kobject_event_target == (uintptr_t)&pdev + 16);
	REQUIRE(strcmp(kobject_event_value, "aod=true") == 0);

	kobject_event_calls = 0;
	ufp_tp_ops.pdev = NULL;
	ufp_report_lcd_state();
	REQUIRE(kobject_event_calls == 0);
	return true;
}

static bool test_mac_exit(void)
{
	struct platform_device pdev;

	reset_fixture();
	qword_31498 = 0x4444;
	ufp_tp_ops.pdev = &pdev;
	ufp_mac_exit();
	REQUIRE(delayed_cancel_count == 1);
	REQUIRE(delayed_cancels[0] == (uintptr_t)&qword_31430);
	REQUIRE(flush_calls == 1 && destroy_calls == 1 && wakeup_remove_calls == 1);
	REQUIRE(ufp_tp_ops.pdev == NULL);
	return true;
}

static bool test_platform_teardown(void)
{
	struct platform_device pdev;
	struct platform_device *pdev_pointer = &pdev;

	reset_fixture();
	memcpy(cdev_storage + 3096, &pdev_pointer, sizeof(pdev_pointer));
	zte_touch_pdev_unregister();
	REQUIRE(platform_device_unregister_count == 1);
	REQUIRE(platform_device_unregistered[0] == &pdev);
	REQUIRE(*(_QWORD *)(cdev_storage + 3096) == 0);

	syna_hw_interface_exit();
	REQUIRE(spi_driver_unregister_count == 1);
	REQUIRE(platform_device_unregister_count == 2);

	syna_dev_module_exit();
	REQUIRE(platform_driver_unregister_count == 1);
	REQUIRE(spi_driver_unregister_count == 2);

	cleanup_module();
	REQUIRE(zte_touch_deinit_calls == 1);
	REQUIRE(platform_driver_unregister_count == 3);
	REQUIRE(platform_driver_unregistered[2] == &zte_touch_device_driver);
	return true;
}

int main(void)
{
	struct test_case {
		const char *name;
		bool (*run)(void);
	};
	static const struct test_case tests[] = {
		{ "edge_dispatchers", test_edge_dispatchers },
		{ "reset_callbacks", test_reset_callbacks },
		{ "cancel_and_deinit_offsets", test_cancel_and_deinit_offsets },
		{ "workqueue_deinit_order", test_workqueue_deinit_order },
		{ "work_initializers", test_work_initializers },
		{ "proc_deinit_entries", test_proc_deinit_entries },
		{ "firmware_free_and_reset", test_firmware_free_and_reset },
		{ "lcd_report_and_single_tap", test_lcd_report_and_single_tap },
		{ "mac_exit", test_mac_exit },
		{ "platform_teardown", test_platform_teardown },
	};
	size_t index;
	size_t passed = 0;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (tests[index].run()) {
			printf("PASS %s\n", tests[index].name);
			passed++;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	printf("SUMMARY %zu/%zu tests passed\n", passed,
	       sizeof(tests) / sizeof(tests[0]));
	return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
