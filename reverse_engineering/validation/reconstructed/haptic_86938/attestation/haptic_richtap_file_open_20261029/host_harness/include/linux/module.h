#ifndef HAPTIC_OPEN_HARNESS_LINUX_MODULE_H
#define HAPTIC_OPEN_HARNESS_LINUX_MODULE_H

#include <stdbool.h>

struct module {
	unsigned int identity;
};

extern struct module test_module;
extern bool try_module_get_result;
extern unsigned int try_module_get_calls;
extern struct module *try_module_get_argument;

#define THIS_MODULE (&test_module)

static inline bool try_module_get(struct module *module)
{
	try_module_get_calls++;
	try_module_get_argument = module;
	return try_module_get_result;
}

#endif
