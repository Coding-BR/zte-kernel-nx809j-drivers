#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct workqueue_struct {
	unsigned int marker;
};

struct wakeup_source {
	unsigned int marker;
};

struct delayed_work {
	uint8_t reserved_00[0x68];
	struct workqueue_struct *wq;
};

struct ufp_tp_ops_struct {
	void *pdev;
	uint8_t reserved_08[0x08];
	struct delayed_work single_tap_work;
};

enum teardown_event {
	EVENT_CANCEL = 1,
	EVENT_FLUSH,
	EVENT_DESTROY,
	EVENT_WAKEUP_REMOVE,
};

static struct ufp_tp_ops_struct ufp_tp_ops;
static struct wakeup_source tp_wakeup;
static struct workqueue_struct workqueue;
static unsigned int events[4];
static unsigned int event_count;
static unsigned int failures;

_Static_assert(sizeof(struct delayed_work) == 0x70,
	       "recovered delayed_work layout");
_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_work) == 0x10,
	       "recovered delayed-work offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_work.wq) == 0x78,
	       "recovered workqueue offset");

static void record_event(enum teardown_event event)
{
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = event;
	else
		failures++;
}

int cancel_delayed_work_sync(struct delayed_work *work)
{
	if (work != &ufp_tp_ops.single_tap_work)
		failures++;
	record_event(EVENT_CANCEL);
	return 0;
}

void _flush_workqueue(struct workqueue_struct *wq)
{
	if (wq != ufp_tp_ops.single_tap_work.wq)
		failures++;
	record_event(EVENT_FLUSH);
}

void destroy_workqueue(struct workqueue_struct *wq)
{
	if (wq != ufp_tp_ops.single_tap_work.wq)
		failures++;
	record_event(EVENT_DESTROY);
}

void wakeup_source_remove(struct wakeup_source *source)
{
	if (source != &tp_wakeup)
		failures++;
	record_event(EVENT_WAKEUP_REMOVE);
}

#include "../../../reconstructed/zte_tpd/ufp_mac_exit.c"

static int run_case(const char *name, struct workqueue_struct *wq)
{
	static const unsigned int expected[] = {
		EVENT_CANCEL, EVENT_FLUSH, EVENT_DESTROY, EVENT_WAKEUP_REMOVE,
	};
	struct ufp_tp_ops_struct before;
	uintptr_t pdev_marker = 0x1122334455667788ULL;

	memset(&ufp_tp_ops, 0x5a, sizeof(ufp_tp_ops));
	ufp_tp_ops.pdev = (void *)pdev_marker;
	ufp_tp_ops.single_tap_work.wq = wq;
	memcpy(&before, &ufp_tp_ops, sizeof(before));
	event_count = 0;
	failures = 0;

	ufp_mac_exit();

	if (failures || event_count != 4 ||
	    memcmp(events, expected, sizeof(expected)) != 0) {
		fprintf(stderr, "%s: teardown order or arguments differ from stock\n",
			name);
		return 1;
	}
	if (ufp_tp_ops.pdev != NULL) {
		fprintf(stderr, "%s: platform-device field was not cleared\n", name);
		return 1;
	}
	if (memcmp(ufp_tp_ops.reserved_08, before.reserved_08,
		   sizeof(ufp_tp_ops.reserved_08)) != 0 ||
	    memcmp(&ufp_tp_ops.single_tap_work, &before.single_tap_work,
		   sizeof(ufp_tp_ops.single_tap_work)) != 0) {
		fprintf(stderr, "%s: teardown changed data outside pdev\n", name);
		return 1;
	}
	return 0;
}

int main(void)
{
	if (run_case("allocated-workqueue", &workqueue) ||
	    run_case("null-workqueue", NULL))
		return 1;
	puts("PASS ufp_mac_exit host tests (2 cases)");
	return 0;
}
