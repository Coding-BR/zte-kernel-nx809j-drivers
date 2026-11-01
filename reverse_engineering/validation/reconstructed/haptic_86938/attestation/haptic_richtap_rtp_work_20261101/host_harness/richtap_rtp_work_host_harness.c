#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "/candidate.c"

enum event_id {
	EVENT_START = 1,
	EVENT_DATA,
	EVENT_AFS,
	EVENT_UPDATE,
	EVENT_GLB_STATE,
	EVENT_IRQ_CLEAR,
	EVENT_AEI,
};

struct fixture {
	struct aw_haptic *aw;
	struct richtap_fifo_node *nodes[4];
	size_t node_count;
};

static u32 start_result;
static u8 afs_result;
static u8 global_state_result;
static unsigned int sleep_count;
static unsigned int update_count;
static unsigned int event_count;
static unsigned int events[16];
static u32 expected_data_length;

static void event(unsigned int value)
{
	assert(event_count < sizeof(events) / sizeof(events[0]));
	events[event_count++] = value;
}

u32 richtap_rtp_start(struct aw_haptic *aw)
{
	assert(aw != NULL);
	event(EVENT_START);
	return start_result;
}

void richtap_update_fifo_data(struct aw_haptic *aw, u32 length)
{
	assert(aw != NULL);
	assert(length == (aw->rtp_len >> 2));
	++update_count;
	event(EVENT_UPDATE);
}

void msleep(unsigned int milliseconds)
{
	assert(milliseconds == 1);
	++sleep_count;
}

static void set_rtp_data(struct aw_haptic *aw, u8 *data, u32 length)
{
	assert(aw != NULL);
	assert(data == aw->rtp_data);
	assert(length == expected_data_length);
	event(EVENT_DATA);
}

static void irq_clear(struct aw_haptic *aw)
{
	assert(aw != NULL);
	event(EVENT_IRQ_CLEAR);
}

static void set_rtp_aei(struct aw_haptic *aw, u8 enable)
{
	assert(aw != NULL);
	assert(enable == 1);
	event(EVENT_AEI);
}

static u8 get_glb_state(struct aw_haptic *aw)
{
	assert(aw != NULL);
	event(EVENT_GLB_STATE);
	return global_state_result;
}

static u8 rtp_get_fifo_afs(struct aw_haptic *aw)
{
	assert(aw != NULL);
	event(EVENT_AFS);
	return afs_result;
}

static void reset_observations(void)
{
	sleep_count = 0;
	update_count = 0;
	event_count = 0;
	memset(events, 0, sizeof(events));
}

static struct fixture fixture_create(u32 length)
{
	struct fixture f = {0};
	struct aw_haptic_func *func;

	f.aw = calloc(1, sizeof(*f.aw));
	func = calloc(1, sizeof(*func));
	assert(f.aw != NULL && func != NULL);
	f.aw->func = func;
	f.aw->rtp_len = length;
	f.aw->rtp_data = calloc(length ? length : 1, 1);
	assert(f.aw->rtp_data != NULL);
	func->set_rtp_data = set_rtp_data;
	func->irq_clear = irq_clear;
	func->set_rtp_aei = set_rtp_aei;
	func->get_glb_state = get_glb_state;
	func->rtp_get_fifo_afs = rtp_get_fifo_afs;
	return f;
}

static struct richtap_fifo_node *fixture_node(struct fixture *f, u8 state,
						       s16 size, u8 seed)
{
	size_t capacity = size > 0 ? (size_t)size : 1;
	struct richtap_fifo_node *node;

	assert(f->node_count < sizeof(f->nodes) / sizeof(f->nodes[0]));
	node = calloc(1, sizeof(*node) + capacity);
	assert(node != NULL);
	node->state = state;
	node->data_size = size;
	for (size_t i = 0; i < capacity; ++i)
		node->payload[i] = (u8)(seed + i);
	if (f->node_count != 0)
		f->nodes[f->node_count - 1]->next = node;
	f->nodes[f->node_count++] = node;
	if (f->node_count == 1)
		f->aw->rtp_fifo_head = node;
	return node;
}

static void fixture_destroy(struct fixture *f)
{
	for (size_t i = 0; i < f->node_count; ++i)
		free(f->nodes[i]);
	free(f->aw->rtp_data);
	free(f->aw->func);
	free(f->aw);
}

static void expect_events(const unsigned int *expected, size_t count)
{
	assert(event_count == count);
	for (size_t i = 0; i < count; ++i)
		assert(events[i] == expected[i]);
}

static void test_full_drain_and_callback_order(void)
{
	struct fixture f = fixture_create(6);
	struct richtap_fifo_node *first = fixture_node(&f, 'U', 2, 0x10);
	struct richtap_fifo_node *second = fixture_node(&f, 'U', 4, 0x20);
	struct richtap_fifo_node *empty = fixture_node(&f, 0xaa, 0, 0);
	const unsigned int expected[] = {
		EVENT_START, EVENT_DATA, EVENT_AEI, EVENT_IRQ_CLEAR,
	};

	first->next = second;
	second->next = empty;
	start_result = 1;
	expected_data_length = 6;
	reset_observations();
	richtap_rtp_work((struct work_struct *)f.aw->rtp_work_storage);
	assert(memcmp(f.aw->rtp_data, "\x10\x11\x20\x21\x22\x23", 6) == 0);
	assert(first->state == 0xff && first->data_size == 0);
	assert(second->state == 0xff && second->data_size == 0);
	assert(f.aw->rtp_ptr == empty);
	assert(f.aw->rtp_cnt == 0 && f.aw->rtp_loop == 1);
	assert(f.aw->rtp_work_state == 0);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	fixture_destroy(&f);
}

static void test_partial_copy_preserves_fifo_cursor(void)
{
	struct fixture f = fixture_create(4);
	struct richtap_fifo_node *node = fixture_node(&f, 'U', 8, 0x30);
	const unsigned int expected[] = { EVENT_START, EVENT_DATA,
					 EVENT_AEI, EVENT_IRQ_CLEAR };

	start_result = 1;
	expected_data_length = 4;
	reset_observations();
	richtap_rtp_work((struct work_struct *)f.aw->rtp_work_storage);
	assert(memcmp(f.aw->rtp_data, "\x30\x31\x32\x33", 4) == 0);
	assert(node->state == 'U' && node->data_size == 8);
	assert(f.aw->rtp_ptr == node);
	assert(f.aw->rtp_cnt == 4);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	fixture_destroy(&f);
}

static void test_empty_fifo_and_start_failure(void)
{
	struct fixture f = fixture_create(4);
	fixture_node(&f, 0xaa, 0, 0);
	const unsigned int expected[] = { EVENT_START };

	start_result = 0;
	expected_data_length = 0;
	reset_observations();
	richtap_rtp_work((struct work_struct *)f.aw->rtp_work_storage);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	assert(f.aw->rtp_loop == 0);
	fixture_destroy(&f);
}

static void test_invalid_state_retry_bound(void)
{
	struct fixture f = fixture_create(4);
	struct richtap_fifo_node *node = fixture_node(&f, 'X', 0, 0);

	start_result = 0;
	expected_data_length = 0;
	reset_observations();
	richtap_rtp_work((struct work_struct *)f.aw->rtp_work_storage);
	assert(sleep_count == 31);
	assert(f.aw->rtp_ptr == node);
	assert(event_count == 1 && events[0] == EVENT_START);
	fixture_destroy(&f);
}

static void test_loop_refill_and_callback_order(void)
{
	struct fixture f = fixture_create(4);
	struct richtap_fifo_node *node = fixture_node(&f, 'U', 8, 0x40);
	const unsigned int expected[] = {
		EVENT_START, EVENT_DATA, EVENT_AFS, EVENT_UPDATE,
		EVENT_GLB_STATE, EVENT_IRQ_CLEAR, EVENT_AEI,
	};

	f.aw->field_11 = 1;
	f.aw->field_17 = 2;
	start_result = 1;
	afs_result = 0;
	global_state_result = 0x10;
	expected_data_length = 4;
	reset_observations();
	richtap_rtp_work((struct work_struct *)f.aw->rtp_work_storage);
	assert(node->state == 'U' && f.aw->rtp_ptr == node);
	assert(update_count == 1);
	assert(f.aw->rtp_loop == 1);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	fixture_destroy(&f);
}

static void test_loop_stops_when_fifo_almost_full(void)
{
	struct fixture f = fixture_create(4);
	fixture_node(&f, 'U', 8, 0x50);
	const unsigned int expected[] = {
		EVENT_START, EVENT_DATA, EVENT_AFS, EVENT_IRQ_CLEAR, EVENT_AEI,
	};

	f.aw->field_11 = 1;
	f.aw->field_17 = 2;
	start_result = 1;
	afs_result = 1;
	expected_data_length = 4;
	reset_observations();
	richtap_rtp_work((struct work_struct *)f.aw->rtp_work_storage);
	assert(update_count == 0);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	fixture_destroy(&f);
}

int main(void)
{
	test_full_drain_and_callback_order();
	test_partial_copy_preserves_fifo_cursor();
	test_empty_fifo_and_start_failure();
	test_invalid_state_retry_bound();
	test_loop_refill_and_callback_order();
	test_loop_stops_when_fifo_almost_full();
	puts("PASS: 6 worker paths, FIFO mutations, bounded retries, and callback order");
	return 0;
}
