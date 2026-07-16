/* SPDX-License-Identifier: GPL-2.0-only */
#define ZLOG_COMMON_HOST_TEST
#include "host_stubs.h"

struct timezone sys_tz;
int host_fail_alloc;
int host_fail_copy;
int host_fail_misc;
int host_fail_vsnprintf;
int host_cancel_calls;
int host_queue_calls;
int host_queue_cpu;
unsigned long host_queue_delay;
int host_misc_calls;
int host_kfree_calls;

static int host_write_calls;
static int host_write_result;
static size_t host_write_length;
static char host_write_buffer[4096];
static int host_callback_calls;
static void *host_callback_client;
static int host_callback_event;

ssize_t zlog_write_internal(const char *buffer, size_t count)
{
	host_write_calls++;
	host_write_length = count;
	if (count < sizeof(host_write_buffer)) {
		memcpy(host_write_buffer, buffer, count);
		host_write_buffer[count] = '\0';
	}
	return host_write_result ? host_write_result : (ssize_t)count;
}

#include "../zlog_common.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static int callback_notify(void *client, int event)
{
	host_callback_calls++;
	host_callback_client = client;
	host_callback_event = event;
	return 0;
}

static const struct zlog_client_ops test_ops = {
	.notify = callback_notify,
};

static struct zlog_mod_info module_info(unsigned int module_no,
					const char *name)
{
	struct zlog_mod_info module = {
		.module_no = module_no,
		.client_name = name,
		.device_name = "device",
		.ic_name = "integrated-circuit",
		.module_name = "module",
		.ops = &test_ops,
	};
	return module;
}

static void reset_host(void)
{
	memset(&g_zlog_server, 0, sizeof(g_zlog_server));
	host_fail_alloc = 0;
	host_fail_copy = 0;
	host_fail_misc = 0;
	host_fail_vsnprintf = 0;
	host_cancel_calls = 0;
	host_queue_calls = 0;
	host_queue_cpu = -1;
	host_queue_delay = 0;
	host_misc_calls = 0;
	host_kfree_calls = 0;
	host_write_calls = 0;
	host_write_result = 0;
	host_write_length = 0;
	memset(host_write_buffer, 0, sizeof(host_write_buffer));
	host_callback_calls = 0;
	host_callback_client = NULL;
	host_callback_event = 0;
	sys_tz.tz_minuteswest = 0;
}

static bool test_init_and_control_device(void)
{
	unsigned int i;

	reset_host();
	REQUIRE(zlog_common_init() == 0);
	REQUIRE(g_zlog_server.init_finished == 1);
	REQUIRE(g_zlog_server.workqueue != NULL);
	REQUIRE(g_zlog_server.report_work.work.callback == zlog_handle_work);
	REQUIRE(g_zlog_server.miscdev.minor == MISC_DYNAMIC_MINOR);
	REQUIRE(strcmp(g_zlog_server.miscdev.name, "zlog_comm") == 0);
	REQUIRE(g_zlog_server.miscdev.fops == &zlog_comm_fops);
	REQUIRE(host_misc_calls == 1);
	for (i = 0; i < ZLOG_CLIENT_MAX; i++)
		REQUIRE(g_zlog_server.client_list[i].client_lock.initialized == 1);

	reset_host();
	host_fail_misc = 1;
	REQUIRE(zlog_common_init() == 0);
	REQUIRE(g_zlog_server.init_finished == 1);
	return true;
}

static bool test_register_record_notify_and_worker(void)
{
	struct zlog_mod_info module = module_info(7, "client");
	struct zlog_client *client;
	struct zlog_client *duplicate;
	int written;

	reset_host();
	REQUIRE(zlog_register_client(&module) == NULL);
	REQUIRE(zlog_common_init() == 0);
	REQUIRE(zlog_register_client(NULL) == NULL);
	client = zlog_register_client(&module);
	REQUIRE(client == &g_zlog_server.client_list[0]);
	REQUIRE(client->registered == 1);
	REQUIRE(client->client_id == 0);
	REQUIRE(client->module_no == 7);
	REQUIRE(client->record_capacity == ZLOG_RECORD_SIZE);
	REQUIRE(client->record_buffer != NULL);
	REQUIRE(client->flags & (1UL << ZLOG_FLAG_REGISTERED));
	REQUIRE(strcmp(client->client_name, "client") == 0);
	REQUIRE(strcmp(client->device_name, "device") == 0);
	REQUIRE(strcmp(client->ic_name, "integrated-circuit") == 0);
	REQUIRE(strcmp(client->module_name, "module") == 0);

	duplicate = zlog_register_client(&module);
	REQUIRE(duplicate == client);

	written = zlog_client_record(client, "fault=%d", 42);
	REQUIRE(written == 8);
	REQUIRE(client->record_length == 8);
	REQUIRE(strcmp(client->record_buffer, "fault=42") == 0);
	REQUIRE(client->flags & (1UL << ZLOG_FLAG_RECORD));

	zlog_client_notify(client, 0x1234);
	REQUIRE(client->event_no == 0x1234);
	REQUIRE(client->flags & (1UL << ZLOG_FLAG_NOTIFY));
	REQUIRE(host_cancel_calls == 1);
	REQUIRE(host_queue_calls == 1);
	REQUIRE(host_queue_cpu == ZLOG_WORK_CPU);
	REQUIRE(host_queue_delay == ZLOG_WORK_DELAY);

	zlog_handle_work(NULL);
	REQUIRE(host_write_calls == 1);
	REQUIRE(host_write_length > 8);
	REQUIRE(strstr(host_write_buffer, "MOD_NO: 7; ") != NULL);
	REQUIRE(strstr(host_write_buffer, "ENO: 0x7001234; ") != NULL);
	REQUIRE(strstr(host_write_buffer, "CONTENT: fault=42") != NULL);
	REQUIRE(client->event_no == 0);
	REQUIRE(client->record_length == 0);
	REQUIRE(!(client->flags & (1UL << ZLOG_FLAG_REGISTERED)));
	return true;
}

static bool test_record_failures(void)
{
	struct zlog_mod_info module = module_info(9, "record-fail");
	struct zlog_client *client;

	reset_host();
	REQUIRE(zlog_client_record(NULL, "x") == 0);
	REQUIRE(zlog_common_init() == 0);
	REQUIRE(zlog_client_record(NULL, "x") == 0);
	client = zlog_register_client(&module);
	REQUIRE(client != NULL);
	host_fail_vsnprintf = 1;
	REQUIRE(zlog_client_record(client, "x") == -EINVAL);
	REQUIRE(client->record_length == 0);
	client->record_length = ZLOG_RECORD_SIZE;
	REQUIRE(zlog_client_record(client, "x") == 0);
	return true;
}

static bool test_registration_limits_and_allocation(void)
{
	struct zlog_mod_info modules[ZLOG_CLIENT_MAX + 1];
	char names[ZLOG_CLIENT_MAX + 1][16];
	unsigned int i;

	reset_host();
	REQUIRE(zlog_common_init() == 0);
	host_fail_alloc = 1;
	modules[0] = module_info(100, "alloc-fail");
	REQUIRE(zlog_register_client(&modules[0]) == NULL);
	for (i = 0; i < ZLOG_CLIENT_MAX; i++) {
		snprintf(names[i], sizeof(names[i]), "client-%u", i);
		modules[i] = module_info(1000 + i, names[i]);
		REQUIRE(zlog_register_client(&modules[i]) == &g_zlog_server.client_list[i]);
	}
	modules[ZLOG_CLIENT_MAX] = module_info(5000, "overflow");
	REQUIRE(zlog_register_client(&modules[ZLOG_CLIENT_MAX]) == NULL);
	return true;
}

static bool test_command_file_operations(void)
{
	struct zlog_mod_info module = module_info(0x55, "command");
	struct zlog_client *client;
	struct zlog_command command = { .module_no = 0x55 };
	loff_t offset = 0;

	reset_host();
	REQUIRE(zlog_common_init() == 0);
	client = zlog_register_client(&module);
	REQUIRE(client != NULL);
	REQUIRE(zlog_comm_write(NULL, (const char *)&command,
				  sizeof(command) - 1, &offset) == -EINVAL);
	host_fail_copy = 1;
	REQUIRE(zlog_comm_write(NULL, (const char *)&command,
				  sizeof(command), &offset) == -ENOMEM);
	host_fail_copy = 0;
	REQUIRE(zlog_comm_write(NULL, (const char *)&command,
				  sizeof(command), &offset) == sizeof(command));
	REQUIRE(host_callback_calls == 1);
	REQUIRE(host_callback_client == client);
	REQUIRE(host_callback_event == 0x55);
	REQUIRE(zlog_comm_read(NULL, NULL, 73, &offset) == 73);
	REQUIRE(zlog_comm_ioctl(NULL, 1, 2) == 0);
	REQUIRE(zlog_comm_open(NULL, NULL) == 0);
	REQUIRE(atomic_read(&g_zlog_server.use_count) == 1);
	REQUIRE(zlog_comm_release(NULL, NULL) == 0);
	REQUIRE(atomic_read(&g_zlog_server.use_count) == 0);
	return true;
}

static bool test_unregister_stock_semantics(void)
{
	struct zlog_mod_info module = module_info(23, "unregister");
	struct zlog_client *client;
	char *released_buffer;

	reset_host();
	REQUIRE(zlog_common_init() == 0);
	client = zlog_register_client(&module);
	REQUIRE(client != NULL);
	client->event_no = 99;
	released_buffer = client->record_buffer;
	zlog_unregister_client(client);
	REQUIRE(host_kfree_calls == 1);
	REQUIRE(client->record_buffer == released_buffer);
	REQUIRE(client->module_no == 23);
	REQUIRE(client->event_no == 99);
	REQUIRE(client->record_capacity == ZLOG_RECORD_SIZE);
	REQUIRE(client->registered == 0);
	REQUIRE(client->client_name[0] == '\0');
	REQUIRE(client->device_name[0] == '\0');
	REQUIRE(client->ic_name[0] == '\0');
	REQUIRE(client->module_name[0] == '\0');
	REQUIRE(client->flags & (1UL << ZLOG_FLAG_UNREGISTER));
	return true;
}

static bool test_worker_allocation_failure(void)
{
	struct zlog_mod_info module = module_info(31, "worker-fail");
	struct zlog_client *client;

	reset_host();
	REQUIRE(zlog_common_init() == 0);
	client = zlog_register_client(&module);
	REQUIRE(client != NULL);
	REQUIRE(zlog_client_record(client, "payload") == 7);
	zlog_client_notify(client, 1);
	host_fail_alloc = 1;
	zlog_handle_work(NULL);
	REQUIRE(host_write_calls == 0);
	REQUIRE(client->record_length == 0);
	return true;
}

int main(void)
{
	REQUIRE(test_init_and_control_device());
	REQUIRE(test_register_record_notify_and_worker());
	REQUIRE(test_record_failures());
	REQUIRE(test_registration_limits_and_allocation());
	REQUIRE(test_command_file_operations());
	REQUIRE(test_unregister_stock_semantics());
	REQUIRE(test_worker_allocation_failure());
	puts("PASS zlog_common host tests");
	return 0;
}
