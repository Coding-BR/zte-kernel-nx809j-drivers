#ifndef ZTE_FINGERPRINT_HOST_STUBS_H
#define ZTE_FINGERPRINT_HOST_STUBS_H

#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int32_t s32;
typedef uint64_t dev_t;
typedef unsigned int gfp_t;

#define __init
#define __exit
#define __user
#define __maybe_unused
#ifndef __always_inline
#define __always_inline inline
#endif
#define noinline __attribute__((noinline))
#define __used __attribute__((used))
#define GFP_KERNEL 0x00u
#define GFP_ATOMIC 0x20u
#define THIS_MODULE ((void *)0x1)
#define IRQ_HANDLED 1
typedef int irqreturn_t;
#define IRQF_TRIGGER_RISING 0x1u
#define IRQF_ONESHOT 0x2000u
#define WQ_UNBOUND 0x1u
#define WQ_MEM_RECLAIM 0x2u
#define NETLINK_CB(skb) (*(skb))
#define NLMSG_HDRLEN 16U
#define MSG_DONTWAIT 0x40u
#define PAGE_SIZE 4096u
#define KEY_HOME 102
#define KEY_MENU 139
#define KEY_BACK 158
#define KEY_POWER 116
#define KEY_UP 103
#define KEY_DOWN 108
#define KEY_LEFT 105
#define KEY_RIGHT 106
#define KEY_CAMERA 212
#define KEY_VOLUMEDOWN 114
#define KEY_VOLUMEUP 115
#define KEY_ASSISTANT 217
#define KEY_CHAT 216
#define EV_SYN 0
#define EV_KEY 1
#define DRM_PANEL_EVENT_BLANK 1
#define DRM_PANEL_EVENT_UNBLANK 2
#define PANEL_EVENT_NOTIFICATION_PRIMARY 1
#define PANEL_EVENT_NOTIFIER_CLIENT_OTHER 3

#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)
#define IS_ERR_OR_NULL(pointer) (!(pointer) || IS_ERR(pointer))
#define PTR_ERR_OR_ZERO(pointer) (IS_ERR(pointer) ? PTR_ERR(pointer) : 0)
#define static_assert(condition) _Static_assert(condition, #condition)
#define ARRAY_SIZE(value) (sizeof(value) / sizeof((value)[0]))
#define barrier() __asm__ volatile("" ::: "memory")
#define OPTIMIZER_HIDE_VAR(value) do { __asm__ volatile("" : "+g"(value)); } while (0)
#define LIST_POISON1 ((struct list_head *)(uintptr_t)0x100100)
#define LIST_POISON2 ((struct list_head *)(uintptr_t)0x122)
#define MKDEV(major, minor) ((((dev_t)(major)) << 20) | (dev_t)(minor))
#define MINOR(device) ((unsigned int)((device) & 0xfffffu))
#define iminor(inode) MINOR((inode)->i_rdev)
#define DECLARE_BITMAP(name, bits) unsigned long name[((bits) + 63) / 64]
#define __ATTR(name, mode, show, store) { .name = #name, .mode = (mode), .show = (show), .store = (store) }
#define _IOC_WRITE 1U
#define _IOC_READ 2U
#define _IOC_DIR(command) (((command) >> 30) & 3U)
#define _IOC_SIZE(command) (((command) >> 16) & 0x3fffU)
#define access_ok(address, size) ((void)(size), (address) != NULL)
#define LIST_HEAD(name) struct list_head name = { &(name), &(name) }
#define DEFINE_MUTEX(name) struct mutex name
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define MODULE_AUTHOR(value)
#define MODULE_INFO(tag, value)

struct mutex { unsigned int locked; };
struct list_head { struct list_head *next; struct list_head *prev; };
struct attribute { const char *name; unsigned short mode; };
struct sk_buff;
struct zlog_module_info;
struct device_node { int marker; };
struct gpio_desc { int gpio; };
struct work_struct { void (*func)(struct work_struct *); };
struct device_attribute;
struct device {
	void *drvdata;
	struct device_node *of_node;
	struct device *parent;
};
struct class { int marker; };
struct platform_device { struct device dev; };
struct input_dev { const char *name; int registered; };
struct pinctrl { int marker; };
struct pinctrl_state { int marker; };
struct regulator { int enabled; };
struct workqueue_struct { int marker; };
struct delayed_work { struct work_struct work; unsigned char storage[92]; };
struct wakeup_source { int active; };
struct drm_panel { int marker; };
struct inode { dev_t i_rdev; };
struct file { void *private_data; };
struct device_attribute {
	const char *name;
	unsigned short mode;
	ssize_t (*show)(struct device *, struct device_attribute *, char *);
	ssize_t (*store)(struct device *, struct device_attribute *, const char *, size_t);
};
struct file_operations {
	void *owner;
	long (*unlocked_ioctl)(struct file *, unsigned int, unsigned long);
	long (*compat_ioctl)(struct file *, unsigned int, unsigned long);
	int (*open)(struct inode *, struct file *);
	int (*release)(struct inode *, struct file *);
};
struct of_device_id { const char *compatible; };
struct platform_driver {
	int (*probe)(struct platform_device *);
	void (*remove)(struct platform_device *);
	struct { const char *name; const struct of_device_id *of_match_table; } driver;
};
struct panel_event_notification { int notif_type; };
enum panel_event_notifier_tag { panel_event_tag_unused = 0 };
struct netlink_kernel_cfg { void (*input)(struct sk_buff *); };
struct netlink_skb_cb { u32 portid; };
struct nlmsghdr {
	unsigned int payload_len;
	unsigned int nlmsg_pid;
	unsigned char data[64];
};
struct sk_buff {
	unsigned int len;
	u32 portid;
	u32 dst_group;
	unsigned int refcount;
	struct nlmsghdr header;
	unsigned char data[128];
};
struct sock { int marker; };
struct net { int marker; };

extern struct net init_net;
extern int host_fail_device_create;

void host_log(const char *format, ...);
void host_reset_state(void);
void *host_kzalloc(size_t size, gfp_t flags);
void host_kfree(const void *pointer);
void host_mutex_lock(struct mutex *lock);
void host_mutex_unlock(struct mutex *lock);
void host_init_mutex(struct mutex *lock);
void host_init_list(struct list_head *head);
void host_list_add_tail(struct list_head *entry, struct list_head *head);
void host_list_del(struct list_head *entry);
void __list_del_entry(struct list_head *entry);
unsigned long host_find_first_zero_bit(const unsigned long *bitmap, unsigned long bits);
void host_set_bit(unsigned long bit, unsigned long *bitmap);
void host_clear_bit(unsigned long bit, unsigned long *bitmap);

struct class *class_create(const char *name);
void class_destroy(struct class *class_pointer);
int alloc_chrdev_region(dev_t *dev, unsigned int first, unsigned int count, const char *name);
int register_chrdev(int major, const char *name, const struct file_operations *fops);
void unregister_chrdev(int major, const char *name);
struct device *device_create(struct class *class_pointer, struct device *parent,
				     dev_t dev, void *drvdata, const char *name);
void device_destroy(struct class *class_pointer, dev_t dev);
void platform_set_drvdata(struct platform_device *pdev, void *data);
void *platform_get_drvdata(struct platform_device *pdev);
int platform_driver_register(struct platform_driver *driver);
void platform_driver_unregister(struct platform_driver *driver);
void dev_set_drvdata(struct device *dev, void *data);
void *dev_get_drvdata(const struct device *dev);

struct input_dev *input_allocate_device(void);
void input_free_device(struct input_dev *input);
int input_register_device(struct input_dev *input);
void input_unregister_device(struct input_dev *input);
void input_set_capability(struct input_dev *input, unsigned int type, unsigned int code);
void input_event(struct input_dev *input, unsigned int type, unsigned int code, int value);
void input_report_key(struct input_dev *input, unsigned int code, int value);
void input_sync(struct input_dev *input);

struct workqueue_struct *alloc_workqueue(const char *name, unsigned int flags, int max_active);
void destroy_workqueue(struct workqueue_struct *workqueue);
void cancel_delayed_work_sync(struct delayed_work *work);
int queue_delayed_work(struct workqueue_struct *workqueue, struct delayed_work *work,
				       unsigned long delay);
unsigned long msecs_to_jiffies(unsigned int value);
void init_delayed_work(struct delayed_work *work, void (*func)(struct work_struct *));

int gpio_is_valid(int gpio);
struct gpio_desc *gpio_to_desc(int gpio);
int gpiod_to_irq(struct gpio_desc *desc);
void gpiod_set_raw_value(struct gpio_desc *desc, int value);
void gpio_direction_input(int gpio);
int devm_gpio_request(struct device *dev, int gpio, const char *name);
int of_get_named_gpio(struct device_node *node, const char *name, int index);
void gpio_free(int gpio);
struct pinctrl *devm_pinctrl_get(struct device *dev);
struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl, const char *name);
int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state);
struct regulator *devm_regulator_get(struct device *dev, const char *name);
int regulator_is_enabled(struct regulator *regulator);
int regulator_enable(struct regulator *regulator);
int regulator_disable(struct regulator *regulator);

struct device_node *of_parse_phandle(struct device_node *node, const char *name, int index);
int of_count_phandle_with_args(struct device_node *node, const char *name, const char *cells);
struct drm_panel *of_drm_find_panel(struct device_node *node);

int request_threaded_irq(unsigned int irq, void *handler, void *thread_fn,
				unsigned long flags, const char *name, void *dev_id);
void free_irq(unsigned int irq, void *dev_id);
void enable_irq(unsigned int irq);
void disable_irq(unsigned int irq);
int irq_set_irq_wake(unsigned int irq, unsigned int on);
void __pm_wakeup_event(struct wakeup_source *source, unsigned int timeout);
void wakeup_source_add(struct wakeup_source *source);
void wakeup_source_remove(struct wakeup_source *source);

struct sock *netlink_kernel_create(struct net *net, int protocol,
					   struct netlink_kernel_cfg *cfg);
void netlink_kernel_release(struct sock *sock);
struct sk_buff *alloc_skb(unsigned int size, gfp_t flags);
void kfree_skb(struct sk_buff *skb);
void skb_get(struct sk_buff *skb);
struct nlmsghdr *nlmsg_hdr(struct sk_buff *skb);
void *nlmsg_data(struct nlmsghdr *header);
struct nlmsghdr *nlmsg_put(struct sk_buff *skb, unsigned int portid,
					   unsigned int seq, unsigned int type,
					   unsigned int payload, unsigned int flags);
int netlink_unicast(struct sock *sock, struct sk_buff *skb, u32 pid, unsigned int flags);

int copy_to_user(void *destination, const void *source, size_t size);
int copy_from_user(void *destination, const void *source, size_t size);
int nonseekable_open(struct inode *inode, struct file *file);
int kstrtoint(const char *text, unsigned int base, int *result);
void usleep_range(unsigned int min, unsigned int max);
void udelay(unsigned int usec);
void mdelay(unsigned int msec);

void *zlog_register_client(struct zlog_module_info *module_info);
void zlog_unregister_client(void *client);
void zlog_client_record(void *client, const char *format, ...);
void zlog_client_notify(void *client, u32 event);
void *panel_event_notifier_register(int tag, int client, void *panel,
					    void (*callback)(enum panel_event_notifier_tag,
						struct panel_event_notification *, void *),
					    void *data);
void panel_event_notifier_unregister(void *cookie);

#define pr_info host_log
#define pr_err host_log
#define pr_warn host_log
#define dev_err(device, format, ...) host_log(format, ##__VA_ARGS__)
#define INIT_LIST_HEAD(head) host_init_list(head)
#define list_add_tail(entry, head) host_list_add_tail(entry, head)
#define list_del(entry) host_list_del(entry)
#define list_entry(pointer, type, member) container_of(pointer, type, member)
#define list_for_each(position, head) for ((position) = (head)->next; (position) != (head); (position) = (position)->next)
#define list_first_entry(head, type, member) list_entry((head)->next, type, member)
#define list_next_entry(position, member) list_entry((position)->member.next, typeof(*(position)), member)
#define list_entry_is_head(position, head, member) (&(position)->member == (head))
#define list_for_each_entry(position, head, member) \
	for ((position) = list_first_entry(head, typeof(*(position)), member); \
	     !list_entry_is_head(position, head, member); \
	     (position) = list_next_entry(position, member))
#define mutex_init(lock) host_init_mutex(lock)
#define mutex_lock(lock) host_mutex_lock(lock)
#define mutex_unlock(lock) host_mutex_unlock(lock)
#define kzalloc(size, flags) host_kzalloc(size, flags)
#define kfree(pointer) host_kfree(pointer)
#define find_first_zero_bit(bitmap, bits) host_find_first_zero_bit(bitmap, bits)
#define set_bit(bit, bitmap) host_set_bit(bit, bitmap)
#define clear_bit(bit, bitmap) host_clear_bit(bit, bitmap)
#define device_create_file(device, attribute) (0)
#define container_of(pointer, type, member) ((type *)((char *)(pointer) - offsetof(type, member)))
#define INIT_DELAYED_WORK(work, function) init_delayed_work(work, (void (*)(struct work_struct *))(function))
#define create_singlethread_workqueue(name) alloc_workqueue((name), WQ_UNBOUND | WQ_MEM_RECLAIM, 1)
#define module_init(function) static __used int init_module(void) { return function(); }
#define module_exit(function) static __used void cleanup_module(void) { function(); }
#define NLMSG_SPACE(size) ((unsigned int)(size) + 16u)
#define nlmsg_total_size(size) NLMSG_SPACE(size)
#define IS_REACHABLE(symbol) 1

#endif
