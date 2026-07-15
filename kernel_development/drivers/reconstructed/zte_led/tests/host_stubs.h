#ifndef ZTE_LED_HOST_STUBS_H
#define ZTE_LED_HOST_STUBS_H

#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef uint32_t __be32;
typedef long ssize_t;
typedef unsigned int gfp_t;
typedef int irqreturn_t;
typedef irqreturn_t (*irq_handler_t)(int, void *);

#define __init
#define __exit
#define __user
#define __used __attribute__((used))
#define noinline __attribute__((noinline))
#define GFP_KERNEL 0
#define THIS_MODULE ((void *)0x1)
#define PAGE_SIZE 4096
#define IRQ_HANDLED 1
#define IRQF_TRIGGER_FALLING 0x2u
#define IRQF_ONESHOT 0x2000u
#define I2C_FUNC_I2C 1u
#define GPIOF_OUT_INIT_LOW 1u
#define GPIOF_IN 2u
#define HRTIMER_MODE_REL 0
#define CLOCK_MONOTONIC 1

#define ARRAY_SIZE(value) (sizeof(value) / sizeof((value)[0]))
#define static_assert(condition) _Static_assert((condition), #condition)
#define container_of(pointer, type, member) \
	((type *)((char *)(pointer) - offsetof(type, member)))
#define min_t(type, left, right) ((type)(left) < (type)(right) ? \
	(type)(left) : (type)(right))
#define likely(value) (value)
#define unlikely(value) (value)
#define barrier() __asm__ volatile("" ::: "memory")
#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(void *)(pointer) >= (uintptr_t)-4095)
#define IS_ERR_OR_NULL(pointer) (!(pointer) || IS_ERR(pointer))

#define MODULE_DEVICE_TABLE(type, name)
#define MODULE_AUTHOR(value)
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define module_init(function) static __used int init_module(void) { return function(); }
#define module_exit(function) static __used void cleanup_module(void) { function(); }

struct device;
struct device_node;
struct firmware;
struct work_struct;
struct hrtimer;
struct zlog_module_info;
enum hrtimer_restart;

struct kobject { struct device *dev; };
struct device {
	void *driver_data;
	struct device_node *of_node;
	struct kobject kobj;
};
struct device_node {
	struct device_node *child;
	const char *led_name;
	u32 imax;
	u32 brightness;
	u32 max_brightness;
	u32 aw_drv_ver;
	u32 cfg_custom_en;
	int reset_gpio;
	int irq_gpio;
	int nubia_ver_gpio;
};
struct work_struct {
	void (*func)(struct work_struct *);
	int pending;
	u8 reserved[20];
};
static_assert(sizeof(struct work_struct) == 0x20);
struct hrtimer {
	enum hrtimer_restart (*function)(struct hrtimer *);
	int active;
	u8 reserved[52];
};
static_assert(sizeof(struct hrtimer) == 0x40);
struct mutex { unsigned int locked; u8 reserved[44]; };
static_assert(sizeof(struct mutex) == 0x30);
struct pinctrl { int marker; };
struct pinctrl_state { int marker; };
struct gpio_desc { int gpio; int value; };
struct task_struct { int running; };
struct i2c_adapter { int functional; };
struct i2c_client {
	struct device dev;
	struct i2c_adapter *adapter;
	void *data;
};

enum led_brightness { LED_OFF = 0, LED_FULL = 255 };
struct led_classdev {
	const char *name;
	enum led_brightness brightness;
	u32 max_brightness;
	void (*brightness_set)(struct led_classdev *, enum led_brightness);
	struct device *dev;
	u8 reserved[416];
};
static_assert(sizeof(struct led_classdev) == 0x1c0);

struct firmware { size_t size; const u8 *data; };
struct attribute { const char *name; unsigned short mode; };
struct device_attribute {
	struct attribute attr;
	ssize_t (*show)(struct device *, struct device_attribute *, char *);
	ssize_t (*store)(struct device *, struct device_attribute *, const char *, size_t);
};
struct attribute_group { struct attribute **attrs; };
struct file { int marker; };
struct proc_ops {
	ssize_t (*proc_read)(struct file *, char *, size_t, loff_t *);
};
struct proc_dir_entry { int marker; };
struct of_device_id { const char *compatible; };
struct i2c_device_id { const char *name; unsigned long driver_data; };
struct i2c_driver {
	struct {
		const char *name;
		void *owner;
		const struct of_device_id *of_match_table;
	} driver;
	int (*probe)(struct i2c_client *);
	void (*remove)(struct i2c_client *);
	const struct i2c_device_id *id_table;
};
enum hrtimer_restart { HRTIMER_NORESTART = 0, HRTIMER_RESTART = 1 };

#define __ATTR(attr_name, attr_mode, attr_show, attr_store) \
	{ .attr = { .name = #attr_name, .mode = (attr_mode) }, \
	  .show = (attr_show), .store = (attr_store) }
#define DEVICE_ATTR(attr_name, attr_mode, attr_show, attr_store) \
	struct device_attribute dev_attr_##attr_name = \
		__ATTR(attr_name, attr_mode, attr_show, attr_store)

void host_log(const char *format, ...);
void host_fortify_panic(int write, size_t available, size_t wanted);
void *host_kmalloc(size_t size);
void *host_kcalloc(size_t count, size_t size);
void host_kfree(const void *pointer);

int i2c_master_send(struct i2c_client *client, const void *buffer, int count);
int i2c_master_recv(struct i2c_client *client, void *buffer, int count);
int i2c_transfer_buffer_flags(struct i2c_client *client, void *buffer,
			      unsigned short count, unsigned short flags);
int i2c_check_functionality(struct i2c_adapter *adapter, u32 functionality);
void i2c_set_clientdata(struct i2c_client *client, void *data);
void *i2c_get_clientdata(struct i2c_client *client);
int i2c_add_driver(struct i2c_driver *driver);
void i2c_del_driver(struct i2c_driver *driver);

struct gpio_desc *gpio_to_desc(unsigned int gpio);
int gpio_is_valid(int gpio);
int gpiod_get_raw_value(struct gpio_desc *desc);
void gpiod_set_raw_value_cansleep(struct gpio_desc *desc, int value);
int gpiod_direction_output_raw(struct gpio_desc *desc, int value);
int gpiod_to_irq(struct gpio_desc *desc);
int devm_gpio_request_one(struct device *dev, unsigned int gpio,
			  unsigned long flags, const char *name);
int devm_request_threaded_irq(struct device *dev, unsigned int irq,
			      irq_handler_t handler, irq_handler_t thread_fn,
			      unsigned long flags, const char *name, void *data);
void devm_free_irq(struct device *dev, unsigned int irq, void *data);

struct pinctrl *devm_pinctrl_get(struct device *dev);
struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl,
					    const char *name);
int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state);
void devm_pinctrl_put(struct pinctrl *pinctrl);

struct device_node *of_get_next_child(const struct device_node *node,
				      struct device_node *previous);
int of_property_read_string(const struct device_node *node, const char *name,
			    const char **value);
int of_property_read_u32(const struct device_node *node, const char *name,
			 u32 *value);
int of_get_named_gpio(const struct device_node *node, const char *name, int index);

int led_classdev_register_ext(struct device *parent, struct led_classdev *cdev,
			     const void *init_data);
void led_classdev_unregister(struct led_classdev *cdev);
int sysfs_create_group(struct kobject *kobject, const struct attribute_group *group);
void sysfs_remove_group(struct kobject *kobject, const struct attribute_group *group);

int request_firmware(const struct firmware **firmware, const char *name,
		     struct device *device);
int request_firmware_nowait(void *module, int action, const char *name,
			    struct device *device, gfp_t flags, void *context,
			    void (*callback)(const struct firmware *, void *));
void release_firmware(const struct firmware *firmware);

void msleep(unsigned int milliseconds);
void usleep_range(unsigned int minimum, unsigned int maximum);
int schedule_work(struct work_struct *work);
void hrtimer_init(struct hrtimer *timer, int clock_id, int mode);
int hrtimer_start(struct hrtimer *timer, long long expires, int mode);
long long ns_to_ktime(long long nanoseconds);
long long ktime_set(long seconds, unsigned long nanoseconds);

struct task_struct *kthread_create(int (*thread_function)(void *), void *data,
				   const char *name);
int wake_up_process(struct task_struct *task);
bool kthread_should_stop(void);

struct proc_dir_entry *proc_create(const char *name, unsigned short mode,
				   struct proc_dir_entry *parent,
				   const struct proc_ops *operations);
void remove_proc_entry(const char *name, struct proc_dir_entry *parent);
ssize_t simple_read_from_buffer(void *to, size_t count, loff_t *position,
				const void *from, size_t available);

void *zlog_register_client(struct zlog_module_info *module_info);
void zlog_client_record(void *client, const char *format, ...);
void zlog_client_notify(void *client, u32 event);

#define pr_info(...) host_log(__VA_ARGS__)
#define pr_err(...) host_log(__VA_ARGS__)
#define pr_warn(...) host_log(__VA_ARGS__)
#define dev_info(device, ...) host_log(__VA_ARGS__)
#define dev_err(device, ...) host_log(__VA_ARGS__)
#define dev_dbg(device, ...) host_log(__VA_ARGS__)
#define devm_kzalloc(device, size, flags) host_kcalloc(1, (size))
#define devm_kfree(device, pointer) host_kfree(pointer)
#define kmalloc(size, flags) host_kmalloc(size)
#define kmalloc_array(count, size, flags) host_kcalloc((count), (size))
#define kzalloc(size, flags) host_kcalloc(1, (size))
#define kfree(pointer) host_kfree(pointer)
#define dev_get_drvdata(device) ((device)->driver_data)
#define dev_set_drvdata(device, data) ((device)->driver_data = (data))
#define mutex_init(lock) do { (lock)->locked = 0; } while (0)
#define mutex_lock(lock) do { (lock)->locked++; } while (0)
#define mutex_unlock(lock) do { (lock)->locked--; } while (0)
#define INIT_WORK(work, callback) do { (work)->func = (callback); (work)->pending = 0; } while (0)
#define __fortify_panic(write, available, wanted) \
	host_fortify_panic((write), (available), (wanted))

static inline u16 swab16(u16 value) { return __builtin_bswap16(value); }
static inline u16 be16_to_cpu(u16 value) { return __builtin_bswap16(value); }
static inline u32 be32_to_cpup(const __be32 *value)
{ return __builtin_bswap32(*value); }

#endif
