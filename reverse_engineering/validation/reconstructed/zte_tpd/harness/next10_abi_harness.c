#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;

struct work_struct {
	int marker;
};

typedef void (*work_func_t)(struct work_struct *);

struct list_head {
	struct list_head *next;
	struct list_head *prev;
};

struct timer_list {
	u8 opaque[0x48];
};

struct workqueue_struct {
	int marker;
};

struct delayed_work {
	u8 opaque[0x70];
};

struct platform_device {
	int marker;
};

struct wakeup_source {
	int marker;
};

struct lock_class_key {
	int marker;
};

struct completion {
	unsigned int done;
	u8 wait[0x1c];
};

struct syna_delayed_work_layout {
	unsigned long work_data;
	struct list_head work_entry;
	work_func_t work_func;
	u8 timer[0x48];
	struct workqueue_struct *wq;
};

struct ufp_tp_ops_struct {
	struct platform_device *pdev;
	int single_tap_pending;
	int reserved_0c;
	struct syna_delayed_work_layout single_tap_work;
	struct completion gesture_complete;
	u8 field_a0;
	u8 field_a1;
	u8 field_a2;
};

_Static_assert(offsetof(struct syna_delayed_work_layout, work_entry) == 0x08,
	       "work entry offset");
_Static_assert(offsetof(struct syna_delayed_work_layout, work_func) == 0x18,
	       "work callback offset");
_Static_assert(offsetof(struct syna_delayed_work_layout, timer) == 0x20,
	       "timer offset");
_Static_assert(offsetof(struct syna_delayed_work_layout, wq) == 0x68,
	       "workqueue offset");
_Static_assert(sizeof(struct syna_delayed_work_layout) == 0x70,
	       "delayed work size");
_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_pending) == 0x08,
	       "pending offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_work) == 0x10,
	       "delayed work offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, gesture_complete) == 0x80,
	       "completion offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, field_a0) == 0xa0,
	       "flag a0 offset");
_Static_assert(sizeof(struct ufp_tp_ops_struct) == 0xa8, "UFP layout size");

enum call_id {
	CALL_ALLOC = 1,
	CALL_TIMER,
	CALL_WAKEUP_ADD,
	CALL_COMPLETION,
	CALL_CANCEL,
	CALL_FLUSH,
	CALL_DESTROY,
	CALL_WAKEUP_REMOVE,
};

#define MAX_CALLS 8

static struct ufp_tp_ops_struct ufp_tp_ops;
static struct wakeup_source tp_wakeup;
static struct workqueue_struct workqueue;
static struct platform_device platform;
static u8 tpd_cdev_storage[0xde0];
static u8 *tpd_cdev = tpd_cdev_storage;

static enum call_id calls[MAX_CALLS];
static size_t call_count;
static const char *alloc_format;
static unsigned int alloc_flags;
static int alloc_max_active;
static const char *alloc_name;
static struct workqueue_struct *alloc_result;
static struct timer_list *timer_arg;
static void (*timer_fn_arg)(struct timer_list *);
static unsigned int timer_flags_arg;
static struct lock_class_key *timer_key_arg;
static const char *timer_name_arg;
static struct wakeup_source *wakeup_arg;
static struct completion *completion_arg;
static struct delayed_work *cancel_arg;
static struct workqueue_struct *flush_arg;
static struct workqueue_struct *destroy_arg;

static void record_call(enum call_id id)
{
	if (call_count < MAX_CALLS)
		calls[call_count] = id;
	call_count++;
}

static struct workqueue_struct *alloc_workqueue(const char *format,
						unsigned int flags,
						int max_active,
						const char *name)
{
	record_call(CALL_ALLOC);
	alloc_format = format;
	alloc_flags = flags;
	alloc_max_active = max_active;
	alloc_name = name;
	return alloc_result;
}

static void delayed_work_timer_fn(struct timer_list *timer)
{
	(void)timer;
}

static void init_timer_key(struct timer_list *timer,
			   void (*function)(struct timer_list *),
			   unsigned int flags,
			   struct lock_class_key *key,
			   const char *name)
{
	record_call(CALL_TIMER);
	timer_arg = timer;
	timer_fn_arg = function;
	timer_flags_arg = flags;
	timer_key_arg = key;
	timer_name_arg = name;
}

static void wakeup_source_add(struct wakeup_source *source)
{
	record_call(CALL_WAKEUP_ADD);
	wakeup_arg = source;
}

static void test_init_completion(struct completion *completion)
{
	record_call(CALL_COMPLETION);
	completion_arg = completion;
	completion->done = 0;
}

static bool cancel_delayed_work_sync(struct delayed_work *work)
{
	record_call(CALL_CANCEL);
	cancel_arg = work;
	return true;
}

static void _flush_workqueue(struct workqueue_struct *wq)
{
	record_call(CALL_FLUSH);
	flush_arg = wq;
}

static void destroy_workqueue(struct workqueue_struct *wq)
{
	record_call(CALL_DESTROY);
	destroy_arg = wq;
}

static void wakeup_source_remove(struct wakeup_source *source)
{
	record_call(CALL_WAKEUP_REMOVE);
	wakeup_arg = source;
}

#define barrier_data(pointer) do { (void)(pointer); } while (0)
#define WRITE_ONCE(location, value) ((location) = (value))
#define init_completion(completion) test_init_completion(completion)

void ufp_single_tap_work(struct work_struct *work);

#include "../../../curated/zte_tpd/ufp_mac_init.c"
#include "../../../curated/zte_tpd/ufp_mac_exit.c"
#include "../../../curated/zte_tpd/ufp_single_tap_work.c"

static void set_platform_slot(struct platform_device *pdev)
{
	memcpy(tpd_cdev_storage + 0xdd0, &pdev, sizeof(pdev));
}

static void reset_state(void)
{
	memset(&ufp_tp_ops, 0xa5, sizeof(ufp_tp_ops));
	memset(tpd_cdev_storage, 0, sizeof(tpd_cdev_storage));
	memset(calls, 0, sizeof(calls));
	call_count = 0;
	alloc_format = NULL;
	alloc_flags = 0;
	alloc_max_active = 0;
	alloc_name = NULL;
	alloc_result = &workqueue;
	timer_arg = NULL;
	timer_fn_arg = NULL;
	timer_flags_arg = 0;
	timer_key_arg = (struct lock_class_key *)(uintptr_t)1;
	timer_name_arg = (const char *)(uintptr_t)1;
	wakeup_arg = NULL;
	completion_arg = NULL;
	cancel_arg = NULL;
	flush_arg = NULL;
	destroy_arg = NULL;
	set_platform_slot(&platform);
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: requirement failed: %s\n", \
			__func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_init_return_zero(void)
{
	reset_state();
	REQUIRE(ufp_mac_init() == 0);
	return true;
}

static bool test_alloc_format(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(strcmp(alloc_format, "%s") == 0);
	REQUIRE(strcmp(alloc_name, "single_tap_cancel") == 0);
	return true;
}

static bool test_alloc_flags(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(alloc_flags == 0x6000a);
	return true;
}

static bool test_alloc_max_active(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(alloc_max_active == 1);
	return true;
}

static bool test_work_data(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.single_tap_work.work_data == 0xfffffffe00000UL);
	return true;
}

static bool test_work_list_next(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.single_tap_work.work_entry.next ==
		&ufp_tp_ops.single_tap_work.work_entry);
	return true;
}

static bool test_work_list_prev(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.single_tap_work.work_entry.prev ==
		&ufp_tp_ops.single_tap_work.work_entry);
	return true;
}

static bool test_work_callback(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.single_tap_work.work_func == ufp_single_tap_work);
	return true;
}

static bool test_workqueue_store(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.single_tap_work.wq == &workqueue);
	return true;
}

static bool test_timer_pointer(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(timer_arg ==
		(struct timer_list *)ufp_tp_ops.single_tap_work.timer);
	return true;
}

static bool test_timer_callback(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(timer_fn_arg == delayed_work_timer_fn);
	return true;
}

static bool test_timer_flags(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(timer_flags_arg == 0x200000);
	return true;
}

static bool test_timer_lock_metadata(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(timer_key_arg == NULL);
	REQUIRE(timer_name_arg == NULL);
	return true;
}

static bool test_pending_zero(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.single_tap_pending == 0);
	return true;
}

static bool test_wakeup_add(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(wakeup_arg == &tp_wakeup);
	REQUIRE(calls[2] == CALL_WAKEUP_ADD);
	return true;
}

static bool test_completion_init(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(completion_arg == &ufp_tp_ops.gesture_complete);
	REQUIRE(ufp_tp_ops.gesture_complete.done == 0);
	return true;
}

static bool test_flags_zero(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.field_a0 == 0);
	REQUIRE(ufp_tp_ops.field_a1 == 0);
	REQUIRE(ufp_tp_ops.field_a2 == 0);
	return true;
}

static bool test_pdev_copy(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.pdev == &platform);
	return true;
}

static bool test_pdev_preserved_when_slot_null(void)
{
	struct platform_device previous = { 0 };

	reset_state();
	ufp_tp_ops.pdev = &previous;
	set_platform_slot(NULL);
	(void)ufp_mac_init();
	REQUIRE(ufp_tp_ops.pdev == &previous);
	return true;
}

static bool test_allocation_failure_preserved(void)
{
	reset_state();
	alloc_result = NULL;
	REQUIRE(ufp_mac_init() == 0);
	REQUIRE(ufp_tp_ops.single_tap_work.wq == NULL);
	REQUIRE(call_count == 4);
	return true;
}

static bool test_init_order(void)
{
	reset_state();
	(void)ufp_mac_init();
	REQUIRE(call_count == 4);
	REQUIRE(calls[0] == CALL_ALLOC);
	REQUIRE(calls[1] == CALL_TIMER);
	REQUIRE(calls[2] == CALL_WAKEUP_ADD);
	REQUIRE(calls[3] == CALL_COMPLETION);
	return true;
}

static bool test_single_tap_clear(void)
{
	struct work_struct work = { 0 };

	reset_state();
	ufp_tp_ops.single_tap_pending = 7;
	ufp_single_tap_work(&work);
	REQUIRE(ufp_tp_ops.single_tap_pending == 0);
	return true;
}

static bool test_single_tap_null_work(void)
{
	reset_state();
	ufp_tp_ops.single_tap_pending = -1;
	ufp_single_tap_work(NULL);
	REQUIRE(ufp_tp_ops.single_tap_pending == 0);
	return true;
}

static void prepare_exit(void)
{
	reset_state();
	call_count = 0;
	memset(calls, 0, sizeof(calls));
	ufp_tp_ops.pdev = &platform;
	ufp_tp_ops.single_tap_work.wq = &workqueue;
}

static bool test_exit_cancel(void)
{
	prepare_exit();
	ufp_mac_exit();
	REQUIRE(cancel_arg ==
		(struct delayed_work *)&ufp_tp_ops.single_tap_work);
	return true;
}

static bool test_exit_flush(void)
{
	prepare_exit();
	ufp_mac_exit();
	REQUIRE(flush_arg == &workqueue);
	return true;
}

static bool test_exit_destroy(void)
{
	prepare_exit();
	ufp_mac_exit();
	REQUIRE(destroy_arg == &workqueue);
	return true;
}

static bool test_exit_wakeup(void)
{
	prepare_exit();
	ufp_mac_exit();
	REQUIRE(wakeup_arg == &tp_wakeup);
	REQUIRE(calls[3] == CALL_WAKEUP_REMOVE);
	return true;
}

static bool test_exit_pdev_clear(void)
{
	prepare_exit();
	ufp_mac_exit();
	REQUIRE(ufp_tp_ops.pdev == NULL);
	return true;
}

static bool test_exit_order(void)
{
	prepare_exit();
	ufp_mac_exit();
	REQUIRE(call_count == 4);
	REQUIRE(calls[0] == CALL_CANCEL);
	REQUIRE(calls[1] == CALL_FLUSH);
	REQUIRE(calls[2] == CALL_DESTROY);
	REQUIRE(calls[3] == CALL_WAKEUP_REMOVE);
	return true;
}

static bool test_exit_null_workqueue(void)
{
	prepare_exit();
	ufp_tp_ops.single_tap_work.wq = NULL;
	ufp_mac_exit();
	REQUIRE(flush_arg == NULL);
	REQUIRE(destroy_arg == NULL);
	REQUIRE(ufp_tp_ops.pdev == NULL);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "init_return_zero", test_init_return_zero },
		{ "alloc_format", test_alloc_format },
		{ "alloc_flags", test_alloc_flags },
		{ "alloc_max_active", test_alloc_max_active },
		{ "work_data", test_work_data },
		{ "work_list_next", test_work_list_next },
		{ "work_list_prev", test_work_list_prev },
		{ "work_callback", test_work_callback },
		{ "workqueue_store", test_workqueue_store },
		{ "timer_pointer", test_timer_pointer },
		{ "timer_callback", test_timer_callback },
		{ "timer_flags", test_timer_flags },
		{ "timer_lock_metadata", test_timer_lock_metadata },
		{ "pending_zero", test_pending_zero },
		{ "wakeup_add", test_wakeup_add },
		{ "completion_init", test_completion_init },
		{ "flags_zero", test_flags_zero },
		{ "pdev_copy", test_pdev_copy },
		{ "pdev_preserved_when_slot_null",
		  test_pdev_preserved_when_slot_null },
		{ "allocation_failure_preserved",
		  test_allocation_failure_preserved },
		{ "init_order", test_init_order },
		{ "single_tap_clear", test_single_tap_clear },
		{ "single_tap_null_work", test_single_tap_null_work },
		{ "exit_cancel", test_exit_cancel },
		{ "exit_flush", test_exit_flush },
		{ "exit_destroy", test_exit_destroy },
		{ "exit_wakeup", test_exit_wakeup },
		{ "exit_pdev_clear", test_exit_pdev_clear },
		{ "exit_order", test_exit_order },
		{ "exit_null_workqueue", test_exit_null_workqueue },
	};
	size_t passed = 0;
	size_t index;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (tests[index].run()) {
			printf("PASS %s\n", tests[index].name);
			passed++;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	printf("SUMMARY %zu/%zu passed\n", passed,
	       sizeof(tests) / sizeof(tests[0]));
	return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
