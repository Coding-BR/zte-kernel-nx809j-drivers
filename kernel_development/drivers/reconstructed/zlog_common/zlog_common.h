/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZLOG_COMMON_RECONSTRUCTED_H
#define _ZLOG_COMMON_RECONSTRUCTED_H

#ifndef ZLOG_COMMON_HOST_TEST
#include <linux/atomic.h>
#include <linux/build_bug.h>
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/mutex.h>
#include <linux/stddef.h>
#include <linux/types.h>
#include <linux/workqueue.h>
#endif

#define ZLOG_CLIENT_MAX 32
#define ZLOG_RECORD_SIZE 0x800
#define ZLOG_EVENT_OVERHEAD 0x1ba

struct zlog_client;

struct zlog_client_ops {
	void *reserved_00;
	int (*notify)(void *client, int event);
};

struct zlog_mod_info {
	u32 module_no;
	u32 reserved_04;
	const char *client_name;
	const char *device_name;
	const char *ic_name;
	const char *module_name;
	const struct zlog_client_ops *ops;
};

struct zlog_client {
	u32 client_id;
	char client_name[32];
	char device_name[32];
	char ic_name[64];
	char module_name[32];
	u32 reserved_a4;
	const struct zlog_client_ops *ops;
	struct mutex client_lock;
	u32 module_no;
	u32 event_no;
	unsigned long flags;
	u64 reserved_f0;
	size_t record_length;
	size_t record_capacity;
	char *record_buffer;
	u64 reserved_110;
	u8 registered;
	u8 reserved_119[7];
};

struct zlog_server {
	struct zlog_client clients[ZLOG_CLIENT_MAX];
	struct workqueue_struct *workqueue;
	struct delayed_work report_work;
	struct miscdevice miscdev;
	atomic_t use_count;
	u8 init_finished;
	u8 reserved_24c5[3];
};

struct zlog_command {
	u32 module_no;
	u8 reserved_04[12];
};

#ifndef ZLOG_COMMON_HOST_TEST
static_assert(sizeof(struct zlog_mod_info) == 0x30);
static_assert(offsetof(struct zlog_mod_info, client_name) == 0x08);
static_assert(offsetof(struct zlog_mod_info, ops) == 0x28);

static_assert(offsetof(struct zlog_client, client_id) == 0x00);
static_assert(offsetof(struct zlog_client, client_name) == 0x04);
static_assert(offsetof(struct zlog_client, device_name) == 0x24);
static_assert(offsetof(struct zlog_client, ic_name) == 0x44);
static_assert(offsetof(struct zlog_client, module_name) == 0x84);
static_assert(offsetof(struct zlog_client, ops) == 0xa8);
static_assert(offsetof(struct zlog_client, client_lock) == 0xb0);
static_assert(offsetof(struct zlog_client, module_no) == 0xe0);
static_assert(offsetof(struct zlog_client, event_no) == 0xe4);
static_assert(offsetof(struct zlog_client, flags) == 0xe8);
static_assert(offsetof(struct zlog_client, reserved_f0) == 0xf0);
static_assert(offsetof(struct zlog_client, record_length) == 0xf8);
static_assert(offsetof(struct zlog_client, record_capacity) == 0x100);
static_assert(offsetof(struct zlog_client, record_buffer) == 0x108);
static_assert(offsetof(struct zlog_client, reserved_110) == 0x110);
static_assert(offsetof(struct zlog_client, registered) == 0x118);
static_assert(sizeof(struct zlog_client) == 0x120);

static_assert(offsetof(struct zlog_server, clients) == 0x0000);
static_assert(offsetof(struct zlog_server, workqueue) == 0x2400);
static_assert(offsetof(struct zlog_server, report_work) == 0x2408);
static_assert(offsetof(struct zlog_server, miscdev) == 0x2470);
static_assert(offsetof(struct zlog_server, use_count) == 0x24c0);
static_assert(offsetof(struct zlog_server, init_finished) == 0x24c4);
static_assert(sizeof(struct zlog_server) == 0x24c8);
static_assert(sizeof(struct zlog_command) == 0x10);
#endif

void zlog_client_notify(struct zlog_client *client, int event);
int zlog_client_record(struct zlog_client *client, const char *format, ...);
struct zlog_client *zlog_register_client(struct zlog_mod_info *module);
void zlog_unregister_client(struct zlog_client *client);
void zlog_reset_client(struct zlog_client *client);

#endif /* _ZLOG_COMMON_RECONSTRUCTED_H */
