/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZLOG_EXCEPTION_HOST_STUBS_H
#define _ZLOG_EXCEPTION_HOST_STUBS_H

#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint32_t u32;
typedef unsigned int __poll_t;

#define __user
#define __init
#define __exit
#define likely(value) __builtin_expect(!!(value), 1)
#define unlikely(value) __builtin_expect(!!(value), 0)
#define GFP_KERNEL 0
#define MISC_DYNAMIC_MINOR 255
#define FMODE_READ 0x1
#define EPOLLIN 0x001
#define EPOLLRDNORM 0x040
#define KERN_ERR ""
#define THIS_MODULE NULL

struct list_head {
	struct list_head *next;
	struct list_head *prev;
};

struct mutex { int unused; };
typedef struct { int value; } atomic_t;
typedef struct { int unused; } wait_queue_head_t;

struct inode { int unused; };
struct file { unsigned int f_mode; };
struct poll_table_struct { int unused; };

struct file_operations {
	void *owner;
	ssize_t (*read)(struct file *, char *, size_t, loff_t *);
	ssize_t (*write)(struct file *, const char *, size_t, loff_t *);
	__poll_t (*poll)(struct file *, struct poll_table_struct *);
	long (*unlocked_ioctl)(struct file *, unsigned int, unsigned long);
	long (*compat_ioctl)(struct file *, unsigned int, unsigned long);
	int (*open)(struct inode *, struct file *);
	int (*release)(struct inode *, struct file *);
};

struct miscdevice {
	int minor;
	const char *name;
	const struct file_operations *fops;
	void *parent;
};

extern int zlog_test_alloc_call;
extern int zlog_test_alloc_fail_at;
extern int zlog_test_copy_from_fail;
extern int zlog_test_copy_to_fail;
extern int zlog_test_wait_result;
extern int zlog_test_misc_register_result;

#define container_of(ptr, type, member) \
	((type *)((char *)(ptr) - offsetof(type, member)))
#define list_last_entry(head, type, member) \
	container_of((head)->prev, type, member)
#define min_t(type, left, right) \
	((type)(left) < (type)(right) ? (type)(left) : (type)(right))

static inline void INIT_LIST_HEAD(struct list_head *head)
{
	head->next = head;
	head->prev = head;
}

static inline bool list_empty(const struct list_head *head)
{
	return head->next == head;
}

static inline void list_add(struct list_head *node, struct list_head *head)
{
	node->next = head->next;
	node->prev = head;
	head->next->prev = node;
	head->next = node;
}

static inline void list_del(struct list_head *node)
{
	node->prev->next = node->next;
	node->next->prev = node->prev;
}

static inline void mutex_init(struct mutex *lock) { (void)lock; }
static inline void mutex_lock(struct mutex *lock) { (void)lock; }
static inline void mutex_unlock(struct mutex *lock) { (void)lock; }
static inline void init_waitqueue_head(wait_queue_head_t *head) { (void)head; }
static inline void wake_up_interruptible(wait_queue_head_t *head) { (void)head; }
static inline void poll_wait(struct file *file, wait_queue_head_t *head,
			     struct poll_table_struct *wait)
{
	(void)file;
	(void)head;
	(void)wait;
}

#define wait_event_interruptible(head, condition) \
	((void)(head), (condition) ? 0 : zlog_test_wait_result)

static inline void atomic_set(atomic_t *value, int next) { value->value = next; }
static inline void atomic_inc(atomic_t *value) { value->value++; }
static inline void atomic_dec(atomic_t *value) { value->value--; }
static inline int atomic_read(const atomic_t *value) { return value->value; }

static inline void *kzalloc(size_t size, int flags)
{
	(void)flags;
	zlog_test_alloc_call++;
	if (zlog_test_alloc_fail_at == zlog_test_alloc_call)
		return NULL;
	return calloc(1, size);
}

static inline void kfree(const void *memory) { free((void *)memory); }

static inline char *kstrdup(const char *text, int flags)
{
	size_t length;
	char *copy;

	(void)flags;
	length = strlen(text) + 1;
	copy = malloc(length);
	if (copy)
		memcpy(copy, text, length);
	return copy;
}

static inline unsigned long copy_from_user(void *to, const void *from, size_t size)
{
	if (zlog_test_copy_from_fail)
		return size;
	memcpy(to, from, size);
	return 0;
}

static inline unsigned long copy_to_user(void *to, const void *from, size_t size)
{
	if (zlog_test_copy_to_fail)
		return size;
	memcpy(to, from, size);
	return 0;
}

static inline int misc_register(struct miscdevice *device)
{
	(void)device;
	return zlog_test_misc_register_result;
}

static inline int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

#define pr_err(format, ...) ((void)printk(format, ##__VA_ARGS__))
#define pr_info(format, ...) ((void)printk(format, ##__VA_ARGS__))
#define EXPORT_SYMBOL(symbol)
#define MODULE_INFO(tag, value)
#define MODULE_LICENSE(value)
#define MODULE_AUTHOR(value)
#define MODULE_DESCRIPTION(value)
#define module_init(function)
#define module_exit(function)

#endif /* _ZLOG_EXCEPTION_HOST_STUBS_H */
