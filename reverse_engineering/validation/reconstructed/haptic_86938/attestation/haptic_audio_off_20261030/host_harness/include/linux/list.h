#ifndef AUDIO_OFF_HOST_LINUX_LIST_H
#define AUDIO_OFF_HOST_LINUX_LIST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

struct list_head {
	struct list_head *next;
	struct list_head *prev;
};

bool __list_del_entry_valid_or_report(const struct list_head *entry);

#define container_of(ptr, type, member) \
	((type *)((char *)(ptr) - offsetof(type, member)))
#define list_entry(ptr, type, member) container_of(ptr, type, member)

static inline void INIT_LIST_HEAD(struct list_head *head)
{
	head->next = head;
	head->prev = head;
}

static inline void list_del(struct list_head *entry)
{
	if (entry->prev->next == entry && entry->next->prev == entry) {
		entry->next->prev = entry->prev;
		entry->prev->next = entry->next;
	} else {
		(void)__list_del_entry_valid_or_report(entry);
	}
	entry->next = (struct list_head *)(uintptr_t)0xdead000000000100ULL;
	entry->prev = (struct list_head *)(uintptr_t)0xdead000000000122ULL;
}

#define list_for_each_entry_safe_reverse(pos, n, head, member) \
	for ((pos) = list_entry((head)->prev, __typeof__(*(pos)), member), \
	     (n) = list_entry((pos)->member.prev, __typeof__(*(pos)), member); \
	     &(pos)->member != (head); \
	     (pos) = (n), \
	     (n) = list_entry((n)->member.prev, __typeof__(*(n)), member))

#endif
