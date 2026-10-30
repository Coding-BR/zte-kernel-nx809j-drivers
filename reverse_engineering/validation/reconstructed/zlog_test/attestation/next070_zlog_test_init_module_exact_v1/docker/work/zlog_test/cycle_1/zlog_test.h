/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZLOG_TEST_RECONSTRUCTED_H
#define _ZLOG_TEST_RECONSTRUCTED_H

#include <linux/build_bug.h>
#include <linux/stddef.h>
#include <linux/types.h>

struct zlog_client;

struct zlog_client_ops {
	int (*poll)(void);
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

/* This tag is part of the stock KCFI type identity. Do not rename it. */
struct zte_misc_ops {
	const char *name;
	int (*set)(const char *value, const void *priv);
	int (*get)(char *buffer, const void *priv);
	int (*show)(char *buffer, const void *priv);
	void *priv;
};

struct zlog_client_prefix {
	u32 client_id;
	char client_name[32];
};

static_assert(sizeof(struct zlog_client_ops) == 0x10);
static_assert(offsetof(struct zlog_client_ops, notify) == 0x08);
static_assert(sizeof(struct zlog_mod_info) == 0x30);
static_assert(offsetof(struct zlog_mod_info, client_name) == 0x08);
static_assert(offsetof(struct zlog_mod_info, ops) == 0x28);
static_assert(sizeof(struct zte_misc_ops) == 0x28);
static_assert(offsetof(struct zte_misc_ops, set) == 0x08);
static_assert(offsetof(struct zte_misc_ops, get) == 0x10);
static_assert(offsetof(struct zte_misc_ops, show) == 0x18);
static_assert(offsetof(struct zte_misc_ops, priv) == 0x20);
static_assert(offsetof(struct zlog_client_prefix, client_name) == 0x04);

void zlog_client_notify(struct zlog_client *client, int event);
int zlog_client_record(struct zlog_client *client, const char *format, ...);
struct zlog_client *zlog_register_client(struct zlog_mod_info *module);
void zlog_unregister_client(struct zlog_client *client);
int zte_misc_register_callback(struct zte_misc_ops *callback, void *priv);

#endif /* _ZLOG_TEST_RECONSTRUCTED_H */
