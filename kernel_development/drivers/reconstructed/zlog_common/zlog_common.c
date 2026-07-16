// SPDX-License-Identifier: GPL-2.0-only
#ifndef ZLOG_COMMON_HOST_TEST
#include <linux/bitops.h>
#include <linux/errno.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/rtc.h>
#include <linux/slab.h>
#include <linux/time.h>
#include <linux/uaccess.h>
#endif

#include "zlog_common.h"

#define ZLOG_FLAG_UNREGISTER 0
#define ZLOG_FLAG_REGISTERED 1
#define ZLOG_FLAG_RECORD 2
#define ZLOG_FLAG_NOTIFY 3
#define ZLOG_WORK_CPU 0x20
#define ZLOG_WORK_DELAY 0x32

extern ssize_t zlog_write_internal(const char *buffer, size_t count);

static struct zlog_server g_zlog_server;

static void zlog_handle_work(struct work_struct *work);
static noinline void __init zlog_comm_create_ctrl_dev(void);

void zlog_client_notify(struct zlog_client *client, int event)
{
	const char *message;

	if (!g_zlog_server.init_finished) {
		message = KERN_ERR "ZLOG_COMM: %s: %s g_zlog_server not init_finished\n";
	} else if (!client) {
		message = KERN_ERR "ZLOG_COMM: %s: %s no client to record\n";
	} else {
		mutex_lock(&client->client_lock);
		client->event_no = event;
		set_bit(ZLOG_FLAG_NOTIFY, &client->flags);
		mutex_unlock(&client->client_lock);
		cancel_delayed_work(&g_zlog_server.report_work);
		queue_delayed_work_on(ZLOG_WORK_CPU, g_zlog_server.workqueue,
				      &g_zlog_server.report_work, ZLOG_WORK_DELAY);
		return;
	}

	_printk(message, __func__, __func__);
}
EXPORT_SYMBOL(zlog_client_notify);

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
		pr_err("ZLOG_COMM: %s: %s no client to record\n", __func__, __func__);
		return 0;
	}

	mutex_lock(&client->client_lock);
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
EXPORT_SYMBOL(zlog_client_record);

static bool zlog_same_client(const struct zlog_client *client,
			     struct zlog_mod_info *module)
{
	return client->registered && client->module_no == module->module_no &&
		!strncmp(client->client_name, module->client_name, 31) &&
		!strncmp(client->device_name, module->device_name, 31) &&
		!strncmp(client->ic_name, module->ic_name, 63) &&
		!strncmp(client->module_name, module->module_name, 31);
}

static __always_inline int
zlog_get_already_registered_client(struct zlog_mod_info *module)
{
	struct zlog_client *client;
	unsigned int i;
	int client_id = -1;

	for (i = 0; i < ZLOG_CLIENT_MAX; i++) {
		client = &g_zlog_server.client_list[i];
		mutex_lock(&client->client_lock);
		if (zlog_same_client(client, module)) {
			mutex_unlock(&client->client_lock);
			pr_err("ZLOG_COMM: %s: %s g_zlog_server module_no:%d client_name:%s already registered.\n",
			       "zlog_get_already_registered_client",
			       "zlog_get_already_registered_client", module->module_no,
			       module->client_name);
			client_id = i;
			break;
		}
		mutex_unlock(&client->client_lock);
	}
	return client_id;
}

static __always_inline int zlog_get_unused_client(void)
{
	struct zlog_client *client;
	unsigned int i;
	int client_id = -1;

	for (i = 0; i < ZLOG_CLIENT_MAX; i++) {
		client = &g_zlog_server.client_list[i];
		mutex_lock(&client->client_lock);
		if (!client->registered) {
			mutex_unlock(&client->client_lock);
			client_id = i;
			break;
		}
		mutex_unlock(&client->client_lock);
	}
	return client_id;
}

struct zlog_client *zlog_register_client(struct zlog_mod_info *module)
{
	struct zlog_client *client;
	int client_id;

	if (!g_zlog_server.init_finished) {
		pr_err("ZLOG_COMM: %s: %s g_zlog_server not init_finished\n",
		       __func__, __func__);
		return NULL;
	}
	if (!module) {
		pr_err("ZLOG_COMM: %s: mod_info clients is NULL\n", __func__);
		return NULL;
	}

	client_id = zlog_get_already_registered_client(module);
	if (client_id >= 0 && client_id < ZLOG_CLIENT_MAX) {
		client = &g_zlog_server.client_list[client_id];
		pr_info("ZLOG_COMM: %s: %s client client_id:%d already registered, return the registered client.\n",
			__func__, client->client_name, client->client_id);
		return client;
	}

	pr_info("ZLOG_COMM: %s: %s clients not registered, try to register.\n",
		__func__, module->client_name);
	client_id = zlog_get_unused_client();
	if (client_id < 0 || client_id >= ZLOG_CLIENT_MAX) {
		pr_err("ZLOG_COMM: %s: clients register failed, reach the upper limit %d\n",
		       __func__, ZLOG_CLIENT_MAX);
		return NULL;
	}

	client = &g_zlog_server.client_list[client_id];
	mutex_lock(&client->client_lock);
	client->record_buffer = kzalloc(ZLOG_RECORD_SIZE, GFP_KERNEL);
	if (!client->record_buffer) {
		pr_err("ZLOG_COMM: %s: kzalloc dump_buff failed!!\n", __func__);
		mutex_unlock(&client->client_lock);
		return NULL;
	}

	client->reserved_f0 = 0;
	client->record_length = 0;
	client->record_capacity = ZLOG_RECORD_SIZE;
	strncpy(client->client_name, module->client_name, 31);
	client->client_name[31] = '\0';
	if (module->device_name) {
		strncpy(client->device_name, module->device_name, 31);
		client->device_name[31] = '\0';
	}
	if (module->ic_name) {
		strncpy(client->ic_name, module->ic_name, 63);
		client->ic_name[63] = '\0';
	}
	if (module->module_name) {
		strncpy(client->module_name, module->module_name, 31);
		client->module_name[31] = '\0';
	}
	client->client_id = client_id;
	client->module_no = module->module_no;
	client->ops = module->ops;
	client->registered = true;
	set_bit(ZLOG_FLAG_REGISTERED, &client->flags);
	mutex_unlock(&client->client_lock);

	pr_info("ZLOG_COMM: %s: client %s client_id:%d register success\n",
		__func__, client->client_name, client->client_id);
	return client;
}
EXPORT_SYMBOL(zlog_register_client);

void zlog_unregister_client(struct zlog_client *client)
{
	int client_id = client->client_id;

	if (!g_zlog_server.init_finished) {
		pr_err("ZLOG_COMM: %s: %s g_zlog_server not init_finished\n",
		       __func__, __func__);
		return;
	}
	if (client_id < 0) {
		pr_err("ZLOG_COMM: %s: clients unregister failed, client_id %d\n",
		       __func__, client_id);
		return;
	}

	mutex_lock(&client->client_lock);
	if (client->record_buffer)
		kfree(client->record_buffer);
	client->reserved_f0 = 0;
	client->record_length = 0;
	client->record_capacity = ZLOG_RECORD_SIZE;
	memset(client->client_name, 0, sizeof(client->client_name));
	memset(client->device_name, 0, sizeof(client->device_name));
	memset(client->ic_name, 0, sizeof(client->ic_name));
	memset(client->module_name, 0, sizeof(client->module_name));
	memset(client->device_name, 0, sizeof(client->device_name));
	client->client_id = 0;
	client->ops = NULL;
	client->registered = false;
	set_bit(ZLOG_FLAG_UNREGISTER, &client->flags);
	mutex_unlock(&client->client_lock);
	pr_info("ZLOG_COMM: %s: client %d unregister success\n", __func__, client_id);
}
EXPORT_SYMBOL(zlog_unregister_client);

void zlog_reset_client(struct zlog_client *client)
{
	if (!g_zlog_server.init_finished) {
		pr_err("ZLOG_COMM: %s: %s g_zlog_server not init_finished\n",
		       __func__, __func__);
		return;
	}
	if (!client) {
		pr_err("ZLOG_COMM: %s: client is null\n", __func__);
		return;
	}

	mutex_lock(&client->client_lock);
	client->event_no = 0;
	client->reserved_f0 = 0;
	client->record_length = 0;
	memset(client->record_buffer, 0, client->record_capacity);
	clear_bit(ZLOG_FLAG_REGISTERED, &client->flags);
	mutex_unlock(&client->client_lock);
}
EXPORT_SYMBOL(zlog_reset_client);

static __always_inline char *zlog_create_event(size_t capacity)
{
	return kzalloc(capacity, GFP_KERNEL);
}

static void zlog_handle_work(struct work_struct *work)
{
	struct zlog_client *client;
	char *event_buffer;
	size_t event_capacity;
	size_t content_length;
	size_t remaining;
	unsigned int i;
	int offset;
	int timestamp_length;
	int length;
	int ret;

	pr_info("ZLOG_COMM: %s: %s enter\n", __func__, __func__);
	for (i = 0; i < ZLOG_CLIENT_MAX; i++) {
		client = &g_zlog_server.client_list[i];
		if (!client->registered)
			continue;

		mutex_lock(&client->client_lock);
		pr_info("ZLOG_COMM: %s: No.%d client name %s flag 0x%lx\n",
			__func__, i, client->client_name, client->flags);
		ret = test_and_clear_bit(ZLOG_FLAG_NOTIFY, &client->flags);
		mutex_unlock(&client->client_lock);
		if (!ret)
			continue;

		mutex_lock(&client->client_lock);
		event_capacity = client->record_length + ZLOG_EVENT_OVERHEAD;
		mutex_unlock(&client->client_lock);
		event_buffer = zlog_create_event(event_capacity);
		if (!event_buffer) {
			pr_err("ZLOG_COMM: %s: kmalloc event_buff failed\n",
			       "zlog_create_event");
			pr_err("ZLOG_COMM: %s: zlog_create_event failed\n",
			       "zlog_report_event");
			goto finish_client;
		}

		struct timespec64 now;
		struct rtc_time tm;
		char timestamp[128];

		mutex_lock(&client->client_lock);
		ktime_get_real_ts64(&now);
		now.tv_sec -= sys_tz.tz_minuteswest * 60;
		rtc_time64_to_tm(now.tv_sec, &tm);
		timestamp_length = sprintf(timestamp,
			"[%04d-%02d-%02d %02d:%02d:%02d]",
			tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
			tm.tm_hour, tm.tm_min, tm.tm_sec);

		offset = snprintf(event_buffer, event_capacity, "MOD_NO: %d; ",
				  client->module_no);
		offset += snprintf(event_buffer + offset, event_capacity - offset,
				   "ENO: 0x%x; ",
				   client->event_no | (client->module_no << 24));
		if (timestamp_length > 0) {
			timestamp[timestamp_length] = '\0';
			offset += snprintf(event_buffer + offset, event_capacity - offset,
					   "TIME: %s; ", timestamp);
		}
		offset += snprintf(event_buffer + offset, event_capacity - offset,
				   "CLT_NAME: %s; ", client->client_name);
		offset += snprintf(event_buffer + offset, event_capacity - offset,
				   "DEV_NAME: %s; ", client->device_name);
		offset += snprintf(event_buffer + offset, event_capacity - offset,
				   "MOD_NAME: %s; ", client->module_name);
		offset += snprintf(event_buffer + offset, event_capacity - offset,
				   "IC_NAME: %s; ", client->ic_name);
		length = snprintf(event_buffer + offset, event_capacity - offset,
				  "CONTENT: ");
		offset += length;
		remaining = (size_t)offset <= event_capacity ?
			event_capacity - (size_t)offset : 0;
		if (remaining < client->record_length)
			__fortify_panic(0x11, remaining, client->record_length);
		memcpy(event_buffer + offset, client->record_buffer,
		       client->record_length);
		content_length = client->record_length;
		mutex_unlock(&client->client_lock);

		ret = zlog_write_internal(event_buffer, content_length + offset);
		if (ret < 0)
			pr_err("ZLOG_COMM: %s: zlog_write_internal failed\n",
			       "zlog_report_event");
		kfree(event_buffer);

finish_client:
		pr_info("ZLOG_COMM: %s: %s finish notify\n",
			__func__, client->client_name);
		zlog_reset_client(client);
	}
	pr_info("ZLOG_COMM: %s: %s exit\n", __func__, __func__);
}

static ssize_t zlog_comm_read(struct file *file, char __user *buffer,
			      size_t count, loff_t *offset)
{
	return count;
}

static ssize_t zlog_comm_write(struct file *file, const char __user *buffer,
			       size_t count, loff_t *offset)
{
	struct zlog_command command;
	struct zlog_client *client;
	u32 module_no;
	unsigned int i;

	if (count != sizeof(command)) {
		pr_err("ZLOG_COMM: %s: count(%zu) != zlog_cmd_t(%lu)\n",
		       __func__, count, sizeof(command));
		return -EINVAL;
	}
	if (copy_from_user(&command, buffer, count)) {
		pr_err("ZLOG_COMM: %s: copy from user failed\n", __func__);
		return -ENOMEM;
	}
	module_no = command.module_no;

	for (i = 0; i < ZLOG_CLIENT_MAX; i++) {
		client = &g_zlog_server.client_list[i];
		if (client->registered && client->module_no == module_no &&
		    client->ops && client->ops->notify)
			client->ops->notify(client, module_no);
	}
	return count;
}

static long zlog_comm_ioctl(struct file *file, unsigned int cmd,
			    unsigned long arg)
{
	return 0;
}

static int zlog_comm_open(struct inode *inode, struct file *file)
{
	atomic_inc(&g_zlog_server.use_count);
	pr_err("ZLOG_COMM: %s: open successed, use_cnt %d",
	       __func__, atomic_read(&g_zlog_server.use_count));
	return 0;
}

static int zlog_comm_release(struct inode *inode, struct file *file)
{
	atomic_dec(&g_zlog_server.use_count);
	pr_err("ZLOG_COMM: %s: close successed, use_cnt %d",
	       __func__, atomic_read(&g_zlog_server.use_count));
	return 0;
}

static const struct file_operations zlog_comm_fops = {
	.owner = THIS_MODULE,
	.read = zlog_comm_read,
	.write = zlog_comm_write,
	.unlocked_ioctl = zlog_comm_ioctl,
	.compat_ioctl = zlog_comm_ioctl,
	.open = zlog_comm_open,
	.release = zlog_comm_release,
};

static noinline void __init zlog_comm_create_ctrl_dev(void)
{
	int ret;

	g_zlog_server.miscdev.minor = MISC_DYNAMIC_MINOR;
	g_zlog_server.miscdev.name = kstrdup("zlog_comm", GFP_KERNEL);
	if (!g_zlog_server.miscdev.name)
		return;
	g_zlog_server.miscdev.fops = &zlog_comm_fops;
	g_zlog_server.miscdev.parent = NULL;
	ret = misc_register(&g_zlog_server.miscdev);
	if (ret)
		pr_err("ZLOG_COMM: %s: failed to register misc device for log '%s'!\n",
		       __func__, g_zlog_server.miscdev.name);
	else
		pr_info("ZLOG_COMM: %s: created zlog '%s'\n",
			__func__, g_zlog_server.miscdev.name);
}

static int __init zlog_common_init(void)
{
	unsigned int i;

	memset(&g_zlog_server, 0, sizeof(g_zlog_server));
	for (i = 0; i < ZLOG_CLIENT_MAX; i++)
		mutex_init(&g_zlog_server.client_list[i].client_lock);
	zlog_comm_create_ctrl_dev();
	g_zlog_server.workqueue = alloc_workqueue("%s", 0x6000a, 1,
						  "zlog_handle_service");
	INIT_DELAYED_WORK(&g_zlog_server.report_work, zlog_handle_work);
	atomic_set(&g_zlog_server.use_count, 0);
	g_zlog_server.init_flags = 1;
	pr_info("ZLOG_COMM: %s: %s called\n", __func__, __func__);
	return 0;
}
module_init(zlog_common_init);

MODULE_LICENSE("GPL v2");
MODULE_DESCRIPTION("zlog common");
MODULE_AUTHOR("zte.com.cn");
