// SPDX-License-Identifier: GPL-2.0-only
#include <linux/errno.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/random.h>
#include <linux/workqueue.h>

#include "zlog_test.h"

#define ZLOG_TEST_CPU 0x20
#define ZLOG_TEST_WQ_FLAGS 0x6000a
#define ZLOG_TEST_EVENT 5
#define ZLOG_TEST_DUMP_EVENT 0x40010a

static int zlog_enable_test_set(const char *value, const void *priv);
static int zlog_enable_test_get(char *buffer, const void *priv);
static int poll(void);
static int dump(void *client, int type);
static void zlog_test1_thread(struct work_struct *work);
static void zlog_test2_thread(struct work_struct *work);
static void zlog_test3_thread(struct work_struct *work);
static void zlog_test4_thread(struct work_struct *work);
static void zlog_test5_thread(struct work_struct *work);

struct zte_misc_ops zlog_enable_test_node
	__attribute__((section(".data"))) = {
	.name = "zlog_enable_test",
	.set = zlog_enable_test_set,
	.get = zlog_enable_test_get,
};

struct zlog_client_ops ops __attribute__((section(".data"))) = {
	.poll = poll,
	.notify = dump,
};

extern struct zlog_mod_info test_dev_1;
extern struct zlog_mod_info test_dev_2;
extern struct zlog_mod_info test_dev_3;
extern struct zlog_mod_info test_dev_4;
extern struct zlog_mod_info test_dev_5;
extern unsigned int zlog_enable_test_flag;
extern struct zlog_client *client_1;
extern struct zlog_client *client_2;
extern struct zlog_client *client_3;
extern struct zlog_client *client_4;
extern struct zlog_client *client_5;
extern struct workqueue_struct *zlog_test1_workqueue;
extern struct delayed_work zlog_test1_work;
extern struct workqueue_struct *zlog_test2_workqueue;
extern struct delayed_work zlog_test2_work;
extern struct workqueue_struct *zlog_test3_workqueue;
extern struct delayed_work zlog_test3_work;
extern struct workqueue_struct *zlog_test4_workqueue;
extern struct delayed_work zlog_test4_work;
extern struct workqueue_struct *zlog_test5_workqueue;
extern struct delayed_work zlog_test5_work;

static const char *zlog_test_client_name(const struct zlog_client *client)
{
	const struct zlog_client_prefix *prefix = (const void *)client;

	return prefix->client_name;
}

static int zlog_enable_test_set(const char *value, const void *priv)
{
	int requested = 0;
	int ret;

	(void)priv;
	if (sscanf(value, "%d", &requested) == 1) {
		pr_info("ZLOG_TEST: %s: zlog_enable_test_set %d\n",
			__func__, !!requested);
		if (zlog_enable_test_flag == !!requested) {
			pr_info("ZLOG_TEST: %s: zlog_enable_test_flag alreay is %d\n",
				__func__, zlog_enable_test_flag);
			ret = 0;
		} else {
			zlog_enable_test_flag = !!requested;
			if (!requested) {
				flush_delayed_work(&zlog_test1_work);
				cancel_delayed_work_sync(&zlog_test1_work);
				flush_delayed_work(&zlog_test2_work);
				cancel_delayed_work_sync(&zlog_test2_work);
				flush_delayed_work(&zlog_test3_work);
				cancel_delayed_work_sync(&zlog_test3_work);
				flush_delayed_work(&zlog_test4_work);
				cancel_delayed_work_sync(&zlog_test4_work);
				flush_delayed_work(&zlog_test5_work);
				cancel_delayed_work_sync(&zlog_test5_work);

				zlog_unregister_client(client_1);
				zlog_unregister_client(client_2);
				zlog_unregister_client(client_3);
				zlog_unregister_client(client_4);
				zlog_unregister_client(client_5);
				client_1 = NULL;
				client_2 = NULL;
				client_3 = NULL;
				client_4 = NULL;
				client_5 = NULL;
				ret = 0;
			} else {
				client_1 = zlog_register_client(&test_dev_1);
				if (!client_1)
					pr_err("ZLOG_TEST: %s: dsm1 reg failed\n", __func__);
				client_2 = zlog_register_client(&test_dev_2);
				if (!client_2)
					pr_err("ZLOG_TEST: %s: dsm2 reg failed\n", __func__);
				client_3 = zlog_register_client(&test_dev_3);
				if (!client_3)
					pr_err("ZLOG_TEST: %s: dsm3 reg failed\n", __func__);
				client_4 = zlog_register_client(&test_dev_4);
				if (!client_4)
					pr_err("ZLOG_TEST: %s: dsm4 reg failed\n", __func__);
				client_5 = zlog_register_client(&test_dev_5);
				if (!client_5)
					pr_err("ZLOG_TEST: %s: dsm5 reg failed\n", __func__);

				queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test1_workqueue,
						      &zlog_test1_work, 0);
				queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test2_workqueue,
						      &zlog_test2_work, 0);
				queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test3_workqueue,
						      &zlog_test3_work, 0);
				queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test4_workqueue,
						      &zlog_test4_work, 0);
				queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test5_workqueue,
						      &zlog_test5_work, 0);
				ret = 0;
			}
		}
	} else {
		pr_info("ZLOG_TEST: %s: para is invalid\n", __func__);
		ret = -EINVAL;
	}

	return ret;
}

static int zlog_enable_test_get(char *buffer, const void *priv)
{
	(void)priv;
	return snprintf(buffer, PAGE_SIZE, "%d", zlog_enable_test_flag);
}

static int poll(void)
{
	u32 random = get_random_u32();
	int result = (random & 1) ? 0 : ZLOG_TEST_EVENT;

	pr_info("ZLOG_TEST: %s: %s enter random num %u, result %d\n",
		__func__, __func__, random, result);
	return result;
}

static int dump(void *client, int type)
{
	struct zlog_client *zclient = client;

	pr_info("ZLOG_TEST: %s: %s called, type %d\n",
		__func__, __func__, type);
	zlog_client_record(zclient, "dumpdumpdumpdumpdumpdump1\n");
	zlog_client_record(zclient, "dumpdumpdumpdumpdumpdump2\n");
	zlog_client_record(zclient, "dumpdumpdumpdumpdumpdump3\n");
	zlog_client_record(zclient, "dumpdumpdumpdumpdumpdump4\n");
	zlog_client_record(zclient, "dumpdumpdumpdumpdumpdump5\n");
	zlog_client_notify(zclient, ZLOG_TEST_DUMP_EVENT);
	pr_info("ZLOG_TEST: %s: %s zlog_client_notify\n",
		__func__, zlog_test_client_name(zclient));
	return 0;
}

static void zlog_test1_thread(struct work_struct *work)
{
	u32 random = get_random_u32();

	(void)work;
	zlog_client_record(client_1, "111111111111111111111\n");
	zlog_client_record(client_1, "222222222222222222222\n");
	zlog_client_record(client_1, "333333333333333333333\n");
	zlog_client_record(client_1, "444444444444444444444\n");
	zlog_client_record(client_1, "555555555555555555555\n");
	zlog_client_notify(client_1, ZLOG_TEST_EVENT);
	pr_info("ZLOG_TEST: %s: %s zlog_client_notify\n",
		__func__, zlog_test_client_name(client_1));
	queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test1_workqueue,
			      &zlog_test1_work,
			      msecs_to_jiffies((random % 5) * 1000));
}

static void zlog_test2_thread(struct work_struct *work)
{
	u32 random = get_random_u32();

	(void)work;
	zlog_client_record(client_2, "1010101010101010101010\n");
	zlog_client_record(client_2, "2020202020202020202020\n");
	zlog_client_record(client_2, "3030303030303030303030\n");
	zlog_client_record(client_2, "4040404040404040404040\n");
	zlog_client_record(client_2, "5050505050505050505050\n");
	zlog_client_notify(client_2, ZLOG_TEST_EVENT);
	pr_info("ZLOG_TEST: %s: %s zlog_client_notify\n",
		__func__, zlog_test_client_name(client_2));
	queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test2_workqueue,
			      &zlog_test2_work,
			      msecs_to_jiffies((random % 5) * 1000));
}

static void zlog_test3_thread(struct work_struct *work)
{
	u32 random = get_random_u32();

	(void)work;
	zlog_client_record(client_3, "AAAAAAAAAAAAAAAAAAAAA1\n");
	zlog_client_record(client_3, "BBBBBBBBBBBBBBBBBBBBB2\n");
	zlog_client_record(client_3, "CCCCCCCCCCCCCCCCCCCCC3\n");
	zlog_client_record(client_3, "DDDDDDDDDDDDDDDDDDD4\n");
	zlog_client_record(client_3, "EEEEEEEEEEEEEEEEEEEEEEE5\n");
	zlog_client_notify(client_3, ZLOG_TEST_EVENT);
	pr_info("ZLOG_TEST: %s: %s zlog_client_notify\n",
		__func__, zlog_test_client_name(client_3));
	queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test3_workqueue,
			      &zlog_test3_work,
			      msecs_to_jiffies((random % 5) * 1000));
}

static void zlog_test4_thread(struct work_struct *work)
{
	u32 random = get_random_u32();

	(void)work;
	zlog_client_record(client_4, "Kaka is an amazing palyer\n");
	zlog_client_record(client_4, "Ronaldo is an amazing palyer\n");
	zlog_client_record(client_4, "Ronney is an amazing palyer\n");
	zlog_client_record(client_4, "Henny is an amazing palyer\n");
	zlog_client_record(client_4, "Veri is an amazing palyer\n");
	zlog_client_notify(client_4, ZLOG_TEST_EVENT);
	pr_info("ZLOG_TEST: %s: %s zlog_client_notify\n",
		__func__, zlog_test_client_name(client_4));
	queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test4_workqueue,
			      &zlog_test4_work,
			      msecs_to_jiffies((random % 5) * 1000));
}

static void zlog_test5_thread(struct work_struct *work)
{
	u32 random = get_random_u32();

	(void)work;
	zlog_client_record(client_5, "National derby:\n");
	zlog_client_record(client_5, "Real Madrid vs  Barcelona\n");
	zlog_client_record(client_5, "Manchester United vs Chelsea\n");
	zlog_client_record(client_5, "AC milan vs Juventus\n");
	zlog_client_record(client_5, "Bayern Munich vs Hertha BSC\n");
	zlog_client_notify(client_5, ZLOG_TEST_EVENT);
	pr_info("ZLOG_TEST: %s: %s zlog_client_notify\n",
		__func__, zlog_test_client_name(client_5));
	queue_delayed_work_on(ZLOG_TEST_CPU, zlog_test5_workqueue,
			      &zlog_test5_work,
			      msecs_to_jiffies((random % 5) * 1000));
}

static int __init zlog_test_init(void)
{
	int ret;

	zlog_test1_workqueue = alloc_workqueue("%s", ZLOG_TEST_WQ_FLAGS, 1,
					       "zlog_test1_workqueue");
	INIT_DELAYED_WORK(&zlog_test1_work, zlog_test1_thread);
	zlog_test2_workqueue = alloc_workqueue("%s", ZLOG_TEST_WQ_FLAGS, 1,
					       "zlog_test2_workqueue");
	INIT_DELAYED_WORK(&zlog_test2_work, zlog_test2_thread);
	zlog_test3_workqueue = alloc_workqueue("%s", ZLOG_TEST_WQ_FLAGS, 1,
					       "zlog_test3_workqueue");
	INIT_DELAYED_WORK(&zlog_test3_work, zlog_test3_thread);
	zlog_test4_workqueue = alloc_workqueue("%s", ZLOG_TEST_WQ_FLAGS, 1,
					       "zlog_test4_workqueue");
	INIT_DELAYED_WORK(&zlog_test4_work, zlog_test4_thread);
	zlog_test5_workqueue = alloc_workqueue("%s", ZLOG_TEST_WQ_FLAGS, 1,
					       "zlog_test5_workqueue");
	INIT_DELAYED_WORK(&zlog_test5_work, zlog_test5_thread);

	ret = zte_misc_register_callback(&zlog_enable_test_node, NULL);
	if (ret < 0)
		pr_info("ZLOG_TEST: %s: %s zlog_enable_test_node register error ret :%d\n",
			__func__, __func__, ret);
	pr_info("ZLOG_TEST: %s: %s end\n", __func__, __func__);
	return 0;
}
module_init(zlog_test_init);

static void __exit zlog_test_exit(void)
{
	pr_info("ZLOG_TEST: %s: driver remove finished\n", __func__);
}
module_exit(zlog_test_exit);

MODULE_LICENSE("GPL v2");
MODULE_DESCRIPTION("zlog test");
MODULE_AUTHOR("zte.com.cn");
MODULE_INFO(built_with, "DDK");
