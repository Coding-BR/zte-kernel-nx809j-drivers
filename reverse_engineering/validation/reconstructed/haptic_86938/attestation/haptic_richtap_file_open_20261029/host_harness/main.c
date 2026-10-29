#include <stdbool.h>
#include <stdio.h>

#include <linux/fs.h>
#include <linux/module.h>
#include "haptic_86938_internal.h"

#ifndef CANDIDATE_FUNCTION
#define CANDIDATE_FUNCTION richtap_file_open
#endif

struct aw_haptic {
	unsigned long cookie;
};

struct module test_module = { .identity = 0x86938 };
bool try_module_get_result;
unsigned int try_module_get_calls;
struct module *try_module_get_argument;

int stock_model(struct inode *inode, struct file *file);
int CANDIDATE_FUNCTION(struct inode *inode, struct file *file);

static int run_case(bool get_succeeds)
{
	struct inode inode = { .opaque = 0x11 };
	struct aw_haptic haptic = { .cookie = 0x86938 };
	char sentinel;
	struct file stock_file = {
		.private_data = &sentinel,
		.opaque = 0x22,
	};
	struct file candidate_file = {
		.private_data = &sentinel,
		.opaque = 0x22,
	};
	unsigned int stock_calls;
	struct module *stock_argument;
	int stock_result;
	int candidate_result;

	g_aw_haptic = &haptic;
	try_module_get_result = get_succeeds;
	try_module_get_calls = 0;
	try_module_get_argument = NULL;
	stock_result = stock_model(&inode, &stock_file);
	stock_calls = try_module_get_calls;
	stock_argument = try_module_get_argument;

	try_module_get_calls = 0;
	try_module_get_argument = NULL;
	candidate_result = CANDIDATE_FUNCTION(&inode, &candidate_file);
	if (candidate_result != stock_result) {
		fprintf(stderr, "return mismatch: stock=%d candidate=%d\n",
			stock_result, candidate_result);
		return 1;
	}
	if (try_module_get_calls != stock_calls) {
		fprintf(stderr, "try_module_get count mismatch: stock=%u candidate=%u\n",
			stock_calls, try_module_get_calls);
		return 2;
	}
	if (try_module_get_argument != stock_argument ||
	    try_module_get_argument != THIS_MODULE) {
		fprintf(stderr, "try_module_get argument mismatch\n");
		return 3;
	}
	if (candidate_file.private_data != stock_file.private_data) {
		fprintf(stderr, "private_data mismatch: stock=%p candidate=%p\n",
			stock_file.private_data, candidate_file.private_data);
		return 4;
	}
	if (get_succeeds && candidate_file.private_data != g_aw_haptic) {
		fprintf(stderr, "successful open did not save g_aw_haptic\n");
		return 5;
	}
	if (!get_succeeds && candidate_file.private_data != &sentinel) {
		fprintf(stderr, "failed open changed private_data\n");
		return 6;
	}
	return 0;
}

int main(void)
{
	if (run_case(false) != 0)
		return 1;
	if (run_case(true) != 0)
		return 2;
	puts("PASS: failure returns -ENODEV without storing; success stores g_aw_haptic; one try_module_get(THIS_MODULE) per call");
	return 0;
}
