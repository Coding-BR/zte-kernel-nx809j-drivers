#ifndef RDBG_HOST_SHIM_H
#define RDBG_HOST_SHIM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdarg.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long ssize_t;
typedef int64_t loff_t;
#define dev_t uint32_t

#define __user
#define __init
#define __exit
#define __used __attribute__((used))
#define __packed __attribute__((packed))
#define GFP_KERNEL 0
#define THIS_MODULE ((struct module *)0x1)
#define module_init(function)
#define module_exit(function)
#define static_assert(condition, ...) _Static_assert(condition, #condition)

#define EDOM 33
#define EINVAL 22
#define ENOMEM 12
#define ENODEV 19
#define EIO 5
#define EACCES 13

#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))

struct module;
struct cdev {
	struct module *owner;
	unsigned char opaque[0x88 - sizeof(void *)];
};
struct class { unsigned char marker; };
struct device { unsigned char marker; };
struct completion { u64 opaque[4]; };
struct mutex { u64 opaque[5]; };
struct module { unsigned char marker; };
struct inode { unsigned char marker; };
struct file { void *private_data; };
struct platform_device { struct device dev; };
struct of_device_id { const char *compatible; };

struct file_operations {
	ssize_t (*read)(struct file *, char __user *, size_t, loff_t *);
	ssize_t (*write)(struct file *, const char __user *, size_t, loff_t *);
	int (*open)(struct inode *, struct file *);
	int (*release)(struct inode *, struct file *);
};

struct platform_driver {
	int (*probe)(struct platform_device *);
	struct {
		const char *name;
		const struct of_device_id *of_match_table;
	} driver;
};

void rdbg_host_log(int level, const char *format, ...);
#define pr_err(...) rdbg_host_log(3, __VA_ARGS__)

void cdev_init(struct cdev *cdev, const struct file_operations *operations);
int cdev_add(struct cdev *cdev, dev_t dev, unsigned int count);
void cdev_del(struct cdev *cdev);
struct class *class_create(const char *name);
void class_destroy(struct class *class);
struct device *device_create(struct class *class, struct device *parent,
			     dev_t dev, void *data, const char *format, ...);
void device_destroy(struct class *class, dev_t dev);
int alloc_chrdev_region(dev_t *dev, unsigned int first_minor,
			unsigned int count, const char *name);
void unregister_chrdev_region(dev_t dev, unsigned int count);
int platform_driver_register(struct platform_driver *driver);
void platform_driver_unregister(struct platform_driver *driver);
void *kcalloc(size_t count, size_t size, unsigned int flags);
void kfree(const void *pointer);

#endif
