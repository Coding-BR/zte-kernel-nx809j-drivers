/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZLOG_EXCEPTION_RECONSTRUCTED_H
#define _ZLOG_EXCEPTION_RECONSTRUCTED_H

#ifndef ZLOG_EXCEPTION_HOST_TEST
#include <linux/atomic.h>
#include <linux/build_bug.h>
#include <linux/list.h>
#include <linux/miscdevice.h>
#include <linux/mutex.h>
#include <linux/stddef.h>
#include <linux/types.h>
#include <linux/wait.h>
#endif

/* Layout recovered from g_zlog_info and fragment accesses in the stock ELF. */
struct zlog_fragment {
	struct list_head node;
	u32 length;
	u32 reserved_14;
	char *data;
};

struct zlog_state {
	struct mutex list_mutex;
	struct list_head fragments;
	struct miscdevice miscdev;
	atomic_t use_count;
	u32 reserved_94;
	wait_queue_head_t poll_wq;
	int data_ready;
	int fragment_count;
};

#ifndef ZLOG_EXCEPTION_HOST_TEST
static_assert(offsetof(struct zlog_fragment, node) == 0x00);
static_assert(offsetof(struct zlog_fragment, length) == 0x10);
static_assert(offsetof(struct zlog_fragment, reserved_14) == 0x14);
static_assert(offsetof(struct zlog_fragment, data) == 0x18);
static_assert(sizeof(struct zlog_fragment) == 0x20);

static_assert(offsetof(struct zlog_state, list_mutex) == 0x00);
static_assert(offsetof(struct zlog_state, fragments) == 0x30);
static_assert(offsetof(struct zlog_state, miscdev) == 0x40);
static_assert(offsetof(struct zlog_state, use_count) == 0x90);
static_assert(offsetof(struct zlog_state, reserved_94) == 0x94);
static_assert(offsetof(struct zlog_state, poll_wq) == 0x98);
static_assert(offsetof(struct zlog_state, data_ready) == 0xb0);
static_assert(offsetof(struct zlog_state, fragment_count) == 0xb4);
static_assert(sizeof(struct zlog_state) == 0xb8);
#endif

ssize_t zlog_write_internal(const char *buffer, size_t count);

#endif /* _ZLOG_EXCEPTION_RECONSTRUCTED_H */
