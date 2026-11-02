#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "linux/types.h"

struct aw_haptic;
struct richtap_fifo_node {
	u8 state;
	u8 reserved_01;
	s16 data_size;
	u32 reserved_04;
	struct richtap_fifo_node *next;
	u8 reserved_10[8];
	u8 payload[1001];
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
	u8 reserved_610[0x10];
	struct richtap_fifo_node * volatile rtp_ptr;
	u8 reserved_628[0x90];
	volatile s16 rtp_cnt;
	u8 reserved_6ba[2];
	u32 rtp_loop;
};
_Static_assert(__builtin_offsetof(struct aw_haptic, func) == 0x5c8, "func offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_data) == 0x608, "data offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_ptr) == 0x620, "fifo offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_cnt) == 0x6b8, "count offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, set_rtp_data) == 0xd0, "callback offset");

void richtap_update_fifo_data(struct aw_haptic *aw, u32 length);

static struct aw_haptic *expected_aw;
static u8 *expected_data;
static u32 observed_length;
static unsigned int callback_count;
static unsigned int sleep_count;
static unsigned int printk_count;
static unsigned int failures;

static void check(int ok, const char *expression, int line)
{
	if (!ok) {
		fprintf(stderr, "FAIL line %d: %s\n", line, expression);
		failures++;
	}
}
#define CHECK(expr) check(!!(expr), #expr, __LINE__)

static void capture_callback(struct aw_haptic *aw, u8 *data, u32 length)
{
	CHECK(aw == expected_aw);
	CHECK(data == expected_data);
	observed_length = length;
	callback_count++;
}

void usleep_range_state(unsigned long minimum, unsigned long maximum,
			unsigned int state)
{
	CHECK(minimum == 1000UL && maximum == 1000UL && state == 2U);
	sleep_count++;
}

int printk(const char *format, ...)
{
	char message[64];
	va_list args;
	va_start(args, format);
	(void)vsnprintf(message, sizeof(message), format, args);
	va_end(args);
	CHECK(strcmp(message, "\0016invalid data\n") == 0);
	printk_count++;
	return 0;
}

static void reset_observation(void)
{
	expected_aw = NULL;
	expected_data = NULL;
	observed_length = UINT32_MAX;
	callback_count = 0;
	sleep_count = 0;
	printk_count = 0;
}

static struct richtap_fifo_node *new_node(u8 state, s16 size, u8 seed)
{
	struct richtap_fifo_node *node = calloc(1, sizeof(*node));
	if (!node)
		return NULL;
	node->state = state;
	node->data_size = size;
	for (unsigned int i = 0; i < sizeof(node->payload); i++)
		node->payload[i] = (u8)(seed + i);
	return node;
}

static void init_aw(struct aw_haptic *aw, struct aw_haptic_func *func,
		    struct richtap_fifo_node *node, u8 *destination)
{
	memset(aw, 0, sizeof(*aw));
	memset(func, 0, sizeof(*func));
	func->set_rtp_data = capture_callback;
	aw->func = func;
	aw->rtp_ptr = node;
	aw->rtp_data = destination;
	expected_aw = aw;
	expected_data = destination;
}

static void test_partial_copy(void)
{
	struct aw_haptic aw;
	struct aw_haptic_func func;
	struct richtap_fifo_node *node = new_node('U', 5, 0x20);
	u8 destination[16] = { 0 };
	CHECK(node != NULL);
	if (!node) return;
	reset_observation();
	init_aw(&aw, &func, node, destination);
	aw.rtp_cnt = 2;
	richtap_update_fifo_data(&aw, 2);
	CHECK(callback_count == 1 && observed_length == 2);
	CHECK(destination[0] == node->payload[2] && destination[1] == node->payload[3]);
	CHECK(aw.rtp_cnt == 4 && aw.rtp_ptr == node);
	CHECK(node->state == 'U' && node->data_size == 5);
	CHECK(sleep_count == 0 && printk_count == 0 && failures == 0);
	free(node);
}

static void test_cross_node_drain(void)
{
	struct aw_haptic aw;
	struct aw_haptic_func func;
	struct richtap_fifo_node *first = new_node('U', 3, 0x30);
	struct richtap_fifo_node *second = new_node('U', 4, 0x50);
	u8 destination[16] = { 0 };
	CHECK(first != NULL && second != NULL);
	if (!first || !second) { free(first); free(second); return; }
	first->next = second;
	reset_observation();
	init_aw(&aw, &func, first, destination);
	aw.rtp_loop = 1;
	richtap_update_fifo_data(&aw, 5);
	CHECK(callback_count == 1 && observed_length == 5);
	CHECK(memcmp(destination, first->payload, 3) == 0);
	CHECK(memcmp(destination + 3, second->payload, 2) == 0);
	CHECK(first->state == 0xff && first->data_size == 0);
	CHECK(aw.rtp_ptr == second && aw.rtp_cnt == 2);
	CHECK(sleep_count == 0 && printk_count == 0 && failures == 0);
	free(first);
	free(second);
}

static void test_last_valid_offset(void)
{
	struct aw_haptic aw;
	struct aw_haptic_func func;
	struct richtap_fifo_node *node = new_node('U', 1001, 0x70);
	u8 destination[4] = { 0 };
	CHECK(node != NULL);
	if (!node) return;
	reset_observation();
	init_aw(&aw, &func, node, destination);
	aw.rtp_cnt = 1000;
	richtap_update_fifo_data(&aw, 1);
	CHECK(callback_count == 1 && observed_length == 1);
	CHECK(destination[0] == node->payload[1000]);
	CHECK(aw.rtp_cnt == 1001 && aw.rtp_ptr == node);
	CHECK(failures == 0);
	free(node);
}

static void test_empty_fifo(void)
{
	struct aw_haptic aw;
	struct aw_haptic_func func;
	struct richtap_fifo_node *node = new_node(0xaa, 0, 0);
	u8 destination[4] = { 0 };
	CHECK(node != NULL);
	if (!node) return;
	reset_observation();
	init_aw(&aw, &func, node, destination);
	aw.rtp_cnt = 7;
	richtap_update_fifo_data(&aw, 4);
	CHECK(callback_count == 1 && observed_length == 0);
	CHECK(aw.rtp_cnt == 7 && aw.rtp_ptr == node);
	CHECK(sleep_count == 0 && printk_count == 0 && failures == 0);
	free(node);
}

static void test_invalid_state_retries(void)
{
	struct aw_haptic aw;
	struct aw_haptic_func func;
	struct richtap_fifo_node *node = new_node('?', 0, 0);
	u8 destination[4] = { 0 };
	CHECK(node != NULL);
	if (!node) return;
	reset_observation();
	init_aw(&aw, &func, node, destination);
	aw.rtp_loop = 1;
	richtap_update_fifo_data(&aw, 4);
	CHECK(callback_count == 1 && observed_length == 0);
	CHECK(sleep_count == 3 && printk_count == 1);
	CHECK(failures == 0);
	free(node);
}

static void trigger_invalid_offset(void)
{
	struct aw_haptic aw;
	struct aw_haptic_func func;
	struct richtap_fifo_node *node = new_node('U', 1002, 0);
	u8 destination[4] = { 0 };
	if (!node) exit(2);
	init_aw(&aw, &func, node, destination);
	aw.rtp_cnt = 1001;
	richtap_update_fifo_data(&aw, 1);
	free(node);
	exit(0);
}

int main(int argc, char **argv)
{
	if (argc == 2 && strcmp(argv[1], "invalid-offset") == 0)
		trigger_invalid_offset();
	test_partial_copy();
	test_cross_node_drain();
	test_last_valid_offset();
	test_empty_fifo();
	test_invalid_state_retries();
	if (failures) return 1;
	puts("PASS: partial copy, cross-node drain, last valid offset, empty FIFO, invalid-state retries");
	return 0;
}
