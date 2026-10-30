// SPDX-License-Identifier: GPL-2.0-only
#include "host_stubs.h"

u32 zlog_host_random;
int zlog_host_register_fail_at;
int zlog_host_misc_result;
unsigned int zlog_host_alloc_count;
unsigned int zlog_host_register_count;
unsigned int zlog_host_unregister_count;
unsigned int zlog_host_record_count;
unsigned int zlog_host_notify_count;
unsigned int zlog_host_queue_count;
unsigned int zlog_host_flush_count;
unsigned int zlog_host_cancel_count;
unsigned int zlog_host_print_count;
struct zlog_mod_info *zlog_host_registered_modules[5];
struct zlog_client *zlog_host_unregistered_clients[5];
const char *zlog_host_records[8];
struct zlog_client *zlog_host_record_clients[8];
struct zlog_client *zlog_host_notify_client;
int zlog_host_notify_event;
struct zlog_test_queue_call zlog_host_queue_calls[8];
struct delayed_work *zlog_host_flushed_works[5];
struct delayed_work *zlog_host_cancelled_works[5];
struct zte_misc_ops *zlog_host_misc_node;

#include "../zlog_test_main.c"
#include "../zlog_test_desc1.c"
#include "../zlog_test_desc2.c"
#include "../zlog_test_desc3.c"
#include "../zlog_test_desc4.c"
#include "../zlog_test_desc5.c"
#include "../zlog_test_state.c"
#include "../zlog_test_wq1.c"
#include "../zlog_test_work1.c"
#include "../zlog_test_wq2.c"
#include "../zlog_test_work2.c"
#include "../zlog_test_wq3.c"
#include "../zlog_test_work3.c"
#include "../zlog_test_wq4.c"
#include "../zlog_test_work4.c"
#include "../zlog_test_wq5.c"
#include "../zlog_test_work5.c"

static struct zlog_client host_clients[5];

struct zlog_client *zlog_register_client(struct zlog_mod_info *module)
{
	unsigned int index = zlog_host_register_count++;

	if (index < 5)
		zlog_host_registered_modules[index] = module;
	if ((int)index + 1 == zlog_host_register_fail_at)
		return NULL;
	if (index >= 5)
		return NULL;
	host_clients[index].client_id = index + 1;
	snprintf(host_clients[index].client_name,
		 sizeof(host_clients[index].client_name), "%s",
		 module->client_name);
	return &host_clients[index];
}

void zlog_unregister_client(struct zlog_client *client)
{
	if (zlog_host_unregister_count < 5)
		zlog_host_unregistered_clients[zlog_host_unregister_count++] = client;
}

int zlog_client_record(struct zlog_client *client, const char *format, ...)
{
	if (zlog_host_record_count < 8) {
		zlog_host_record_clients[zlog_host_record_count] = client;
		zlog_host_records[zlog_host_record_count++] = format;
	}
	return 0;
}

void zlog_client_notify(struct zlog_client *client, int event)
{
	zlog_host_notify_count++;
	zlog_host_notify_client = client;
	zlog_host_notify_event = event;
}

int zte_misc_register_callback(struct zte_misc_ops *callback, void *priv)
{
	(void)priv;
	zlog_host_misc_node = callback;
	return zlog_host_misc_result;
}

#define CHECK(condition) \
	do { \
		if (!(condition)) { \
			fprintf(stderr, "FAIL %s:%d: %s\n", \
				__FILE__, __LINE__, #condition); \
			return 1; \
		} \
	} while (0)

static void reset_observations(void)
{
	zlog_host_register_fail_at = 0;
	zlog_host_misc_result = 0;
	zlog_host_register_count = 0;
	zlog_host_unregister_count = 0;
	zlog_host_record_count = 0;
	zlog_host_notify_count = 0;
	zlog_host_queue_count = 0;
	zlog_host_flush_count = 0;
	zlog_host_cancel_count = 0;
	zlog_host_print_count = 0;
	zlog_host_notify_client = NULL;
	zlog_host_notify_event = 0;
	zlog_host_misc_node = NULL;
	memset(zlog_host_registered_modules, 0,
	       sizeof(zlog_host_registered_modules));
	memset(zlog_host_unregistered_clients, 0,
	       sizeof(zlog_host_unregistered_clients));
	memset(zlog_host_records, 0, sizeof(zlog_host_records));
	memset(zlog_host_record_clients, 0,
	       sizeof(zlog_host_record_clients));
	memset(zlog_host_queue_calls, 0, sizeof(zlog_host_queue_calls));
	memset(zlog_host_flushed_works, 0, sizeof(zlog_host_flushed_works));
	memset(zlog_host_cancelled_works, 0,
	       sizeof(zlog_host_cancelled_works));
}

static int test_init_and_exit(void)
{
	struct delayed_work *works[] = {
		&zlog_test1_work, &zlog_test2_work, &zlog_test3_work,
		&zlog_test4_work, &zlog_test5_work,
	};
	void (*callbacks[])(struct work_struct *) = {
		zlog_test1_thread, zlog_test2_thread, zlog_test3_thread,
		zlog_test4_thread, zlog_test5_thread,
	};
	unsigned int index;

	reset_observations();
	zlog_host_alloc_count = 0;
	zlog_host_misc_result = -EBUSY;
	CHECK(zlog_test_init() == 0);
	CHECK(zlog_host_alloc_count == 5);
	CHECK(zlog_host_misc_node == &zlog_enable_test_node);
	CHECK(strcmp(zlog_enable_test_node.name, "zlog_enable_test") == 0);
	CHECK(zlog_enable_test_node.set == zlog_enable_test_set);
	CHECK(zlog_enable_test_node.get == zlog_enable_test_get);
	CHECK(zlog_enable_test_node.show == NULL);
	CHECK(zlog_enable_test_node.priv == NULL);
	for (index = 0; index < 5; index++)
		CHECK(works[index]->callback == callbacks[index]);
	zlog_test_exit();
	CHECK(zlog_host_print_count >= 3);
	return 0;
}

static int test_set_parse_and_idempotence(void)
{
	reset_observations();
	zlog_enable_test_flag = 0;
	CHECK(zlog_enable_test_set("invalid", NULL) == -EINVAL);
	CHECK(zlog_enable_test_flag == 0);
	CHECK(zlog_host_register_count == 0);
	CHECK(zlog_host_queue_count == 0);

	reset_observations();
	CHECK(zlog_enable_test_set("0", NULL) == 0);
	CHECK(zlog_host_register_count == 0);
	CHECK(zlog_host_unregister_count == 0);
	CHECK(zlog_host_queue_count == 0);
	return 0;
}

static int test_enable_get_poll(void)
{
	struct zlog_mod_info *devices[] = {
		&test_dev_1, &test_dev_2, &test_dev_3, &test_dev_4, &test_dev_5,
	};
	struct delayed_work *works[] = {
		&zlog_test1_work, &zlog_test2_work, &zlog_test3_work,
		&zlog_test4_work, &zlog_test5_work,
	};
	struct workqueue_struct *queues[] = {
		zlog_test1_workqueue, zlog_test2_workqueue, zlog_test3_workqueue,
		zlog_test4_workqueue, zlog_test5_workqueue,
	};
	char buffer[32] = { 0 };
	unsigned int index;

	reset_observations();
	zlog_enable_test_flag = 0;
	zlog_host_register_fail_at = 3;
	CHECK(zlog_enable_test_set("7", NULL) == 0);
	CHECK(zlog_enable_test_flag == 1);
	CHECK(zlog_host_register_count == 5);
	CHECK(client_1 != NULL && client_2 != NULL && client_3 == NULL);
	CHECK(client_4 != NULL && client_5 != NULL);
	CHECK(zlog_host_queue_count == 5);
	for (index = 0; index < 5; index++) {
		CHECK(zlog_host_registered_modules[index] == devices[index]);
		CHECK(zlog_host_queue_calls[index].cpu == 0x20);
		CHECK(zlog_host_queue_calls[index].workqueue == queues[index]);
		CHECK(zlog_host_queue_calls[index].work == works[index]);
		CHECK(zlog_host_queue_calls[index].delay == 0);
	}
	CHECK(zlog_enable_test_get(buffer, NULL) == 1);
	CHECK(strcmp(buffer, "1") == 0);

	zlog_host_random = 2;
	CHECK(poll() == 5);
	zlog_host_random = 3;
	CHECK(poll() == 0);
	return 0;
}

static int test_dump(void)
{
	static const char *const expected[] = {
		"dumpdumpdumpdumpdumpdump1\n",
		"dumpdumpdumpdumpdumpdump2\n",
		"dumpdumpdumpdumpdumpdump3\n",
		"dumpdumpdumpdumpdumpdump4\n",
		"dumpdumpdumpdumpdumpdump5\n",
	};
	unsigned int index;

	reset_observations();
	CHECK(dump(&host_clients[0], 123) == 0);
	CHECK(zlog_host_record_count == 5);
	CHECK(zlog_host_notify_count == 1);
	CHECK(zlog_host_notify_client == &host_clients[0]);
	CHECK(zlog_host_notify_event == 0x40010a);
	for (index = 0; index < 5; index++) {
		CHECK(zlog_host_record_clients[index] == &host_clients[0]);
		CHECK(strcmp(zlog_host_records[index], expected[index]) == 0);
	}
	return 0;
}

static int test_worker(void (*worker)(struct work_struct *),
		       struct zlog_client *client,
		       struct workqueue_struct *queue,
		       struct delayed_work *work,
		       u32 random)
{
	unsigned int index;

	reset_observations();
	zlog_host_random = random;
	worker(&work->work);
	CHECK(zlog_host_record_count == 5);
	CHECK(zlog_host_notify_count == 1);
	CHECK(zlog_host_notify_client == client);
	CHECK(zlog_host_notify_event == 5);
	CHECK(zlog_host_queue_count == 1);
	CHECK(zlog_host_queue_calls[0].cpu == 0x20);
	CHECK(zlog_host_queue_calls[0].workqueue == queue);
	CHECK(zlog_host_queue_calls[0].work == work);
	CHECK(zlog_host_queue_calls[0].delay == (random % 5) * 1000);
	for (index = 0; index < 5; index++)
		CHECK(zlog_host_record_clients[index] == client);
	return 0;
}

static int test_workers(void)
{
	client_1 = &host_clients[0];
	client_2 = &host_clients[1];
	client_3 = &host_clients[2];
	client_4 = &host_clients[3];
	client_5 = &host_clients[4];
	CHECK(test_worker(zlog_test1_thread, client_1, zlog_test1_workqueue,
			  &zlog_test1_work, 1) == 0);
	CHECK(test_worker(zlog_test2_thread, client_2, zlog_test2_workqueue,
			  &zlog_test2_work, 2) == 0);
	CHECK(test_worker(zlog_test3_thread, client_3, zlog_test3_workqueue,
			  &zlog_test3_work, 3) == 0);
	CHECK(test_worker(zlog_test4_thread, client_4, zlog_test4_workqueue,
			  &zlog_test4_work, 4) == 0);
	CHECK(test_worker(zlog_test5_thread, client_5, zlog_test5_workqueue,
			  &zlog_test5_work, 5) == 0);
	return 0;
}

static int test_disable(void)
{
	struct delayed_work *works[] = {
		&zlog_test1_work, &zlog_test2_work, &zlog_test3_work,
		&zlog_test4_work, &zlog_test5_work,
	};
	struct zlog_client *clients[] = {
		&host_clients[0], &host_clients[1], &host_clients[2],
		&host_clients[3], &host_clients[4],
	};
	unsigned int index;

	client_1 = clients[0];
	client_2 = clients[1];
	client_3 = clients[2];
	client_4 = clients[3];
	client_5 = clients[4];
	zlog_enable_test_flag = 1;
	reset_observations();
	CHECK(zlog_enable_test_set("0", NULL) == 0);
	CHECK(zlog_enable_test_flag == 0);
	CHECK(zlog_host_flush_count == 5);
	CHECK(zlog_host_cancel_count == 5);
	CHECK(zlog_host_unregister_count == 5);
	CHECK(zlog_host_queue_count == 0);
	for (index = 0; index < 5; index++) {
		CHECK(zlog_host_flushed_works[index] == works[index]);
		CHECK(zlog_host_cancelled_works[index] == works[index]);
		CHECK(zlog_host_unregistered_clients[index] == clients[index]);
	}
	CHECK(client_1 == NULL && client_2 == NULL && client_3 == NULL);
	CHECK(client_4 == NULL && client_5 == NULL);
	return 0;
}

int main(void)
{
	if (test_init_and_exit() || test_set_parse_and_idempotence() ||
	    test_enable_get_poll() || test_dump() || test_workers() ||
	    test_disable())
		return 1;
	puts("PASS zlog_test host tests");
	return 0;
}
