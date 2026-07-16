/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZLOG_TEST_HOST_STUBS_H
#define _ZLOG_TEST_HOST_STUBS_H

#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint32_t u32;

#define __init
#define __exit
#define PAGE_SIZE 4096
#define EBUSY 16
#define EINVAL 22
#define static_assert(condition, ...) _Static_assert(condition, #condition)

struct work_struct { int unused; };

struct delayed_work {
	struct work_struct work;
	void (*callback)(struct work_struct *work);
};

struct workqueue_struct {
	unsigned int id;
};

struct zlog_client {
	u32 client_id;
	char client_name[32];
};

struct zte_misc_ops;
struct zlog_mod_info;

struct zlog_test_queue_call {
	int cpu;
	struct workqueue_struct *workqueue;
	struct delayed_work *work;
	unsigned long delay;
};

extern u32 zlog_host_random;
extern int zlog_host_register_fail_at;
extern int zlog_host_misc_result;
extern unsigned int zlog_host_alloc_count;
extern unsigned int zlog_host_register_count;
extern unsigned int zlog_host_unregister_count;
extern unsigned int zlog_host_record_count;
extern unsigned int zlog_host_notify_count;
extern unsigned int zlog_host_queue_count;
extern unsigned int zlog_host_flush_count;
extern unsigned int zlog_host_cancel_count;
extern unsigned int zlog_host_print_count;
extern struct zlog_mod_info *zlog_host_registered_modules[5];
extern struct zlog_client *zlog_host_unregistered_clients[5];
extern const char *zlog_host_records[8];
extern struct zlog_client *zlog_host_record_clients[8];
extern struct zlog_client *zlog_host_notify_client;
extern int zlog_host_notify_event;
extern struct zlog_test_queue_call zlog_host_queue_calls[8];
extern struct delayed_work *zlog_host_flushed_works[5];
extern struct delayed_work *zlog_host_cancelled_works[5];
extern struct zte_misc_ops *zlog_host_misc_node;

static inline u32 get_random_u32(void)
{
	return zlog_host_random;
}

static inline unsigned long __msecs_to_jiffies(unsigned int milliseconds)
{
	return milliseconds;
}

#define msecs_to_jiffies(milliseconds) __msecs_to_jiffies(milliseconds)

static inline struct workqueue_struct *
alloc_workqueue(const char *format, unsigned int flags, int max_active, ...)
{
	static struct workqueue_struct queues[5];

	(void)format;
	(void)flags;
	(void)max_active;
	if (zlog_host_alloc_count >= 5)
		return NULL;
	queues[zlog_host_alloc_count].id = zlog_host_alloc_count + 1;
	return &queues[zlog_host_alloc_count++];
}

#define INIT_DELAYED_WORK(delayed, function) \
	do { (delayed)->callback = (function); } while (0)

static inline bool queue_delayed_work_on(int cpu,
					 struct workqueue_struct *workqueue,
					 struct delayed_work *work,
					 unsigned long delay)
{
	struct zlog_test_queue_call *call;

	if (zlog_host_queue_count >= 8)
		return false;
	call = &zlog_host_queue_calls[zlog_host_queue_count++];
	call->cpu = cpu;
	call->workqueue = workqueue;
	call->work = work;
	call->delay = delay;
	return true;
}

static inline bool flush_delayed_work(struct delayed_work *work)
{
	if (zlog_host_flush_count < 5)
		zlog_host_flushed_works[zlog_host_flush_count++] = work;
	return true;
}

static inline bool cancel_delayed_work_sync(struct delayed_work *work)
{
	if (zlog_host_cancel_count < 5)
		zlog_host_cancelled_works[zlog_host_cancel_count++] = work;
	return true;
}

static inline int printk(const char *format, ...)
{
	(void)format;
	zlog_host_print_count++;
	return 0;
}

#define pr_info(format, ...) ((void)printk(format, ##__VA_ARGS__))
#define pr_err(format, ...) ((void)printk(format, ##__VA_ARGS__))
#define MODULE_INFO(tag, value)
#define MODULE_LICENSE(value)
#define MODULE_DESCRIPTION(value)
#define MODULE_AUTHOR(value)
#define module_init(function)
#define module_exit(function)

#endif /* _ZLOG_TEST_HOST_STUBS_H */
