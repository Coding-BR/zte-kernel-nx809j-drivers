#ifndef ZTE_IR_HOST_STUBS_H
#define ZTE_IR_HOST_STUBS_H

#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long ssize_t;
typedef uint32_t zte_host_dev_t;
typedef long long zte_host_loff_t;

#define dev_t zte_host_dev_t
#define loff_t zte_host_loff_t

#define __user
#define __init
#define __exit
#define __aligned(value) __attribute__((aligned(value)))
#define static_assert(condition, ...) _Static_assert((condition), #condition)
#define GFP_KERNEL 0
#define THIS_MODULE NULL
#define KERN_INFO "6"
#define ESHUTDOWN 108
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define MKDEV(major, minor) ((dev_t)(((u32)(major) << 20) | (u32)(minor)))
#define iminor(inode) ((unsigned int)((inode)->i_rdev & 0xfffffU))
#define container_of(pointer, type, member) \
	((type *)((char *)(pointer) - offsetof(type, member)))
#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)
#define PTR_ERR_OR_ZERO(pointer) (IS_ERR(pointer) ? PTR_ERR(pointer) : 0)
#define _IOW(type, number, data_type) \
	(0x40000000U | ((u32)sizeof(data_type) << 16) | ((u32)(type) << 8) | (number))
#define check_mul_overflow(a, b, output) __builtin_mul_overflow((a), (b), (output))
#define check_add_overflow(a, b, output) __builtin_add_overflow((a), (b), (output))

struct fake_spinlock { int held; };
typedef struct fake_spinlock spinlock_t;
struct mutex { int held; u8 reserved[44]; };

struct list_head { struct list_head *next; struct list_head *prev; };
#define LIST_HEAD(name) struct list_head name = { &(name), &(name) }
#define DEFINE_MUTEX(name) struct mutex name = { 0, { 0 } }
#define INIT_LIST_HEAD(head) do { (head)->next = (head); (head)->prev = (head); } while (0)
#define list_add(entry, head) fake_list_add((entry), (head))
#define list_del(entry) fake_list_del((entry))
#define list_for_each_entry(position, head, member) \
	for (struct list_head *_node = (head)->next; \
	     _node != (head) && \
	     (((position) = container_of(_node, __typeof__(*(position)), member)), 1); \
	     _node = _node->next)

struct device { int marker; };
struct class { int marker; };
struct spi_device { struct device dev; void *driver_data; };
struct inode { dev_t i_rdev; };
struct file { void *private_data; };
struct spi_transfer {
	const void *tx_buf;
	void *rx_buf;
	size_t len;
	u32 speed_hz;
};
struct spi_message { struct spi_transfer *transfer; };
struct file_operations {
	void *owner;
	int (*open)(struct inode *, struct file *);
	int (*release)(struct inode *, struct file *);
	ssize_t (*write)(struct file *, const char *, size_t, loff_t *);
	long (*unlocked_ioctl)(struct file *, unsigned int, unsigned long);
	long (*compat_ioctl)(struct file *, unsigned int, unsigned long);
	loff_t (*llseek)(struct file *, loff_t, int);
};
struct of_device_id { const char *compatible; };
struct spi_driver {
	struct { const char *name; const struct of_device_id *of_match_table; } driver;
	int (*probe)(struct spi_device *);
	void (*remove)(struct spi_device *);
};

void fake_log(const char *format, ...);
void *fake_kzalloc(size_t size);
void fake_kfree(void *pointer);
void *fake_memdup_user(const void *source, size_t size);
int fake_get_user(int *value, const int *source);
void fake_mutex_lock(struct mutex *lock);
void fake_mutex_unlock(struct mutex *lock);
void fake_spin_lock_irq(spinlock_t *lock);
void fake_spin_unlock_irq(spinlock_t *lock);
void fake_list_add(struct list_head *entry, struct list_head *head);
void fake_list_del(struct list_head *entry);
int fake_nonseekable_open(struct inode *inode, struct file *file);
loff_t fake_noop_llseek(struct file *file, loff_t offset, int whence);
int fake_spi_sync(struct spi_device *spi, struct spi_message *message);
struct device *fake_device_create(struct class *class_value, struct device *parent,
				  dev_t devt, void *data, const char *name);
void fake_device_destroy(struct class *class_value, dev_t devt);
int fake_register_chrdev(unsigned int major, unsigned int first_minor,
			unsigned int count, const char *name,
			const struct file_operations *operations);
void fake_unregister_chrdev(unsigned int major, unsigned int first_minor,
			   unsigned int count, const char *name);
struct class *fake_class_create(const char *name);
void fake_class_destroy(struct class *class_value);
int fake_spi_register_driver(struct spi_driver *driver);
void fake_spi_unregister_driver(struct spi_driver *driver);

#define pr_debug(format, ...) fake_log(format, ##__VA_ARGS__)
#define pr_info(format, ...) fake_log(format, ##__VA_ARGS__)
#define dev_dbg(device, format, ...) fake_log(format, ##__VA_ARGS__)
#define dev_err(device, format, ...) fake_log(format, ##__VA_ARGS__)
#define dev_printk(level, device, format, ...) fake_log(format, ##__VA_ARGS__)
#define kzalloc(size, flags) fake_kzalloc(size)
#define kfree(pointer) fake_kfree(pointer)
#define memdup_user(source, size) fake_memdup_user((source), (size))
#define get_user(value, source) fake_get_user(&(value), (source))
#define mutex_lock(lock) fake_mutex_lock(lock)
#define mutex_unlock(lock) fake_mutex_unlock(lock)
#define mutex_init(lock) do { memset((lock), 0, sizeof(*(lock))); } while (0)
#define spin_lock_init(lock) do { (lock)->held = 0; } while (0)
#define spin_lock_irq(lock) fake_spin_lock_irq(lock)
#define spin_unlock_irq(lock) fake_spin_unlock_irq(lock)
#define lockdep_assert_held(lock) do { if (!(lock)->held) abort(); } while (0)
#define test_bit(bit, address) (!!(*(address) & (1UL << (bit))))
#define set_bit(bit, address) (*(address) |= 1UL << (bit))
#define clear_bit(bit, address) (*(address) &= ~(1UL << (bit)))
#define nonseekable_open(inode, file) fake_nonseekable_open((inode), (file))
#define noop_llseek fake_noop_llseek
#define spi_sync(spi, message) fake_spi_sync((spi), (message))
#define device_create(class_value, parent, devt, data, name, ...) \
	fake_device_create((class_value), (parent), (devt), (data), (name))
#define device_destroy(class_value, devt) fake_device_destroy((class_value), (devt))
#define spi_set_drvdata(spi, value) ((spi)->driver_data = (value))
#define spi_get_drvdata(spi) ((spi)->driver_data)
#define __register_chrdev(major, first, count, name, operations) \
	fake_register_chrdev((major), (first), (count), (name), (operations))
#define __unregister_chrdev(major, first, count, name) \
	fake_unregister_chrdev((major), (first), (count), (name))
#define class_create(name) fake_class_create(name)
#define class_destroy(class_value) fake_class_destroy(class_value)
#define spi_register_driver(driver) fake_spi_register_driver(driver)
#define spi_unregister_driver(driver) fake_spi_unregister_driver(driver)

static inline void spi_message_init(struct spi_message *message)
{
	message->transfer = NULL;
}

static inline void spi_message_add_tail(struct spi_transfer *transfer,
					struct spi_message *message)
{
	message->transfer = transfer;
}

#define MODULE_DEVICE_TABLE(type, table)
#define MODULE_AUTHOR(value)
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define module_init(function) static int init_module(void) { return function(); }
#define module_exit(function) static void cleanup_module(void) { function(); }

#endif
