#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

#define EIO 5
#define WORK_CPU_UNBOUND 0x20
#define __int8 char

enum lcdchange {
	LCDCHANGE_EXIT_LP = 0,
	LCDCHANGE_ENTER_LP = 1,
	LCDCHANGE_ON = 2,
	LCDCHANGE_OFF = 3,
};

struct ztp_device;
struct mutex { unsigned char unused; };
struct workqueue_struct { unsigned char unused; };
struct work_struct { unsigned char unused; };

static unsigned char cdev_memory[4096] __attribute__((aligned(8)));
static long long tpd_cdev;
static int current_lcd_state;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int queue_calls;
static unsigned long long last_queue_work;
static unsigned int break_calls;
static unsigned int printk_calls;

struct ufp_tp_ops_struct {
	unsigned char pad0[8];
	int field_8;
	unsigned char pad1[244];
};
static struct ufp_tp_ops_struct ufp_tp_ops;

static char ztp_algo_info_l;
static char byte_4A0;
static char byte_4B0;
static char byte_4C0;
static char byte_4D0;
static char byte_4E0;
static char byte_4F0;
static const char *off_498 = "algo_498";
static const char *off_4A8 = "algo_4A8";
static const char *off_4B8 = "algo_4B8";
static const char *off_4C8 = "algo_4C8";
static const char *off_4D8 = "algo_4D8";
static const char *off_4E8 = "algo_4E8";
static const char *off_4F8 = "algo_4F8";
static char unk_39C9D[8];

static void mutex_lock(struct mutex *lock)
{
	(void)lock;
	mutex_lock_calls++;
}

static void mutex_unlock(struct mutex *lock)
{
	(void)lock;
	mutex_unlock_calls++;
}

static int queue_work_on(int cpu, struct workqueue_struct *workqueue,
			struct work_struct *work)
{
	(void)cpu;
	(void)workqueue;
	queue_calls++;
	last_queue_work = (unsigned long long)(uintptr_t)work;
	return 1;
}

static int printk(const void *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

#define pr_info(...) printk(__VA_ARGS__)
#define pr_err(...) printk(__VA_ARGS__)
#define __break(value) do { break_calls++; } while (0)

static const char *strnstr(const char *haystack, const char *needle,
				 size_t length)
{
	size_t needle_length = strlen(needle);
	if (needle_length == 0)
		return haystack;
	if (needle_length > length)
		return NULL;
	for (size_t index = 0; index + needle_length <= length; index++)
		if (memcmp(haystack + index, needle, needle_length) == 0)
			return haystack + index;
	return NULL;
}

#include "../../../curated/zte_tpd/get_tp_algo_item_id.c"
#include "../../../curated/zte_tpd/set_gpio_mode.c"
#include "../../../curated/zte_tpd/change_tp_state.c"

typedef int (*get_tp_algo_item_id_fn)(char *name);
typedef int (*set_gpio_mode_fn)(u8 mode);
typedef void (*change_tp_state_fn)(enum lcdchange state);
typedef int (*set_gpio_mode_callback_fn)(struct ztp_device *context, u8 mode);

_Static_assert(__builtin_types_compatible_p(typeof(&get_tp_algo_item_id),
						 get_tp_algo_item_id_fn), "get ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&set_gpio_mode),
						 set_gpio_mode_fn), "gpio ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&change_tp_state),
						 change_tp_state_fn), "state ABI");

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_state(void)
{
	memset(cdev_memory, 0, sizeof(cdev_memory));
	memset(&ufp_tp_ops, 0, sizeof(ufp_tp_ops));
	tpd_cdev = (long long)(uintptr_t)cdev_memory;
	current_lcd_state = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	queue_calls = 0;
	last_queue_work = 0;
	break_calls = 0;
	printk_calls = 0;
	*(struct workqueue_struct **)(cdev_memory + 0x4b0) =
		(struct workqueue_struct *)(cdev_memory + 0x300);
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_algo_lookup_order_and_failure(void)
{
	char first[] = "prefix-algo_498-suffix";
	char last[] = "algo_4F8";
	char unknown[] = "no-match";
	reset_state();
	ztp_algo_info_l = 11;
	byte_4A0 = 22;
	byte_4B0 = 33;
	byte_4C0 = 44;
	byte_4D0 = 55;
	byte_4E0 = 66;
	byte_4F0 = 77;
	REQUIRE(get_tp_algo_item_id(first) == 11);
	REQUIRE(get_tp_algo_item_id(last) == 77);
	REQUIRE(get_tp_algo_item_id(unknown) == -EIO);
	REQUIRE(printk_calls == 2);
	return true;
}

static bool test_gpio_null_callback(void)
{
	reset_state();
	*(uintptr_t *)(cdev_memory + 0xf58) = 0;
	REQUIRE(set_gpio_mode(3) == -EIO);
	REQUIRE(break_calls == 0);
	return true;
}

static bool test_state_screen_in_doze_to_on(void)
{
	reset_state();
	current_lcd_state = 2;
	change_tp_state(LCDCHANGE_ON);
	REQUIRE(current_lcd_state == 0);
	REQUIRE(queue_calls == 1);
	REQUIRE(last_queue_work == (uintptr_t)(cdev_memory + 0x9c0));
	REQUIRE(ufp_tp_ops.field_8 == 0);
	REQUIRE(mutex_lock_calls == 1 && mutex_unlock_calls == 1);
	return true;
}

static bool test_state_screen_in_doze_to_off(void)
{
	reset_state();
	current_lcd_state = 2;
	change_tp_state(LCDCHANGE_OFF);
	REQUIRE(current_lcd_state == 1);
	REQUIRE(queue_calls == 1);
	REQUIRE(last_queue_work == (uintptr_t)(cdev_memory + 0x9a0));
	REQUIRE(*(int *)((unsigned char *)&ufp_tp_ops + 128) == 0);
	return true;
}

static bool test_state_screen_off_transitions(void)
{
	reset_state();
	current_lcd_state = 1;
	change_tp_state(LCDCHANGE_ENTER_LP);
	REQUIRE(current_lcd_state == 2 && queue_calls == 1);
	current_lcd_state = 1;
	queue_calls = 0;
	change_tp_state(LCDCHANGE_ON);
	REQUIRE(current_lcd_state == 0 && queue_calls == 1);
	REQUIRE(last_queue_work == (uintptr_t)(cdev_memory + 0x9c0));
	return true;
}

static bool test_state_screen_on_transitions(void)
{
	reset_state();
	current_lcd_state = 0;
	change_tp_state(LCDCHANGE_OFF);
	REQUIRE(current_lcd_state == 1 && queue_calls == 1);
	REQUIRE(last_queue_work == (uintptr_t)(cdev_memory + 0x9a0));
	current_lcd_state = 0;
	queue_calls = 0;
	change_tp_state(LCDCHANGE_ENTER_LP);
	REQUIRE(current_lcd_state == 2 && queue_calls == 1);
	return true;
}

static bool test_state_noop_and_invalid_paths(void)
{
	reset_state();
	current_lcd_state = 2;
	change_tp_state(LCDCHANGE_EXIT_LP);
	REQUIRE(current_lcd_state == 2 && queue_calls == 0);
	change_tp_state((enum lcdchange)4);
	REQUIRE(break_calls == 1 && mutex_unlock_calls == 2);
	REQUIRE(queue_calls == 0);
	return true;
}

static int run_test(const char *name, bool (*test)(void))
{
	if (!test()) {
		printf("FAIL %s\n", name);
		return 1;
	}
	printf("PASS %s\n", name);
	return 0;
}

int main(void)
{
	int failures = 0;
	int total = 0;
#define RUN(test) do { total++; failures += run_test(#test, test); } while (0)
	RUN(test_signature_contract);
	RUN(test_algo_lookup_order_and_failure);
	RUN(test_gpio_null_callback);
	RUN(test_state_screen_in_doze_to_on);
	RUN(test_state_screen_in_doze_to_off);
	RUN(test_state_screen_off_transitions);
	RUN(test_state_screen_on_transitions);
	RUN(test_state_noop_and_invalid_paths);
#undef RUN
	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
