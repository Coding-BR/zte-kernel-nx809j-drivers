#ifndef ZTE_RAMDISK_REBOOT_HOST_STUBS_H
#define ZTE_RAMDISK_REBOOT_HOST_STUBS_H

#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __iomem
#define __used __attribute__((used))
#define noinline __attribute__((noinline))
#define GFP_KERNEL 0x0dc0u
#define PAGE_SIZE 4096u
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define container_of(pointer, type, member) \
	((type *)((char *)(pointer) - offsetof(type, member)))

#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR_VALUE(value) ((uintptr_t)(value) >= (uintptr_t)-4095)
#define IS_ERR(pointer) IS_ERR_VALUE((uintptr_t)(pointer))

typedef uint64_t phys_addr_t;
typedef unsigned short umode_t;

struct device_node { int marker; };
struct device { struct device_node *of_node; };
struct kobject { unsigned char opaque[96]; };
struct nvmem_cell { int marker; };
struct inode { int marker; };
struct file { int marker; };

struct platform_device {
	struct device dev;
	void *driver_data;
};

struct attribute {
	const char *name;
	umode_t mode;
};

struct sysfs_ops {
	ssize_t (*show)(struct kobject *, struct attribute *, char *);
	ssize_t (*store)(struct kobject *, struct attribute *, const char *, size_t);
};

struct kobj_type { const struct sysfs_ops *sysfs_ops; };
struct attribute_group { struct attribute **attrs; };

struct of_phandle_args {
	struct device_node *np;
	int args_count;
	uint32_t args[8];
};

struct reserved_mem {
	const char *name;
	phys_addr_t base;
	size_t size;
};

struct of_device_id { const char *compatible; };
struct platform_driver {
	int (*probe)(struct platform_device *);
	void (*remove)(struct platform_device *);
	struct {
		const char *name;
		const struct of_device_id *of_match_table;
	} driver;
};

extern struct kobject *kernel_kobj;

void *devm_kzalloc(struct device *dev, size_t size, unsigned int flags);
void kfree(const void *pointer);
int kobject_init_and_add(struct kobject *kobj, struct kobj_type *type,
			 struct kobject *parent, const char *format, ...);
void kobject_put(struct kobject *kobj);
void kobject_del(struct kobject *kobj);
int sysfs_create_group(struct kobject *kobj, const struct attribute_group *group);
struct nvmem_cell *nvmem_cell_get(struct device *dev, const char *name);
void *nvmem_cell_read(struct nvmem_cell *cell, size_t *length);
int nvmem_cell_write(struct nvmem_cell *cell, const void *buffer, size_t length);
int of_parse_phandle_with_args(const struct device_node *np, const char *list_name,
			       const char *cells_name, int index,
			       struct of_phandle_args *out_args);
struct reserved_mem *of_reserved_mem_lookup(struct device_node *np);
void *devm_ioremap_wc(struct device *dev, phys_addr_t offset, size_t size);
void devm_iounmap(struct device *dev, void *address);
void platform_set_drvdata(struct platform_device *pdev, void *data);
int platform_driver_register(struct platform_driver *driver);
void platform_driver_unregister(struct platform_driver *driver);
int scnprintf(char *buffer, size_t size, const char *format, ...);
char *strnstr(const char *haystack, const char *needle, size_t length);
void fake_log(const char *format, ...);

#define dev_err(device, format, ...) fake_log(format, ##__VA_ARGS__)
#define dev_info(device, format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_err(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_info(format, ...) fake_log(format, ##__VA_ARGS__)

#define EXPORT_SYMBOL_GPL(symbol)
#define MODULE_DEVICE_TABLE(type, table)
#define module_platform_driver(driver) \
	static int init_module(void) { return platform_driver_register(&(driver)); } \
	static void cleanup_module(void) { platform_driver_unregister(&(driver)); }
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define MODULE_INFO(tag, value)

#endif
