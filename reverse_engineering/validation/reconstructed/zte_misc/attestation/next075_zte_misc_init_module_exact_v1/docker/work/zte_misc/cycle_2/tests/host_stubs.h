#ifndef ZTE_MISC_HOST_STUBS_H
#define ZTE_MISC_HOST_STUBS_H

#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint32_t u32;
typedef int32_t s32;

#define __init
#define __exit
#define GFP_KERNEL 0x0cc0u
#define PAGE_SIZE 4096u
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define EXPORT_SYMBOL(symbol)
#define MODULE_DEVICE_TABLE(type, table)
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define MODULE_INFO(tag, value)
#define MODULE_ALIAS(value)
#define pr_info(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_err(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_warn(format, ...) fake_log(format, ##__VA_ARGS__)
#define dev_warn(device, format, ...) fake_log(format, ##__VA_ARGS__)

struct kernel_param;
struct kernel_param_ops {
	unsigned int flags;
	int (*set)(const char *, const struct kernel_param *);
	int (*get)(char *, const struct kernel_param *);
	void (*free)(void *);
};
struct kernel_param { const char *name; const struct kernel_param_ops *ops; void *arg; };
#define module_param_cb(name, ops, arg, mode)
#define module_param(name, type, mode)

struct device_node {
	const char *path;
	const char *bootargs;
	const char *label;
	int gpio;
	struct device_node *child;
	struct device_node *sibling;
};
struct device { struct device_node *of_node; };
struct platform_device { struct device dev; };
struct of_device_id { const char *compatible; };
struct platform_driver {
	int (*probe)(struct platform_device *);
	void (*remove)(struct platform_device *);
	struct { const char *name; const struct of_device_id *of_match_table; } driver;
};
struct property { int marker; };

struct power_supply { int marker; };
union power_supply_propval { int intval; };

void fake_log(const char *format, ...);
int kstrtoint(const char *text, unsigned int base, int *result);
int kstrtoll(const char *text, unsigned int base, long long *result);
struct power_supply *power_supply_get_by_name(const char *name);
int power_supply_get_property(struct power_supply *supply, int property,
			      union power_supply_propval *value);
void power_supply_put(struct power_supply *supply);
struct device_node *of_find_node_opts_by_path(const char *path, const char *opts);
int of_property_read_string(const struct device_node *node, const char *property,
			    const char **value);
struct device_node *of_get_next_child(const struct device_node *node,
				      struct device_node *previous);
struct property *of_find_property(const struct device_node *node,
				  const char *name, int *length);
const void *of_get_property(const struct device_node *node, const char *name,
			    int *length);
int of_get_named_gpio(const struct device_node *node, const char *name, int index);
char *kstrdup(const char *text, unsigned int flags);
int platform_driver_register(struct platform_driver *driver);
void platform_driver_unregister(struct platform_driver *driver);

#define for_each_child_of_node(parent, child) \
	for ((child) = of_get_next_child((parent), NULL); (child); \
	     (child) = of_get_next_child((parent), (child)))
#define module_init(function) static int init_module(void) { return function(); }
#define module_exit(function) static void cleanup_module(void) { function(); }

#endif
