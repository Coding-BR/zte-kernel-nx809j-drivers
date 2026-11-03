#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "linux/compiler.h"
#include "linux/types.h"
#include "haptic_86938_internal.h"

struct richtap_fifo_node {
	u8 state;
	u8 reserved_01;
	s16 data_size;
	u32 reserved_04;
	struct richtap_fifo_node *next;
	u8 reserved_10[8];
	u8 payload[HAPTIC_RICHTAP_FIFO_PAYLOAD_BYTES];
};

struct aw_haptic_func {
	u8 reserved_00[0xd0];
	void (*set_rtp_data)(struct aw_haptic *aw, u8 *data, u32 length);
};

struct aw_haptic {
	u8 reserved_000[0x5c8];
	struct aw_haptic_func *func;
	u8 reserved_5d0[0x38];
	u8 *rtp_data;
	struct richtap_fifo_node *rtp_fifo_head;
	u8 reserved_618[8];
	struct richtap_fifo_node *volatile rtp_ptr;
	u8 reserved_628[0x90];
	volatile s16 rtp_cnt;
	u8 reserved_6ba[2];
	u32 rtp_loop;
};

_Static_assert(sizeof(struct richtap_fifo_node) == 0x400, "node stride");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_fifo_head) == 0x610,
	       "head offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_ptr) == 0x620,
	       "cursor offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_cnt) == 0x6b8,
	       "count offset");

bool richtap_update_fifo_data(struct aw_haptic *aw, u32 length);

static struct richtap_fifo_node *pool;
static struct aw_haptic aw;
static struct aw_haptic_func funcs;
static u8 output[HAPTIC_RICHTAP_RTP_BUFFER_BYTES];
static unsigned int callback_count;
static u32 callback_length;
static unsigned int failures;

#define CHECK(test) do { \
	if (!(test)) { \
		fprintf(stderr, "FAIL line %d: %s\n", __LINE__, #test); \
		failures++; \
	} \
} while (0)

static void capture(struct aw_haptic *actual, u8 *data, u32 length)
{
	CHECK(actual == &aw);
	CHECK(data == output);
	callback_count++;
	callback_length = length;
}

void haptic_lifetime_richtap_fifo_reset(void *state)
{
	struct aw_haptic *h = state;
	struct richtap_fifo_node *head = READ_ONCE(h->rtp_fifo_head);

	if (haptic_richtap_fifo_head_valid(head)) {
		WRITE_ONCE(head->state, (u8)0xff);
		WRITE_ONCE(head->data_size, 0);
		WRITE_ONCE(h->rtp_ptr, head);
	} else {
		WRITE_ONCE(h->rtp_ptr, (struct richtap_fifo_node *)0);
	}
	WRITE_ONCE(h->rtp_cnt, 0);
	WRITE_ONCE(h->rtp_loop, 0);
}

void usleep_range_state(unsigned long minimum, unsigned long maximum,
			unsigned int state)
{
	CHECK(minimum == 1000UL && maximum == 1000UL && state == 2U);
}

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static void fresh(u8 state, s16 size)
{
	memset(&aw, 0, sizeof(aw));
	memset(&funcs, 0, sizeof(funcs));
	memset(output, 0xa5, sizeof(output));
	memset(pool, 0, HAPTIC_RICHTAP_FIFO_BYTES);
	for (unsigned int i = 0; i < HAPTIC_RICHTAP_FIFO_NODE_COUNT; i++)
		pool[i].next = &pool[(i + 1U) % HAPTIC_RICHTAP_FIFO_NODE_COUNT];
	pool[0].state = state;
	pool[0].data_size = size;
	for (unsigned int i = 0; i < HAPTIC_RICHTAP_FIFO_PAYLOAD_BYTES; i++)
		pool[0].payload[i] = (u8)(0x20U + i);
	funcs.set_rtp_data = capture;
	aw.func = &funcs;
	aw.rtp_data = output;
	aw.rtp_fifo_head = pool;
	aw.rtp_ptr = pool;
	aw.rtp_loop = 1;
	callback_count = 0;
	callback_length = UINT32_MAX;
}

static void expect_rejection(void)
{
	CHECK(!richtap_update_fifo_data(&aw, 1));
	CHECK(callback_count == 0);
	CHECK(aw.rtp_ptr == pool && aw.rtp_cnt == 0 && aw.rtp_loop == 0);
	CHECK(pool[0].state == 0xff && pool[0].data_size == 0);
}

int main(void)
{
	pool = aligned_alloc(HAPTIC_RICHTAP_FIFO_BYTES, HAPTIC_RICHTAP_FIFO_BYTES);
	if (!pool)
		return 2;
	CHECK(haptic_richtap_fifo_head_valid(pool));

	fresh('U', 5);
	aw.rtp_cnt = 2;
	CHECK(richtap_update_fifo_data(&aw, 2));
	CHECK(callback_count == 1 && callback_length == 2);
	CHECK(output[0] == pool[0].payload[2] && output[1] == pool[0].payload[3]);
	CHECK(aw.rtp_cnt == 4 && aw.rtp_ptr == pool);

	fresh('U', 3);
	pool[0].payload[0] = 0x31; pool[0].payload[1] = 0x32; pool[0].payload[2] = 0x33;
	pool[1].state = 'U'; pool[1].data_size = 4;
	memset(pool[1].payload, 0x50, 4);
	CHECK(richtap_update_fifo_data(&aw, 5));
	CHECK(callback_count == 1 && callback_length == 5);
	CHECK(output[0] == 0x31 && output[1] == 0x32 && output[2] == 0x33);
	CHECK(output[3] == 0x50 && output[4] == 0x50);
	CHECK(pool[0].state == 0xff && pool[0].data_size == 0);
	CHECK(aw.rtp_ptr == &pool[1] && aw.rtp_cnt == 2);

	fresh(0xff, 0);
	for (unsigned int i = 0; i < HAPTIC_RICHTAP_FIFO_NODE_COUNT; i++) {
		pool[i].state = 'U';
		pool[i].data_size = HAPTIC_RICHTAP_FIFO_PAYLOAD_BYTES;
		memset(pool[i].payload, (int)i, sizeof(pool[i].payload));
	}
	CHECK(richtap_update_fifo_data(&aw, HAPTIC_RICHTAP_RTP_BUFFER_BYTES));
	CHECK(callback_count == 1 && callback_length == HAPTIC_RICHTAP_RTP_BUFFER_BYTES);
	CHECK(output[0] == 0 && output[999] == 0 && output[1000] == 1);
	CHECK(output[15999] == 15);

	fresh(0xaa, 0);
	pool[15].state = 'U'; pool[15].data_size = 1; pool[15].payload[0] = 0x7b;
	aw.rtp_ptr = &pool[15];
	CHECK(richtap_update_fifo_data(&aw, 2));
	CHECK(callback_count == 1 && callback_length == 1 && output[0] == 0x7b);
	CHECK(aw.rtp_ptr == pool);

	fresh('U', 0);
	for (unsigned int i = 0; i < HAPTIC_RICHTAP_FIFO_NODE_COUNT; i++) {
		pool[i].state = 'U';
		pool[i].data_size = 0;
	}
	CHECK(richtap_update_fifo_data(&aw, 1));
	CHECK(callback_count == 1 && callback_length == 0 && aw.rtp_ptr == pool);

	fresh('U', 4);
	aw.rtp_ptr = (struct richtap_fifo_node *)((uintptr_t)pool + 1U);
	expect_rejection();
	fresh('U', 4);
	aw.rtp_ptr = (struct richtap_fifo_node *)((uintptr_t)pool - 0x400U);
	expect_rejection();
	fresh('U', 4);
	aw.rtp_ptr = (struct richtap_fifo_node *)((uintptr_t)pool + HAPTIC_RICHTAP_FIFO_BYTES);
	expect_rejection();

	fresh('U', 1001); expect_rejection();
	fresh('U', -1); expect_rejection();
	fresh('U', 5); aw.rtp_cnt = 6; expect_rejection();
	fresh('U', 5); aw.rtp_cnt = -1; expect_rejection();

	fresh('U', 1000); pool[0].next = &pool[2];
	CHECK(!richtap_update_fifo_data(&aw, 1001));
	CHECK(callback_count == 0 && aw.rtp_ptr == pool && aw.rtp_loop == 0);
	CHECK(output[0] == 0xa5);
	fresh('U', 1000);
	pool[0].next = (struct richtap_fifo_node *)(uintptr_t)0xdead0000U;
	CHECK(!richtap_update_fifo_data(&aw, 1001));
	CHECK(callback_count == 0 && aw.rtp_ptr == pool && aw.rtp_loop == 0);

	fresh('U', 1);
	CHECK(!richtap_update_fifo_data(&aw, HAPTIC_RICHTAP_RTP_BUFFER_BYTES + 1U));
	CHECK(callback_count == 0 && aw.rtp_ptr == pool && aw.rtp_loop == 0);

	free(pool);
	if (failures)
		return 1;
	puts("PASS: FIFO bounds, ring topology, wrap, malformed metadata, and bounded traversal");
	return 0;
}

