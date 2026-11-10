// SPDX-License-Identifier: GPL-2.0-only
#include <linux/bitops.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/string.h>

#include "zlog_common.h"

#define ZLOG_FLAG_UNREGISTER 0
#define ZLOG_FLAG_RECORD 2
#define ZLOG_FLAG_NOTIFY 3

extern struct zlog_server g_zlog_server;
extern struct mutex zlog_lifetime_lock;

int zlog_client_record(struct zlog_client *client, const char *format, ...)
{
	va_list args;
	int written = 0;

	if (!g_zlog_server.init_finished) {
		pr_err("ZLOG_COMM: %s: %s g_zlog_server not init_finished\n",
		       __func__, __func__);
		return 0;
	}
	if (!client) {
		pr_err("ZLOG_COMM: %s: %s no client to record\n",
		       __func__, __func__);
		return 0;
	}

	mutex_lock(&client->client_lock);
	if (!client->registered || !client->record_capacity ||
	    !client->record_buffer) {
		pr_err("ZLOG_COMM: %s: %s no buffer to record\n",
		       __func__, __func__);
		goto out_unlock;
	}
	if (client->record_length >= ZLOG_RECORD_SIZE) {
		pr_err("ZLOG_COMM: %s: %s no buffer to record\n",
		       __func__, __func__);
		goto out_unlock;
	}

	va_start(args, format);
	written = vsnprintf(client->record_buffer + client->record_length,
			    client->record_capacity + ~client->record_length,
			    format, args);
	va_end(args);
	if (written < 0) {
		pr_err("ZLOG_COMM: %s: %s:record buffer failed\n",
		       __func__, __func__);
		goto out_unlock;
	}

	client->record_length += written;
	if (client->record_length >= client->record_capacity)
		client->record_length = client->record_capacity - 1;
	set_bit(ZLOG_FLAG_RECORD, &client->flags);

out_unlock:
	mutex_unlock(&client->client_lock);
	return written;
}

void zlog_unregister_client(struct zlog_client *client)
{
	u32 client_id;

	if (!g_zlog_server.init_finished) {
		pr_err("ZLOG_COMM: %s: %s g_zlog_server not init_finished\n",
		       __func__, __func__);
		return;
	}
	if (!client) {
		pr_err("ZLOG_COMM: %s: client is null\n", __func__);
		return;
	}

	/* The worker holds this lock from before reading clients through reset. */
	mutex_lock(&zlog_lifetime_lock);
	mutex_lock(&client->client_lock);
	if (!client->registered || !client->record_capacity) {
		mutex_unlock(&client->client_lock);
		mutex_unlock(&zlog_lifetime_lock);
		return;
	}
	client_id = client->client_id;
	/* Close producers while the lifetime lock excludes report_work. */
	client->record_capacity = 0;
	clear_bit(ZLOG_FLAG_NOTIFY, &client->flags);
	if (client->record_buffer)
		kfree(client->record_buffer);
	client->record_buffer = NULL;
	client->reserved_f0 = 0;
	client->record_length = 0;
	client->record_capacity = ZLOG_RECORD_SIZE;
	memset(client->client_name, 0, sizeof(client->client_name));
	memset(client->device_name, 0, sizeof(client->device_name));
	memset(client->ic_name, 0, sizeof(client->ic_name));
	memset(client->module_name, 0, sizeof(client->module_name));
	client->client_id = 0;
	client->ops = NULL;
	client->registered = false;
	set_bit(ZLOG_FLAG_UNREGISTER, &client->flags);
	mutex_unlock(&client->client_lock);
	mutex_unlock(&zlog_lifetime_lock);
	pr_info("ZLOG_COMM: %s: client %u unregister success\n",
		__func__, client_id);
}
