/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZLOG_COMMON_HOST_STUBS_H
#define _ZLOG_COMMON_HOST_STUBS_H

#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <time.h>

typedef uint8_t u8;
typedef uint32_t u32;
typedef uint64_t u64;

#define __user
#define __init
#define KERN_ERR ""
#define GFP_KERNEL 0
#define MISC_DYNAMIC_MINOR 255
#define THIS_MODULE NULL
#define noinline __attribute__((noinline))
#ifndef __always_inline
#define __always_inline inline __attribute__((always_inline))
#endif

struct mutex { int initialized; int depth; };
typedef struct { int value; } atomic_t;
struct inode { int unused; };
struct file { int unused; };
struct work_struct { void (*callback)(struct work_struct *work); };
struct delayed_work {
	struct work_struct work;
	u8 reserved[0x68 - sizeof(struct work_struct)];
};
struct workqueue_struct { int token; };
struct file_operations {
	void *owner;
	ssize_t (*read)(struct file *, char *, size_t, loff_t *);
	ssize_t (*write)(struct file *, const char *, size_t, loff_t *);
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
struct timespec64 { long tv_sec; long tv_nsec; };
struct rtc_time {
	int tm_sec;
	int tm_min;
	int tm_hour;
	int tm_mday;
	int tm_mon;
	int tm_year;
	int tm_wday;
	int tm_yday;
	int tm_isdst;
};
struct timezone { int tz_minuteswest; int tz_dsttime; };

extern struct timezone sys_tz;
extern int host_fail_alloc;
extern int host_fail_copy;
extern int host_fail_misc;
extern int host_fail_vsnprintf;
extern int host_cancel_calls;
extern int host_queue_calls;
extern int host_queue_cpu;
extern unsigned long host_queue_delay;
extern int host_misc_calls;
extern int host_kfree_calls;

static inline void mutex_init(struct mutex *lock)
{ lock->initialized = 1; lock->depth = 0; }
static inline void mutex_lock(struct mutex *lock)
{ lock->depth++; }
static inline void mutex_unlock(struct mutex *lock)
{ lock->depth--; }
static inline void atomic_set(atomic_t *value, int next)
{ value->value = next; }
static inline void atomic_inc(atomic_t *value)
{ value->value++; }
static inline void atomic_dec(atomic_t *value)
{ value->value--; }
static inline int atomic_read(const atomic_t *value)
{ return value->value; }
static inline void set_bit(unsigned int bit, unsigned long *value)
{ *value |= 1UL << bit; }
static inline void clear_bit(unsigned int bit, unsigned long *value)
{ *value &= ~(1UL << bit); }
static inline int test_and_clear_bit(unsigned int bit, unsigned long *value)
{
	int old = !!(*value & (1UL << bit));
	clear_bit(bit, value);
	return old;
}

static inline int host_printk(const char *format, ...)
{ (void)format; return 0; }
#define pr_err(...) host_printk(__VA_ARGS__)
#define pr_info(...) host_printk(__VA_ARGS__)
#define _printk(...) host_printk(__VA_ARGS__)

static inline void *host_kzalloc(size_t size)
{
	if (host_fail_alloc) {
		host_fail_alloc = 0;
		return NULL;
	}
	return calloc(1, size);
}
#define kzalloc(size, flags) host_kzalloc(size)
static inline void host_kfree(const void *pointer)
{ if (pointer) host_kfree_calls++; }
#define kfree(pointer) host_kfree(pointer)
static inline char *host_kstrdup(const char *source)
{
	size_t length;
	char *copy;
	if (host_fail_alloc) {
		host_fail_alloc = 0;
		return NULL;
	}
	length = strlen(source) + 1;
	copy = malloc(length);
	if (copy)
		memcpy(copy, source, length);
	return copy;
}
#define kstrdup(source, flags) host_kstrdup(source)

static inline int host_vsnprintf(char *buffer, size_t size,
				 const char *format, va_list args)
{
	if (host_fail_vsnprintf) {
		host_fail_vsnprintf = 0;
		return -EINVAL;
	}
	return vsnprintf(buffer, size, format, args);
}
#define vsnprintf host_vsnprintf

static inline size_t copy_from_user(void *destination, const void *source,
				    size_t count)
{
	if (host_fail_copy)
		return count;
	memcpy(destination, source, count);
	return 0;
}

static inline int cancel_delayed_work(struct delayed_work *work)
{ (void)work; host_cancel_calls++; return 1; }
static inline int queue_delayed_work_on(int cpu, struct workqueue_struct *queue,
					struct delayed_work *work,
					unsigned long delay)
{
	(void)queue; (void)work;
	host_queue_calls++;
	host_queue_cpu = cpu;
	host_queue_delay = delay;
	return 1;
}
static inline struct workqueue_struct *host_alloc_workqueue(void)
{
	static struct workqueue_struct queue = { 1 };
	return &queue;
}
#define alloc_workqueue(format, flags, max_active, ...) host_alloc_workqueue()
#define INIT_DELAYED_WORK(delayed, function) ((delayed)->work.callback = (function))

static inline int misc_register(struct miscdevice *device)
{ (void)device; host_misc_calls++; return host_fail_misc ? -EINVAL : 0; }
static inline void ktime_get_real_ts64(struct timespec64 *value)
{ value->tv_sec = 1704164645; value->tv_nsec = 0; }
static inline void rtc_time64_to_tm(long seconds, struct rtc_time *value)
{
	time_t raw = (time_t)seconds;
	struct tm *converted = gmtime(&raw);
	value->tm_sec = converted->tm_sec;
	value->tm_min = converted->tm_min;
	value->tm_hour = converted->tm_hour;
	value->tm_mday = converted->tm_mday;
	value->tm_mon = converted->tm_mon;
	value->tm_year = converted->tm_year;
}
static inline void __fortify_panic(u8 reason, size_t available, size_t wanted)
{
	fprintf(stderr, "fortify panic: %u %zu %zu\n", reason, available, wanted);
	abort();
}

#define EXPORT_SYMBOL(symbol)
#define module_init(function)
#define MODULE_LICENSE(value)
#define MODULE_DESCRIPTION(value)
#define MODULE_AUTHOR(value)

#endif /* _ZLOG_COMMON_HOST_STUBS_H */
