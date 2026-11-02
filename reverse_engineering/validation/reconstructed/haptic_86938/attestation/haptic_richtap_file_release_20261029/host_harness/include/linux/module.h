#ifndef HAPTIC_RELEASE_HARNESS_LINUX_MODULE_H
#define HAPTIC_RELEASE_HARNESS_LINUX_MODULE_H

struct module {
	unsigned int identity;
};

extern struct module test_module;
extern unsigned int module_put_calls;
extern struct module *module_put_argument;

#define __this_module test_module
#define THIS_MODULE (&test_module)

static inline void module_put(struct module *module)
{
	module_put_calls++;
	module_put_argument = module;
}

#endif
