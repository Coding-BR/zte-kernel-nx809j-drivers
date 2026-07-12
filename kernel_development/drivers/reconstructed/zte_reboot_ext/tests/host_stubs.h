#ifndef ZTE_REBOOT_EXT_HOST_STUBS_H
#define ZTE_REBOOT_EXT_HOST_STUBS_H

#include <ctype.h>
#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
#define __init
#define __exit
#define noinline __attribute__((noinline))
#define GFP_KERNEL 0
#define PAGE_SIZE 4096
#define NOTIFY_OK 1
#define EPROBE_DEFER 517
#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
#define container_of(ptr, type, member) ((type *)((char *)(ptr) - offsetof(type, member)))
#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)
#define IS_ERR_OR_NULL(pointer) (!(pointer) || IS_ERR(pointer))
#define barrier() __asm__ volatile("" : : : "memory")
#define pr_info(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_err(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_warn(format, ...) fake_log(format, ##__VA_ARGS__)
#define dev_info(device, format, ...) fake_log(format, ##__VA_ARGS__)
#define dev_err(device, format, ...) fake_log(format, ##__VA_ARGS__)
#define printk(format, ...) fake_log(format, ##__VA_ARGS__)
#define panic(format, ...) fake_panic(format, ##__VA_ARGS__)
#define kfree(pointer) free(pointer)
#define MODULE_DEVICE_TABLE(type, table)
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define MODULE_AUTHOR(value)
#define MODULE_INFO(tag, value)

struct attribute { const char *name; unsigned short mode; };
struct kobject { unsigned char storage[96]; };
struct sysfs_ops {
	ssize_t (*show)(struct kobject *, struct attribute *, char *);
	ssize_t (*store)(struct kobject *, struct attribute *, const char *, size_t);
};
struct kobj_type { const struct sysfs_ops *sysfs_ops; };
struct attribute_group { struct attribute **attrs; };
struct device { int marker; };
struct platform_device { struct device dev; void *drvdata; };
struct of_device_id { const char *compatible; };
struct platform_driver {
	int (*probe)(struct platform_device *);
	void (*remove)(struct platform_device *);
	struct { const char *name; const struct of_device_id *of_match_table; } driver;
};
struct notifier_block {
	int (*notifier_call)(struct notifier_block *, unsigned long, void *);
	int priority;
};
struct pt_regs { unsigned long regs[31]; };
struct kretprobe_instance { int marker; };
struct kprobe { const char *symbol_name; };
struct kretprobe {
	int (*handler)(struct kretprobe_instance *, struct pt_regs *);
	int (*entry_handler)(struct kretprobe_instance *, struct pt_regs *);
	struct kprobe kp;
};
struct nvmem_cell { int id; };

extern struct kobject *kernel_kobj;
extern int panic_notifier_list;
void fake_log(const char *format, ...);
void fake_panic(const char *format, ...);
void *devm_kzalloc(struct device *device, size_t size, int flags);
int kobject_init_and_add(struct kobject *kobject, const struct kobj_type *type,
			 struct kobject *parent, const char *format, ...);
void kobject_put(struct kobject *kobject);
void kobject_del(struct kobject *kobject);
int sysfs_create_group(struct kobject *kobject, const struct attribute_group *group);
struct nvmem_cell *nvmem_cell_get(struct device *device, const char *name);
void *nvmem_cell_read(struct nvmem_cell *cell, size_t *length);
int nvmem_cell_write(struct nvmem_cell *cell, const void *data, size_t length);
int register_kretprobe(struct kretprobe *probe);
void unregister_kretprobe(struct kretprobe *probe);
int atomic_notifier_chain_register(void *head, struct notifier_block *block);
int atomic_notifier_chain_unregister(void *head, struct notifier_block *block);
int platform_driver_register(struct platform_driver *driver);
void platform_driver_unregister(struct platform_driver *driver);
int scnprintf(char *buffer, size_t size, const char *format, ...);

#define platform_set_drvdata(pdev, value) ((pdev)->drvdata = (value))
#define platform_get_drvdata(pdev) ((pdev)->drvdata)
#define module_platform_driver(driver) \
	static int init_module(void) { return platform_driver_register(&(driver)); } \
	static void cleanup_module(void) { platform_driver_unregister(&(driver)); }

#endif
