#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <linux/list.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic {
	u8 bytes[0x700];
};

#include "haptic_86938_fn_129_audio_off.c"

static int events[32];
static size_t event_count;
static u64 freed_markers[16];
static size_t freed_count;
static unsigned int invalid_list_reports;

static void record_event(int event)
{
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = event;
}

static void fake_set_mode(struct aw_haptic *haptic, u8 mode)
{
	(void)haptic;
	if (mode == 0x80)
		record_event(1);
	else
		record_event(-1);
}

static void fake_stop(struct aw_haptic *haptic)
{
	(void)haptic;
	record_event(2);
}

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

void mutex_lock(struct mutex *mutex)
{
	if (mutex->held)
		record_event(-2);
	mutex->held = 1;
}

void mutex_unlock(struct mutex *mutex)
{
	if (!mutex->held)
		record_event(-3);
	mutex->held = 0;
}

bool __list_del_entry_valid_or_report(const struct list_head *entry)
{
	(void)entry;
	invalid_list_reports++;
	return false;
}

void kfree(const void *ptr)
{
	u64 marker;
	memcpy(&marker, ptr, sizeof(marker));
	if (freed_count < sizeof(freed_markers) / sizeof(freed_markers[0]))
		freed_markers[freed_count++] = marker;
	free((void *)ptr);
}

static void reset_observation(void)
{
	memset(events, 0, sizeof(events));
	memset(freed_markers, 0, sizeof(freed_markers));
	event_count = 0;
	freed_count = 0;
	invalid_list_reports = 0;
}

static void initialize_haptic(struct aw_haptic *haptic, u8 *operations)
{
	void *ops = operations;
	aw_haptic_u8_op_fn mode = fake_set_mode;
	aw_haptic_op_fn stop = fake_stop;
	struct list_head *head = (struct list_head *)(haptic->bytes + 0x590);
	struct mutex *lock = (struct mutex *)(haptic->bytes + 0x2f0);

	memset(haptic, 0, sizeof(*haptic));
	memset(operations, 0, 0x100);
	memcpy(haptic->bytes + 0x5c8, &ops, sizeof(ops));
	memcpy(operations + 0x88, &mode, sizeof(mode));
	memcpy(operations + 0x38, &stop, sizeof(stop));
	head->next = head;
	head->prev = head;
	lock->held = 0;
}

static struct aw_haptic_audio_cmd *new_command(u64 marker)
{
	struct aw_haptic_audio_cmd *command = calloc(1, sizeof(*command));
	if (!command)
		return NULL;
	command->opaque = marker;
	INIT_LIST_HEAD(&command->list);
	return command;
}

static void add_tail(struct list_head *head, struct aw_haptic_audio_cmd *command)
{
	command->list.prev = head->prev;
	command->list.next = head;
	head->prev->next = &command->list;
	head->prev = &command->list;
}

static int check_events_and_unlock(struct aw_haptic *haptic)
{
	struct mutex *lock = (struct mutex *)(haptic->bytes + 0x2f0);
	return event_count == 2 && events[0] == 1 && events[1] == 2 &&
	       events[2] != -2 && !lock->held;
}

static int test_empty_list(void)
{
	struct aw_haptic haptic;
	u8 operations[0x100];
	reset_observation();
	initialize_haptic(&haptic, operations);
	audio_off(&haptic);
	if (!check_events_and_unlock(&haptic) || freed_count || invalid_list_reports)
		return 1;
	puts("PASS empty_list callbacks_and_unlock");
	return 0;
}

static int test_reverse_free_order(void)
{
	struct aw_haptic haptic;
	u8 operations[0x100];
	struct list_head *head;
	struct aw_haptic_audio_cmd *first, *second, *third;
	reset_observation();
	initialize_haptic(&haptic, operations);
	head = (struct list_head *)(haptic.bytes + 0x590);
	first = new_command(11);
	second = new_command(22);
	third = new_command(33);
	if (!first || !second || !third)
		return 1;
	add_tail(head, first);
	add_tail(head, second);
	add_tail(head, third);
	audio_off(&haptic);
	if (!check_events_and_unlock(&haptic) || freed_count != 3 ||
	    freed_markers[0] != 33 || freed_markers[1] != 22 ||
	    freed_markers[2] != 11 || head->next != head || head->prev != head ||
	    invalid_list_reports)
		return 1;
	puts("PASS reverse_free_order tail_to_head");
	return 0;
}

static int test_invalid_link_report_then_free(void)
{
	struct aw_haptic haptic;
	u8 operations[0x100];
	struct list_head *head;
	struct aw_haptic_audio_cmd *command;
	reset_observation();
	initialize_haptic(&haptic, operations);
	head = (struct list_head *)(haptic.bytes + 0x590);
	command = new_command(44);
	if (!command)
		return 1;
	add_tail(head, command);
	head->next = head;
	audio_off(&haptic);
	if (!check_events_and_unlock(&haptic) || freed_count != 1 ||
	    freed_markers[0] != 44 || invalid_list_reports != 1)
		return 1;
	puts("PASS invalid_link_report_then_free");
	return 0;
}

int main(void)
{
	if (test_empty_list() || test_reverse_free_order() ||
	    test_invalid_link_report_then_free())
		return 1;
	puts("PASS all audio_off host checks");
	return 0;
}
