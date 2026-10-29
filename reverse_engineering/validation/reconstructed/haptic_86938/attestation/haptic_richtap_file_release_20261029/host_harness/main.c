#include <stdio.h>
#include <stddef.h>

#include <linux/fs.h>
#include <linux/module.h>

#ifndef CANDIDATE_FUNCTION
#define CANDIDATE_FUNCTION richtap_file_release
#endif

struct module test_module = { .identity = 0x86938 };
unsigned int module_put_calls;
struct module *module_put_argument;

int stock_model(struct inode *inode, struct file *file);
int CANDIDATE_FUNCTION(struct inode *inode, struct file *file);

static void reset_observation(void)
{
	module_put_calls = 0;
	module_put_argument = NULL;
}

int main(void)
{
	struct inode inode = { .opaque = 0x11 };
	struct file file = { .opaque = 0x22 };
	unsigned int stock_calls;
	struct module *stock_argument;
	int stock_result;
	int candidate_result;

	reset_observation();
	stock_result = stock_model(&inode, &file);
	stock_calls = module_put_calls;
	stock_argument = module_put_argument;

	reset_observation();
	candidate_result = CANDIDATE_FUNCTION(&inode, &file);
	if (candidate_result != stock_result) {
		fprintf(stderr, "return mismatch: stock=%d candidate=%d\n",
			stock_result, candidate_result);
		return 1;
	}
	if (module_put_calls != stock_calls) {
		fprintf(stderr, "module_put count mismatch: stock=%u candidate=%u\n",
			stock_calls, module_put_calls);
		return 2;
	}
	if (module_put_argument != stock_argument) {
		fprintf(stderr, "module_put argument mismatch\n");
		return 3;
	}

	printf("PASS: return=%d module_put_calls=%u argument_is_THIS_MODULE=%s\n",
	       candidate_result, module_put_calls,
	       module_put_argument == THIS_MODULE ? "yes" : "no");
	return 0;
}
