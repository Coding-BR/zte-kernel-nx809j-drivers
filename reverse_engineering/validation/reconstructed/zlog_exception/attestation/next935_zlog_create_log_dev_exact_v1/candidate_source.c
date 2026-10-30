// SPDX-License-Identifier: GPL-2.0-only
/*
 * Reconstructed from zlog_exception.ko extracted from the NX809J vendor_boot.
 * Static parity is tracked by reconstruction_map.json and validation evidence.
 */

#ifdef ZLOG_EXCEPTION_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/list.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/poll.h>
#include <linux/slab.h>
#include <linux/uaccess.h>
#endif

#include "zlog_exception.h"

#define ZLOG_DEVICE_NAME "zlog_exception"
#define ZLOG_FRAGMENT_LIMIT 0x400

struct zlog_state g_zlog_info;

ssize_t zlog_write_internal(const char *buffer, size_t count)
{
	struct zlog_fragment *fragment;

	if (g_zlog_info.fragment_count > ZLOG_FRAGMENT_LIMIT) {
		pr_err("ZLOG_EXCEPTION: %s: zlog cache is full\n", __func__);
		return -ENOMEM;
	}

	fragment = kzalloc(sizeof(*fragment), GFP_KERNEL);
	if (!fragment) {
		pr_err("ZLOG_EXCEPTION: %s: falied to kzalloc fragment info\n",
		       __func__);
		return -ENOMEM;
	}

	fragment->length = count + 1;
	fragment->data = kzalloc(fragment->length, GFP_KERNEL);
	if (!fragment->data) {
		pr_err("ZLOG_EXCEPTION: %s: falied to vzalloc fragment info\n",
		       __func__);
		if (fragment->data)
			kfree(fragment->data);
		kfree(fragment);
		return 0;
	}

	memcpy(fragment->data, buffer, count);
	fragment->data[count] = '\0';

	mutex_lock(&g_zlog_info.list_mutex);
	list_add(&fragment->node, &g_zlog_info.fragments);
	g_zlog_info.fragment_count++;
	g_zlog_info.data_ready = 1;
	mutex_unlock(&g_zlog_info.list_mutex);
	wake_up_interruptible(&g_zlog_info.poll_wq);

	return count;
}
EXPORT_SYMBOL(zlog_write_internal);

static ssize_t zlog_read(struct file *file, char __user *buffer, size_t count,
			 loff_t *position)
{
	struct zlog_fragment *fragment = NULL;
	ssize_t length;
	int ret;

	mutex_lock(&g_zlog_info.list_mutex);
	ret = list_empty(&g_zlog_info.fragments);
	mutex_unlock(&g_zlog_info.list_mutex);

	if (ret) {
		g_zlog_info.data_ready = 0;
		ret = wait_event_interruptible(g_zlog_info.poll_wq,
					       g_zlog_info.data_ready);
		if (ret) {
			pr_err("ZLOG_EXCEPTION: %s: wait event interruptible failed\n",
			       __func__);
			return -EAGAIN;
		}
	}

	mutex_lock(&g_zlog_info.list_mutex);
	if (!list_empty(&g_zlog_info.fragments)) {
		fragment = list_last_entry(&g_zlog_info.fragments,
					   struct zlog_fragment, node);
		list_del(&fragment->node);
		g_zlog_info.fragment_count--;
	}
	mutex_unlock(&g_zlog_info.list_mutex);

	if (!fragment) {
		pr_err("ZLOG_EXCEPTION: %s: log_msg is null\n", __func__);
		return -EAGAIN;
	}

	length = min_t(size_t, count, fragment->length);
	if (copy_to_user(buffer, fragment->data, length)) {
		pr_err("ZLOG_EXCEPTION: %s: %s copy_to_user failed!\n",
		       __func__, __func__);
		length = -EFAULT;
	}

	if (fragment->data)
		kfree(fragment->data);
	kfree(fragment);
	return length;
}

static ssize_t zlog_write(struct file *file, const char __user *buffer,
			  size_t count, loff_t *position)
{
	struct zlog_fragment *fragment;
	ssize_t ret;

	if (unlikely(g_zlog_info.fragment_count >= ZLOG_FRAGMENT_LIMIT + 1)) {
		pr_err("ZLOG_EXCEPTION: %s: zlog cache is full\n", __func__);
		return -ENOMEM;
	}

	fragment = kzalloc(sizeof(*fragment), GFP_KERNEL);
	if (!fragment) {
		pr_err("ZLOG_EXCEPTION: %s: falied to kzalloc fragment info\n",
		       __func__);
		return -ENOMEM;
	}

	fragment->length = count + 1;
	fragment->data = kzalloc(fragment->length, GFP_KERNEL);
	if (!fragment->data) {
		ret = 0;
		pr_err("ZLOG_EXCEPTION: %s: falied to vzalloc fragment info\n",
		       __func__);
		goto fragment_error;
	}

	if (copy_from_user(fragment->data, buffer, count)) {
		ret = -ENOMEM;
		pr_err("ZLOG_EXCEPTION: %s: copy from user failed\n", __func__);
		goto fragment_error;
	}
	fragment->data[count] = '\0';

	mutex_lock(&g_zlog_info.list_mutex);
	list_add(&fragment->node, &g_zlog_info.fragments);
	g_zlog_info.fragment_count++;
	g_zlog_info.data_ready = 1;
	mutex_unlock(&g_zlog_info.list_mutex);
	wake_up_interruptible(&g_zlog_info.poll_wq);

	return count;

fragment_error:
	if (fragment->data)
		kfree(fragment->data);
	kfree(fragment);
	return ret;
}

static __poll_t zlog_poll(struct file *file, struct poll_table_struct *wait)
{
	__poll_t mask = 0;

	if (!(file->f_mode & FMODE_READ))
		return 0;

	poll_wait(file, &g_zlog_info.poll_wq, wait);
	mutex_lock(&g_zlog_info.list_mutex);
	if (!list_empty(&g_zlog_info.fragments))
		mask = EPOLLIN | EPOLLRDNORM;
	mutex_unlock(&g_zlog_info.list_mutex);

	return mask;
}

static long zlog_ioctl(struct file *file, unsigned int command,
		       unsigned long argument)
{
	return 0;
}

static int zlog_open(struct inode *inode, struct file *file)
{
	atomic_inc(&g_zlog_info.use_count);
	pr_err("ZLOG_EXCEPTION: %s: open successed, use_cnt %d",
	       __func__, atomic_read(&g_zlog_info.use_count));
	return 0;
}

static int zlog_release(struct inode *inode, struct file *file)
{
	atomic_dec(&g_zlog_info.use_count);
	pr_err("ZLOG_EXCEPTION: %s: close successed, use_cnt %d",
	       __func__, atomic_read(&g_zlog_info.use_count));
	return 0;
}

static const struct file_operations zlog_fops = {
	.owner = THIS_MODULE,
	.read = zlog_read,
	.write = zlog_write,
	.poll = zlog_poll,
	.unlocked_ioctl = zlog_ioctl,
	.compat_ioctl = zlog_ioctl,
	.open = zlog_open,
	.release = zlog_release,
};

static int __init zlog_create_log_dev(void)
{
	int ret;

	g_zlog_info.miscdev.minor = MISC_DYNAMIC_MINOR;
	g_zlog_info.miscdev.name = kstrdup(ZLOG_DEVICE_NAME, GFP_KERNEL);
	if (!g_zlog_info.miscdev.name)
		return -ENOMEM;

	g_zlog_info.miscdev.fops = &zlog_fops;
	g_zlog_info.miscdev.parent = NULL;
	ret = misc_register(&g_zlog_info.miscdev);
	if (unlikely(ret))
		goto register_failed;

	pr_info("ZLOG_EXCEPTION: %s: created zlog '%s', ret =%d\n",
		__func__, g_zlog_info.miscdev.name, 0);
	return 0;

register_failed:
	pr_err("ZLOG_EXCEPTION: %s: failed to register misc device for log '%s'!\n",
	       __func__, g_zlog_info.miscdev.name);
	return ret;
}

static int __init zlog_init(void)
{
	int ret;

	ret = zlog_create_log_dev();
	if (unlikely(ret))
		goto create_failed;

	init_waitqueue_head(&g_zlog_info.poll_wq);
	mutex_init(&g_zlog_info.list_mutex);
	INIT_LIST_HEAD(&g_zlog_info.fragments);
	atomic_set(&g_zlog_info.use_count, 0);
	pr_info("ZLOG_EXCEPTION: %s: zlog_init driver finished\n", __func__);
	return ret;

create_failed:
	pr_err("ZLOG_EXCEPTION: %s: failed to create misc device for zlog !\n",
	       __func__);
	return ret;
}
module_init(zlog_init);

static void __exit zlog_exit(void)
{
	pr_info("ZLOG_EXCEPTION: %s: driver remove finished\n", __func__);
}
module_exit(zlog_exit);

MODULE_INFO(built_with, "DDK");
MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("zte.charger <zte.charger@zte.com.cn>");
MODULE_DESCRIPTION("Charge policy Service Driver");
