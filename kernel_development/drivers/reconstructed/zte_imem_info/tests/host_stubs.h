#ifndef ZTE_IMEM_INFO_HOST_STUBS_H
#define ZTE_IMEM_INFO_HOST_STUBS_H

#include <errno.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint32_t u32;
typedef int32_t s32;

#define __iomem
#define __init
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define EXPORT_SYMBOL(symbol)
#define MODULE_LICENSE(value)
#define MODULE_INFO(tag, value)
#define module_init(function) static int init_module(void) { return function(); }
#define pr_err(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_info(format, ...) fake_log(format, ##__VA_ARGS__)

struct device_node { const char *compatible; u32 value; int map_failure; };
struct seq_file { char buffer[512]; size_t length; };
struct inode { int marker; };
struct file { void *private_data; };
struct proc_dir_entry { int marker; };
struct proc_ops {
	int (*proc_open)(struct inode *, struct file *);
	ssize_t (*proc_read)(struct file *, char *, size_t, loff_t *);
	loff_t (*proc_lseek)(struct file *, loff_t, int);
	int (*proc_release)(struct inode *, struct file *);
};

extern struct device_node *fake_nodes;
extern size_t fake_node_count;
void fake_log(const char *format, ...);
struct device_node *of_find_compatible_node(struct device_node *from,
					     const char *type,
					     const char *compatible);
void *of_iomap(struct device_node *node, int index);
u32 __raw_readl(const void *address);
int seq_printf(struct seq_file *seq, const char *format, ...);
int single_open(struct file *file, int (*show)(struct seq_file *, void *),
		void *data);
ssize_t seq_read(struct file *file, char *buffer, size_t size, loff_t *offset);
loff_t seq_lseek(struct file *file, loff_t offset, int whence);
int single_release(struct inode *inode, struct file *file);
struct proc_dir_entry *proc_mkdir(const char *name, struct proc_dir_entry *parent);
struct proc_dir_entry *proc_create(const char *name, unsigned int mode,
				   struct proc_dir_entry *parent,
				   const struct proc_ops *operations);
void remove_proc_entry(const char *name, struct proc_dir_entry *parent);

#endif
