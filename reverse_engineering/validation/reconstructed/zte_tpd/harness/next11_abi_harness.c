#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int16 short
#define __int8 char

typedef uint8_t u8;
typedef uint32_t _DWORD;

#define LOWORD(value) (*((uint16_t *)&(value)))
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

struct ztp_device;

struct point_info_struct {
	int x;
	int y;
	u8 touch_major;
	u8 touch_minor;
	u8 reserved_000a[14];
	int down_x;
	int down_y;
	u8 reserved_0020[4];
	int up_x;
	int up_y;
	u8 reserved_002c[36];
	u8 field_80;
	u8 reserved_0051[2];
	u8 field_83;
	u8 field_84;
	u8 reserved_0055[7];
	uint16_t ghost_count;
	uint16_t ghost_active;
	unsigned long last_stamp;
	unsigned long reserved_0068;
	unsigned long timestamp;
	unsigned long duration;
	void *input;
};

_Static_assert(offsetof(struct point_info_struct, down_x) == 0x18,
	       "down_x offset");
_Static_assert(offsetof(struct point_info_struct, up_x) == 0x24,
	       "up_x offset");
_Static_assert(offsetof(struct point_info_struct, ghost_count) == 0x5c,
	       "ghost_count offset");
_Static_assert(offsetof(struct point_info_struct, ghost_active) == 0x5e,
	       "ghost_active offset");
_Static_assert(sizeof(struct point_info_struct) == 0x88,
	       "point report size");

enum call_id {
	CALL_ALLOC = 1,
	CALL_PRINTK,
	CALL_LOG_COPY,
	CALL_ZLOG,
	CALL_FREE,
};

#define MAX_CALLS 16
#define CDEV_SIZE 0xec0
#define ESD_CALLBACK_OFFSET 0xe98
#define OLD_ESD_CALLBACK_OFFSET 0xce0
#define LOG_BUFFER_OFFSET 0xbe8
#define POINT_DOWN_OFFSET 0x48c
#define GHOST_THRESHOLD_LOW_OFFSET 0x493
#define GHOST_THRESHOLD_HIGH_OFFSET 0x494
#define CURRENT_TOUCH_ID_OFFSET 0x498

static union {
	max_align_t alignment;
	u8 bytes[CDEV_SIZE];
} cdev_storage;

static struct point_info_struct point_report_info[10];
static __int64 tpd_cdev;
static enum call_id calls[MAX_CALLS];
static size_t call_count;
static bool allocation_fails;
static size_t allocation_size;
static unsigned int zlog_error;
static unsigned int zlog_calls;
static char last_printk[4096];
static char zlog_buffer[2048];
static unsigned int esd_calls;
static unsigned int old_esd_calls;
static struct ztp_device *esd_argument;
static bool esd_result;

static void record_call(enum call_id id)
{
	if (call_count < MAX_CALLS)
		calls[call_count] = id;
	call_count++;
}

static void *test_vmalloc(size_t size)
{
	record_call(CALL_ALLOC);
	allocation_size = size;
	if (allocation_fails)
		return NULL;
	return calloc(1, size);
}

static void test_vfree(void *pointer)
{
	record_call(CALL_FREE);
	free(pointer);
}

static int printk(const char *format, ...)
{
	va_list arguments;
	int result;

	record_call(CALL_PRINTK);
	va_start(arguments, format);
	result = vsnprintf(last_printk, sizeof(last_printk), format, arguments);
	va_end(arguments);
	return result;
}

static int test_snprintf(char *destination, size_t size,
			 const char *format, ...)
{
	va_list arguments;
	int result;

	if (destination == zlog_buffer)
		record_call(CALL_LOG_COPY);
	va_start(arguments, format);
	result = vsnprintf(destination, size, format, arguments);
	va_end(arguments);
	return result;
}

static void tpd_zlog_record_notify(unsigned int error)
{
	record_call(CALL_ZLOG);
	zlog_error = error;
	zlog_calls++;
}

static bool fake_esd_callback(struct ztp_device *cdev)
{
	esd_calls++;
	esd_argument = cdev;
	return esd_result;
}

static bool old_esd_callback(struct ztp_device *cdev)
{
	(void)cdev;
	old_esd_calls++;
	return true;
}

#define vmalloc(size) test_vmalloc(size)
#define vfree(pointer) test_vfree(pointer)
#define snprintf test_snprintf

#include "../../../curated/zte_tpd/tp_esd_check.c"
#include "../../../curated/zte_tpd/tp_ghost_check.c"

static void store_pointer(size_t offset, const void *pointer)
{
	memcpy(cdev_storage.bytes + offset, &pointer, sizeof(pointer));
}

static void store_int(size_t offset, int value)
{
	memcpy(cdev_storage.bytes + offset, &value, sizeof(value));
}

static void reset_state(void)
{
	memset(&cdev_storage, 0, sizeof(cdev_storage));
	memset(point_report_info, 0, sizeof(point_report_info));
	memset(calls, 0, sizeof(calls));
	memset(last_printk, 0, sizeof(last_printk));
	memset(zlog_buffer, 0, sizeof(zlog_buffer));
	tpd_cdev = (__int64)(uintptr_t)cdev_storage.bytes;
	call_count = 0;
	allocation_fails = false;
	allocation_size = 0;
	zlog_error = 0;
	zlog_calls = 0;
	esd_calls = 0;
	old_esd_calls = 0;
	esd_argument = NULL;
	esd_result = false;
	cdev_storage.bytes[GHOST_THRESHOLD_LOW_OFFSET] = 3;
	cdev_storage.bytes[GHOST_THRESHOLD_HIGH_OFFSET] = 3;
}

static void prepare_single_ghost(unsigned int point, uint16_t count)
{
	store_int(CURRENT_TOUCH_ID_OFFSET, 1);
	point_report_info[point].ghost_count = count;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: requirement failed: %s\n", \
			__func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_esd_missing_callback(void)
{
	reset_state();
	REQUIRE(!tp_esd_check());
	REQUIRE(esd_calls == 0);
	return true;
}

static bool test_esd_true_callback_and_argument(void)
{
	reset_state();
	esd_result = true;
	store_pointer(ESD_CALLBACK_OFFSET, fake_esd_callback);
	REQUIRE(tp_esd_check());
	REQUIRE(esd_calls == 1);
	REQUIRE(esd_argument == (struct ztp_device *)cdev_storage.bytes);
	return true;
}

static bool test_esd_false_callback(void)
{
	reset_state();
	store_pointer(ESD_CALLBACK_OFFSET, fake_esd_callback);
	REQUIRE(!tp_esd_check());
	REQUIRE(esd_calls == 1);
	return true;
}

static bool test_esd_exact_callback_offset(void)
{
	reset_state();
	store_pointer(OLD_ESD_CALLBACK_OFFSET, old_esd_callback);
	store_pointer(ESD_CALLBACK_OFFSET, fake_esd_callback);
	REQUIRE(!tp_esd_check());
	REQUIRE(esd_calls == 1);
	REQUIRE(old_esd_calls == 0);
	return true;
}

static bool test_ghost_allocation_failure(void)
{
	reset_state();
	allocation_fails = true;
	REQUIRE(!tp_ghost_check());
	REQUIRE(allocation_size == 2048);
	REQUIRE(call_count == 2);
	REQUIRE(calls[0] == CALL_ALLOC);
	REQUIRE(calls[1] == CALL_PRINTK);
	REQUIRE(strstr(last_printk, "log_buffer malloc fail") != NULL);
	return true;
}

static bool test_ghost_no_detection(void)
{
	reset_state();
	REQUIRE(!tp_ghost_check());
	REQUIRE(call_count == 2);
	REQUIRE(calls[0] == CALL_ALLOC);
	REQUIRE(calls[1] == CALL_FREE);
	REQUIRE(zlog_calls == 0);
	return true;
}

static bool test_ghost_single_detection(void)
{
	reset_state();
	prepare_single_ghost(0, 3);
	REQUIRE(tp_ghost_check());
	REQUIRE(strstr(last_printk, "single ghost detect,touch id:0") != NULL);
	REQUIRE(zlog_calls == 1);
	REQUIRE(zlog_error == 0x10);
	return true;
}

static bool test_ghost_low_threshold_selector(void)
{
	reset_state();
	cdev_storage.bytes[GHOST_THRESHOLD_LOW_OFFSET] = 2;
	cdev_storage.bytes[GHOST_THRESHOLD_HIGH_OFFSET] = 9;
	store_int(POINT_DOWN_OFFSET, 2);
	prepare_single_ghost(0, 2);
	REQUIRE(tp_ghost_check());
	return true;
}

static bool test_ghost_high_threshold_selector(void)
{
	reset_state();
	cdev_storage.bytes[GHOST_THRESHOLD_LOW_OFFSET] = 9;
	cdev_storage.bytes[GHOST_THRESHOLD_HIGH_OFFSET] = 2;
	store_int(POINT_DOWN_OFFSET, 3);
	prepare_single_ghost(0, 2);
	REQUIRE(tp_ghost_check());
	return true;
}

static bool test_ghost_multi_detection(void)
{
	unsigned int index;

	reset_state();
	cdev_storage.bytes[GHOST_THRESHOLD_LOW_OFFSET] = 1;
	cdev_storage.bytes[GHOST_THRESHOLD_HIGH_OFFSET] = 1;
	for (index = 0; index < 6; index++)
		point_report_info[index].ghost_active = 2;
	REQUIRE(tp_ghost_check());
	REQUIRE(strstr(last_printk, "multi ghost detect,ghost_count:") != NULL);
	return true;
}

static bool test_ghost_zlog_buffer_copy(void)
{
	reset_state();
	store_pointer(LOG_BUFFER_OFFSET, zlog_buffer);
	prepare_single_ghost(0, 3);
	REQUIRE(tp_ghost_check());
	REQUIRE(strstr(zlog_buffer, "single ghost detect") != NULL);
	REQUIRE(calls[2] == CALL_LOG_COPY);
	return true;
}

static bool test_ghost_null_zlog_buffer(void)
{
	reset_state();
	prepare_single_ghost(0, 3);
	REQUIRE(tp_ghost_check());
	REQUIRE(call_count == 4);
	REQUIRE(calls[0] == CALL_ALLOC);
	REQUIRE(calls[1] == CALL_PRINTK);
	REQUIRE(calls[2] == CALL_ZLOG);
	REQUIRE(calls[3] == CALL_FREE);
	return true;
}

static bool test_ghost_point_detail_output(void)
{
	reset_state();
	prepare_single_ghost(0, 3);
	point_report_info[0].ghost_active = 1;
	point_report_info[0].down_x = 101;
	point_report_info[0].down_y = 202;
	point_report_info[0].up_x = 303;
	point_report_info[0].up_y = 404;
	REQUIRE(tp_ghost_check());
	REQUIRE(strstr(last_printk, "point[0] down: 101, 202") != NULL);
	REQUIRE(strstr(last_printk, "point[0] up: 303, 404") != NULL);
	return true;
}

static bool test_ghost_detection_call_order(void)
{
	reset_state();
	store_pointer(LOG_BUFFER_OFFSET, zlog_buffer);
	prepare_single_ghost(0, 3);
	REQUIRE(tp_ghost_check());
	REQUIRE(call_count == 5);
	REQUIRE(calls[0] == CALL_ALLOC);
	REQUIRE(calls[1] == CALL_PRINTK);
	REQUIRE(calls[2] == CALL_LOG_COPY);
	REQUIRE(calls[3] == CALL_ZLOG);
	REQUIRE(calls[4] == CALL_FREE);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "esd_missing_callback", test_esd_missing_callback },
		{ "esd_true_callback_and_argument", test_esd_true_callback_and_argument },
		{ "esd_false_callback", test_esd_false_callback },
		{ "esd_exact_callback_offset", test_esd_exact_callback_offset },
		{ "ghost_allocation_failure", test_ghost_allocation_failure },
		{ "ghost_no_detection", test_ghost_no_detection },
		{ "ghost_single_detection", test_ghost_single_detection },
		{ "ghost_low_threshold_selector", test_ghost_low_threshold_selector },
		{ "ghost_high_threshold_selector", test_ghost_high_threshold_selector },
		{ "ghost_multi_detection", test_ghost_multi_detection },
		{ "ghost_zlog_buffer_copy", test_ghost_zlog_buffer_copy },
		{ "ghost_null_zlog_buffer", test_ghost_null_zlog_buffer },
		{ "ghost_point_detail_output", test_ghost_point_detail_output },
		{ "ghost_detection_call_order", test_ghost_detection_call_order },
	};
	size_t index;
	size_t passed = 0;

	for (index = 0; index < ARRAY_SIZE(tests); index++) {
		if (tests[index].run()) {
			printf("PASS %s\n", tests[index].name);
			passed++;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	printf("SUMMARY %zu/%zu passed\n", passed, ARRAY_SIZE(tests));
	return passed == ARRAY_SIZE(tests) ? 0 : 1;
}
