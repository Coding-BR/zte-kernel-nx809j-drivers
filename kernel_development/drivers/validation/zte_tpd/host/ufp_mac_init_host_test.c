#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;

struct list_head {
	struct list_head *next;
	struct list_head *prev;
};

struct work_struct {
	unsigned long marker;
};

typedef void (*work_func_t)(struct work_struct *work);

struct workqueue_struct {
	unsigned int marker;
};

struct timer_list {
	u8 opaque[0x48];
};

struct lock_class_key {
	unsigned int marker;
};

struct completion {
	u8 opaque[0x20];
};

struct platform_device {
	unsigned int marker;
};

struct wakeup_source {
	unsigned int marker;
};

struct syna_delayed_work_layout {
	unsigned long work_data;
	struct list_head work_entry;
	work_func_t work_func;
	u8 timer[0x48];
	struct workqueue_struct *wq;
};

struct ufp_tp_ops_struct {
	union {
		struct {
			struct platform_device *pdev;
			union {
				int single_tap_pending;
				int field_8;
			};
			union {
				int field_0c;
				int field_c;
			};
			struct syna_delayed_work_layout single_tap_work;
		};
		struct {
			u8 reserved_0000[0x80];
			struct completion gesture_complete;
			u8 field_a0;
			u8 field_a1;
			u8 field_a2;
		};
		u8 opaque[0xa8];
	};
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
_Static_assert(offsetof(struct ufp_tp_ops_struct, pdev) == 0x00,
		       "platform device offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_pending) == 0x08,
		       "pending flag offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_work) == 0x10,
		       "delayed work offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, gesture_complete) == 0x80,
		       "completion offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, field_a0) == 0xa0,
		       "field a0 offset");
_Static_assert(sizeof(struct ufp_tp_ops_struct) == 0xa8, "ops size");

enum event {
	EVENT_ALLOC = 1,
	EVENT_TIMER,
	EVENT_WAKEUP,
	EVENT_COMPLETION,
};

static struct ufp_tp_ops_struct ufp_tp_ops;
static struct wakeup_source tp_wakeup;
static uintptr_t tpd_cdev;
static struct workqueue_struct allocated_workqueue;
static struct workqueue_struct *allocation_result;
static struct timer_list *observed_timer;
static void (*observed_timer_fn)(struct timer_list *timer);
static unsigned int observed_timer_flags;
static struct lock_class_key *observed_timer_key;
static const char *observed_timer_name;
static struct wakeup_source *observed_wakeup;
static struct completion *observed_completion;
static unsigned int events[4];
static unsigned int event_count;
static unsigned int failures;

#define barrier_data(pointer) do { (void)(pointer); } while (0)
#define WRITE_ONCE(field, value) ((field) = (value))

static void add_event(enum event event)
{
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = event;
	else
		failures++;
}

struct workqueue_struct *alloc_workqueue(const char *format,
					 unsigned int flags, int max_active,
					 const char *name)
{
	if (strcmp(format, "%s") != 0 || flags != 0x6000a ||
	    max_active != 1 || strcmp(name, "single_tap_cancel") != 0)
		failures++;
	add_event(EVENT_ALLOC);
	return allocation_result;
}

void delayed_work_timer_fn(struct timer_list *timer)
{
	(void)timer;
}

void ufp_single_tap_work(struct work_struct *work)
{
	(void)work;
}

void init_timer_key(struct timer_list *timer,
		    void (*callback)(struct timer_list *), unsigned int flags,
		    struct lock_class_key *key, const char *name)
{
	observed_timer = timer;
	observed_timer_fn = callback;
	observed_timer_flags = flags;
	observed_timer_key = key;
	observed_timer_name = name;
	add_event(EVENT_TIMER);
}

void wakeup_source_add(struct wakeup_source *source)
{
	observed_wakeup = source;
	add_event(EVENT_WAKEUP);
}

void init_completion(struct completion *completion)
{
	observed_completion = completion;
	memset(completion, 0, sizeof(*completion));
	add_event(EVENT_COMPLETION);
}

#include "../../../reconstructed/zte_tpd/ufp_mac_init.c"

union cdev_fixture {
	max_align_t alignment;
	u8 bytes[0xde0];
};

static void expect_unsigned(const char *name, unsigned long actual,
			    unsigned long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got 0x%lx expected 0x%lx\n", name, actual,
			expected);
		failures++;
	}
}

static void expect_pointer(const char *name, const void *actual,
			   const void *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name, actual, expected);
		failures++;
	}
}

static void expect_events(const unsigned int *expected, unsigned int count)
{
	unsigned int index;

	expect_unsigned("event count", event_count, count);
	for (index = 0; index < count && index < event_count; index++)
		expect_unsigned("event order", events[index], expected[index]);
}

static void reset_fixture(union cdev_fixture *cdev,
			  struct workqueue_struct *workqueue,
			  struct platform_device *initial_pdev,
			  struct platform_device *cdev_pdev)
{
	memset(&ufp_tp_ops, 0xa5, sizeof(ufp_tp_ops));
	memset(cdev, 0, sizeof(*cdev));
	ufp_tp_ops.pdev = initial_pdev;
	ufp_tp_ops.single_tap_pending = -1;
	ufp_tp_ops.field_a0 = 0xa5;
	ufp_tp_ops.field_a1 = 0xa5;
	ufp_tp_ops.field_a2 = 0xa5;
	allocation_result = workqueue;
	observed_timer = NULL;
	observed_timer_fn = NULL;
	observed_timer_flags = 0;
	observed_timer_key = (struct lock_class_key *)(uintptr_t)1;
	observed_timer_name = (const char *)(uintptr_t)1;
	observed_wakeup = NULL;
	observed_completion = NULL;
	event_count = 0;
	memset(events, 0, sizeof(events));
	*(struct platform_device **)(cdev->bytes + 0xdd0) = cdev_pdev;
	tpd_cdev = (uintptr_t)cdev->bytes;
}

static void expect_common_state(struct workqueue_struct *expected_wq,
				struct platform_device *expected_pdev)
{
	static const unsigned int expected_events[] = {
		EVENT_ALLOC, EVENT_TIMER, EVENT_WAKEUP, EVENT_COMPLETION,
	};
	struct syna_delayed_work_layout *work = &ufp_tp_ops.single_tap_work;

	expect_events(expected_events,
		      sizeof(expected_events) / sizeof(expected_events[0]));
	expect_pointer("workqueue", work->wq, expected_wq);
	expect_unsigned("work data", work->work_data, 0xfffffffe00000UL);
	expect_pointer("work list next", work->work_entry.next, &work->work_entry);
	expect_pointer("work list prev", work->work_entry.prev, &work->work_entry);
	expect_pointer("work callback", (const void *)work->work_func,
		       (const void *)ufp_single_tap_work);
	expect_pointer("timer address", observed_timer, (struct timer_list *)work->timer);
	expect_pointer("timer callback", (const void *)observed_timer_fn,
		       (const void *)delayed_work_timer_fn);
	expect_unsigned("timer flags", observed_timer_flags, 0x200000);
	expect_pointer("timer key", observed_timer_key, NULL);
	expect_pointer("timer name", observed_timer_name, NULL);
	expect_unsigned("single tap pending", ufp_tp_ops.single_tap_pending, 0);
	expect_pointer("wakeup source", observed_wakeup, &tp_wakeup);
	expect_pointer("completion", observed_completion, &ufp_tp_ops.gesture_complete);
	expect_unsigned("field a0", ufp_tp_ops.field_a0, 0);
	expect_unsigned("field a1", ufp_tp_ops.field_a1, 0);
	expect_unsigned("field a2", ufp_tp_ops.field_a2, 0);
	expect_pointer("platform device", ufp_tp_ops.pdev, expected_pdev);
}

static void test_present_platform_device(void)
{
	union cdev_fixture cdev;
	struct platform_device old_pdev = { .marker = 1 };
	struct platform_device cdev_pdev = { .marker = 2 };

	reset_fixture(&cdev, &allocated_workqueue, &old_pdev, &cdev_pdev);
	expect_unsigned("present result", ufp_mac_init(), 0);
	expect_common_state(&allocated_workqueue, &cdev_pdev);
}

static void test_absent_platform_device_preserves_existing_value(void)
{
	union cdev_fixture cdev;
	struct platform_device old_pdev = { .marker = 3 };

	reset_fixture(&cdev, &allocated_workqueue, &old_pdev, NULL);
	expect_unsigned("absent result", ufp_mac_init(), 0);
	expect_common_state(&allocated_workqueue, &old_pdev);
}

static void test_null_workqueue_is_retained(void)
{
	union cdev_fixture cdev;
	struct platform_device cdev_pdev = { .marker = 4 };

	reset_fixture(&cdev, NULL, NULL, &cdev_pdev);
	expect_unsigned("null workqueue result", ufp_mac_init(), 0);
	expect_common_state(NULL, &cdev_pdev);
}

int main(void)
{
	test_present_platform_device();
	test_absent_platform_device_preserves_existing_value();
	test_null_workqueue_is_retained();
	if (failures != 0)
		return 1;
	puts("PASS ufp_mac_init host tests (3 cases)");
	return 0;
}
