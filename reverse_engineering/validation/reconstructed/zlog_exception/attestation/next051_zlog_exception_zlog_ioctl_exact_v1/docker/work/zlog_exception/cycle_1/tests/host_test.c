// SPDX-License-Identifier: GPL-2.0-only
#define ZLOG_EXCEPTION_HOST_TEST

int zlog_test_alloc_call;
int zlog_test_alloc_fail_at;
int zlog_test_copy_from_fail;
int zlog_test_copy_to_fail;
int zlog_test_wait_result;
int zlog_test_misc_register_result;

#include "../zlog_exception.c"

#define CHECK(condition) \
	do { \
		if (!(condition)) { \
			fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #condition); \
			return 1; \
		} \
	} while (0)

static void reset_controls(void)
{
	zlog_test_alloc_call = 0;
	zlog_test_alloc_fail_at = 0;
	zlog_test_copy_from_fail = 0;
	zlog_test_copy_to_fail = 0;
	zlog_test_wait_result = -EINTR;
	zlog_test_misc_register_result = 0;
}

static void reset_queue(void)
{
	struct zlog_fragment *fragment;

	while (!list_empty(&g_zlog_info.fragments)) {
		fragment = list_last_entry(&g_zlog_info.fragments,
					   struct zlog_fragment, node);
		list_del(&fragment->node);
		free(fragment->data);
		free(fragment);
	}
	g_zlog_info.fragment_count = 0;
	g_zlog_info.data_ready = 0;
}

static int test_init_open_ioctl_exit(void)
{
	struct file file = { .f_mode = FMODE_READ };
	struct inode inode = { 0 };

	reset_controls();
	CHECK(zlog_init() == 0);
	CHECK(g_zlog_info.miscdev.minor == MISC_DYNAMIC_MINOR);
	CHECK(strcmp(g_zlog_info.miscdev.name, "zlog_exception") == 0);
	CHECK(g_zlog_info.miscdev.fops == &zlog_fops);
	CHECK(list_empty(&g_zlog_info.fragments));
	CHECK(zlog_open(&inode, &file) == 0);
	CHECK(atomic_read(&g_zlog_info.use_count) == 1);
	CHECK(zlog_ioctl(&file, 0x1234, 0x5678) == 0);
	CHECK(zlog_release(&inode, &file) == 0);
	CHECK(atomic_read(&g_zlog_info.use_count) == 0);
	zlog_exit();
	return 0;
}

static int test_fifo_and_poll(void)
{
	struct file readable = { .f_mode = FMODE_READ };
	struct file write_only = { .f_mode = 0 };
	struct poll_table_struct wait = { 0 };
	char output[32] = { 0 };
	loff_t position = 0;

	reset_queue();
	CHECK(zlog_write_internal("first", 5) == 5);
	CHECK(zlog_write(&readable, "second", 6, &position) == 6);
	CHECK(g_zlog_info.fragment_count == 2);
	CHECK(zlog_poll(&write_only, &wait) == 0);
	CHECK(zlog_poll(&readable, &wait) == (EPOLLIN | EPOLLRDNORM));
	CHECK(zlog_read(&readable, output, sizeof(output), &position) == 6);
	CHECK(memcmp(output, "first\0", 6) == 0);
	memset(output, 0, sizeof(output));
	CHECK(zlog_read(&readable, output, sizeof(output), &position) == 7);
	CHECK(memcmp(output, "second\0", 7) == 0);
	CHECK(g_zlog_info.fragment_count == 0);
	return 0;
}

static int test_failure_paths(void)
{
	struct file file = { .f_mode = FMODE_READ };
	char output[8];
	loff_t position = 0;

	reset_queue();
	reset_controls();
	g_zlog_info.fragment_count = ZLOG_FRAGMENT_LIMIT + 1;
	CHECK(zlog_write_internal("x", 1) == -ENOMEM);
	CHECK(zlog_write(&file, "x", 1, &position) == -ENOMEM);
	g_zlog_info.fragment_count = 0;

	zlog_test_alloc_fail_at = 1;
	CHECK(zlog_write_internal("x", 1) == -ENOMEM);
	reset_controls();
	zlog_test_alloc_fail_at = 2;
	CHECK(zlog_write_internal("x", 1) == 0);

	reset_controls();
	zlog_test_copy_from_fail = 1;
	CHECK(zlog_write(&file, "x", 1, &position) == -ENOMEM);
	CHECK(g_zlog_info.fragment_count == 0);

	reset_controls();
	CHECK(zlog_write_internal("x", 1) == 1);
	zlog_test_copy_to_fail = 1;
	CHECK(zlog_read(&file, output, sizeof(output), &position) == -EFAULT);
	CHECK(g_zlog_info.fragment_count == 0);

	reset_controls();
	zlog_test_wait_result = -EINTR;
	CHECK(zlog_read(&file, output, sizeof(output), &position) == -EAGAIN);

	reset_controls();
	zlog_test_misc_register_result = -EBUSY;
	free((void *)g_zlog_info.miscdev.name);
	g_zlog_info.miscdev.name = NULL;
	CHECK(zlog_create_log_dev() == -EBUSY);
	return 0;
}

int main(void)
{
	if (test_init_open_ioctl_exit() || test_fifo_and_poll() ||
	    test_failure_paths())
		return 1;
	reset_queue();
	free((void *)g_zlog_info.miscdev.name);
	puts("PASS zlog_exception host tests");
	return 0;
}
