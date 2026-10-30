#ifndef FTMMOD_HOST_SHIM_H
#define FTMMOD_HOST_SHIM_H
/* Test doubles only. No kernel ABI or hardware claim is made by this header. */
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint32_t u32;
typedef uint64_t u64;
typedef uint8_t u8;
#define __iomem
#define __force
#define __init
#define __exit
#define EFAULT 14
#define ENODEV 19
#define ENOMEM 12
#define EINVAL 22
struct kobject { unsigned int marker; };
struct device { struct kobject kobj; };
struct device_node { unsigned int marker; };
struct attribute { const char *name; unsigned int mode; };
struct device_attribute {
 struct attribute attr;
 ssize_t (*show)(struct device *, struct device_attribute *, char *);
 ssize_t (*store)(struct device *, struct device_attribute *, const char *, size_t);
};
struct attribute_group { const char *name; struct attribute **attrs; };
struct platform_device { const char *name; int id; struct device dev; };
struct platform_driver { void (*remove)(struct platform_device *); struct { const char *name; } driver; };
struct qseecom_scm_desc { u32 arginfo; u64 args[10]; u64 ret[3]; };
extern bool arm64_use_ng_mappings;
extern unsigned char test_module;
#define THIS_MODULE (&test_module)
#define __ATTR(n, m, sh, st) { .attr = { #n, m }, .show = sh, .store = st }
#define module_init(fn)
#define module_exit(fn)
#define MODULE_INFO(k, v)
#define MODULE_DESCRIPTION(v)
#define MODULE_LICENSE(v)
#define pr_info(...) test_log(6, __VA_ARGS__)
#define pr_err(...) test_log(3, __VA_ARGS__)
#define dsb(scope) test_barrier(#scope)
#define snprintf test_snprintf
#define sscanf test_sscanf
int test_snprintf(char *, size_t, const char *, ...);
int test_sscanf(const char *, const char *, ...);
void test_log(int, const char *, ...);
void test_barrier(const char *);
int platform_device_register(struct platform_device *);
int __platform_driver_probe(struct platform_driver *, int (*)(struct platform_device *), void *);
void platform_driver_unregister(struct platform_driver *);
void platform_device_unregister(struct platform_device *);
struct device_node *of_find_compatible_node(struct device_node *, const char *, const char *);
void *of_iomap(struct device_node *, int);
void *ioremap_prot(unsigned long, size_t, unsigned long);
int sysfs_create_group(struct kobject *, const struct attribute_group *);
int qcom_scm_qseecom_call(u32, struct qseecom_scm_desc *, bool);
#endif
