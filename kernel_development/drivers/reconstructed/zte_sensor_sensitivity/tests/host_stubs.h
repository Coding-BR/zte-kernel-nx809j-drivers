#ifndef ZTE_SENSOR_SENSITIVITY_HOST_STUBS_H
#define ZTE_SENSOR_SENSITIVITY_HOST_STUBS_H

#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef int32_t s32;
typedef uint64_t dev_t;

#define __init
#define __exit
#ifndef __always_inline
#define __always_inline inline __attribute__((always_inline))
#endif
#define GFP_KERNEL 0x0dc0u
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define MODULE_AUTHOR(value)
#define MODULE_VERSION(value)
#define MODULE_INFO(tag, value)
#define pr_info(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_err(format, ...) fake_log(format, ##__VA_ARGS__)
#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)

struct mutex { unsigned char storage[48]; };
struct class { int marker; };
struct device { void *drvdata; const char *name; };
struct attribute { const char *name; unsigned short mode; };
struct device_attribute {
	struct attribute attr;
	ssize_t (*show)(struct device *, struct device_attribute *, char *);
	ssize_t (*store)(struct device *, struct device_attribute *, const char *, size_t);
};

#define __ATTR(_name, _mode, _show, _store) \
	{ .attr = { .name = #_name, .mode = (_mode) }, .show = (_show), .store = (_store) }

void fake_log(const char *format, ...);
void *kzalloc(size_t size, unsigned int flags);
void kfree(const void *pointer);
void mutex_init(struct mutex *lock);
void mutex_lock(struct mutex *lock);
void mutex_unlock(struct mutex *lock);
struct class *class_create(const char *name);
void class_destroy(const struct class *class_pointer);
int alloc_chrdev_region(dev_t *dev, unsigned int first_minor,
			unsigned int count, const char *name);
struct device *device_create(const struct class *class_pointer,
			     struct device *parent, dev_t dev, void *drvdata,
			     const char *format, ...);
void device_destroy(const struct class *class_pointer, dev_t dev);
void dev_set_drvdata(struct device *dev, void *data);
void *dev_get_drvdata(const struct device *dev);
int device_create_file(struct device *dev, const struct device_attribute *attr);
void device_remove_file(struct device *dev, const struct device_attribute *attr);
int kstrtoint(const char *text, unsigned int base, int *result);

#define module_init(function) static int init_module(void) { return function(); }
#define module_exit(function) static void cleanup_module(void) { function(); }

#endif
