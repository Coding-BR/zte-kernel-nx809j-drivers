#define ZTE_FINGERPRINT_HOST_TEST
#include "../zte_fingerprint.c"

struct host_state {
	int fail_device_create;
	int fail_input_allocate;
	int fail_input_register;
	int fail_workqueue;
	int fail_platform_register;
	int fail_chrdev;
	int fail_netlink;
	int fail_irq;
	int fail_gpio_request;
	int fail_regulator_get;
	int fail_regulator_enable;
	int fail_pinctrl_get;
	int fail_pinctrl_state;
	int fail_panel_register;
	int fail_copy_to;
	int fail_copy_from;
	int fail_unicast;
	int device_create_calls;
	int input_allocate_calls;
	int input_register_calls;
	int input_free_calls;
	int input_unregister_calls;
	int workqueue_calls;
	int destroy_workqueue_calls;
	int cancel_work_calls;
	int platform_register_calls;
	int platform_unregister_calls;
	int chrdev_register_calls;
	int chrdev_unregister_calls;
	int irq_request_calls;
	int irq_free_calls;
	int gpio_request_calls;
	int regulator_enable_calls;
	int regulator_disable_calls;
	int netlink_create_calls;
	int netlink_release_calls;
	int unicast_calls;
	int copy_to_calls;
	int copy_from_calls;
	int zlog_register_calls;
	int zlog_unregister_calls;
	int zlog_record_calls;
	int zlog_notify_calls;
	int panel_register_calls;
	int panel_unregister_calls;
	int input_event_calls;
	int wakeup_add_calls;
	int wakeup_remove_calls;
	struct class class_object;
	struct device device_object;
	struct platform_device platform_object;
	struct input_dev input_object;
	struct workqueue_struct workqueue_object;
	struct regulator regulator_object;
	struct pinctrl pinctrl_object;
	struct pinctrl_state active_state;
	struct pinctrl_state suspend_state;
	struct gpio_desc reset_desc;
	struct gpio_desc irq_desc;
	struct drm_panel panel_object;
	struct sock sock_object;
	struct device_node node_object;
};

struct net init_net;
int host_fail_device_create;
static struct host_state host;
static int failures;

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		failures++; \
	} \
} while (0)

void host_log(const char *format, ...)
{
	(void)format;
}

void host_reset_state(void)
{
	memset(&host, 0, sizeof(host));
	memset(&gf_dev_static, 0, sizeof(gf_dev_static));
	INIT_LIST_HEAD(&device_list);
	memset(minors, 0, sizeof(minors));
	nl_sk = NULL;
	pid = 0;
	SPIDEV_MAJOR = 0;
	gf_class = NULL;
	cookie = NULL;
	goodixfp_active_panel = NULL;
	host.platform_object.dev.of_node = &host.node_object;
	host.device_object.parent = &host.platform_object.dev;
	host.reset_desc.gpio = 12;
	host.irq_desc.gpio = 13;
	host.regulator_object.enabled = 0;
	host.pinctrl_object.marker = 1;
	host.active_state.marker = 1;
	host.suspend_state.marker = 1;
	host.panel_object.marker = 1;
}

void *host_kzalloc(size_t size, gfp_t flags)
{
	(void)flags;
	return calloc(1, size);
}

void host_kfree(const void *pointer)
{
	free((void *)pointer);
}

void host_mutex_lock(struct mutex *lock) { lock->locked++; }
void host_mutex_unlock(struct mutex *lock) { CHECK(lock->locked > 0); lock->locked--; }
void host_init_mutex(struct mutex *lock) { lock->locked = 0; }
void host_init_list(struct list_head *head) { head->next = head; head->prev = head; }

void host_list_add_tail(struct list_head *entry, struct list_head *head)
{
	entry->prev = head->prev;
	entry->next = head;
	head->prev->next = entry;
	head->prev = entry;
}

void host_list_del(struct list_head *entry)
{
	CHECK(entry->prev != NULL && entry->next != NULL);
	entry->prev->next = entry->next;
	entry->next->prev = entry->prev;
	entry->next = LIST_POISON1;
	entry->prev = LIST_POISON2;
}

void __list_del_entry(struct list_head *entry)
{
	host_list_del(entry);
}

unsigned long host_find_first_zero_bit(const unsigned long *bitmap, unsigned long bits)
{
	unsigned long index;
	for (index = 0; index < bits; index++)
		if (!(bitmap[index / 64] & (1ul << (index % 64))))
			return index;
	return bits;
}

void host_set_bit(unsigned long bit, unsigned long *bitmap) { bitmap[bit / 64] |= 1ul << (bit % 64); }
void host_clear_bit(unsigned long bit, unsigned long *bitmap) { bitmap[bit / 64] &= ~(1ul << (bit % 64)); }

struct class *class_create(const char *name)
{
	CHECK(strcmp(name, "goodix_fp") == 0);
	return &host.class_object;
}

void class_destroy(struct class *class_pointer) { CHECK(class_pointer == &host.class_object); }

int alloc_chrdev_region(dev_t *dev, unsigned int first, unsigned int count, const char *name)
{
	(void)dev; (void)first; (void)count; (void)name;
	return 0;
}

int register_chrdev(int major, const char *name, const struct file_operations *fops)
{
	(void)major; (void)fops;
	host.chrdev_register_calls++;
	CHECK(strcmp(name, "goodix_fp_spi") == 0);
	return host.fail_chrdev ? -EBUSY : 240;
}

void unregister_chrdev(int major, const char *name)
{
	(void)major;
	host.chrdev_unregister_calls++;
	CHECK(strcmp(name, "goodix_fp_spi") == 0);
}

struct device *device_create(struct class *class_pointer, struct device *parent,
				     dev_t dev, void *drvdata, const char *name)
{
	(void)dev;
	host.device_create_calls++;
	CHECK(class_pointer == &host.class_object);
	CHECK(parent != NULL);
	CHECK(drvdata == &gf_dev_static && strcmp(name, "goodix_fp") == 0);
	if (host.fail_device_create)
		return ERR_PTR(-ENODEV);
	host.device_object.drvdata = drvdata;
	return &host.device_object;
}

void device_destroy(struct class *class_pointer, dev_t dev)
{
	(void)dev;
	CHECK(class_pointer == &host.class_object);
}

void platform_set_drvdata(struct platform_device *pdev, void *data) { pdev->dev.drvdata = data; }
void *platform_get_drvdata(struct platform_device *pdev) { return pdev->dev.drvdata; }

int platform_driver_register(struct platform_driver *driver)
{
	(void)driver;
	host.platform_register_calls++;
	return host.fail_platform_register ? -EIO : 0;
}

void platform_driver_unregister(struct platform_driver *driver) { (void)driver; host.platform_unregister_calls++; }
void dev_set_drvdata(struct device *dev, void *data) { dev->drvdata = data; }
void *dev_get_drvdata(const struct device *dev) { return dev->drvdata; }

struct input_dev *input_allocate_device(void)
{
	host.input_allocate_calls++;
	return host.fail_input_allocate ? NULL : &host.input_object;
}

void input_free_device(struct input_dev *input) { CHECK(input == &host.input_object); host.input_free_calls++; }

int input_register_device(struct input_dev *input)
{
	CHECK(input == &host.input_object);
	host.input_register_calls++;
	if (host.fail_input_register)
		return -EIO;
	input->registered = 1;
	return 0;
}

void input_unregister_device(struct input_dev *input) { CHECK(input == &host.input_object); host.input_unregister_calls++; input->registered = 0; }
void input_set_capability(struct input_dev *input, unsigned int type, unsigned int code) { (void)input; (void)type; (void)code; }
void input_event(struct input_dev *input, unsigned int type, unsigned int code, int value) { (void)input; (void)type; (void)code; (void)value; host.input_event_calls++; }
void input_report_key(struct input_dev *input, unsigned int code, int value) { input_event(input, EV_KEY, code, value); }
void input_sync(struct input_dev *input) { input_event(input, 0, 0, 0); }

struct workqueue_struct *alloc_workqueue(const char *name, unsigned int flags, int max_active)
{
	(void)flags; (void)max_active;
	host.workqueue_calls++;
	CHECK(strcmp(name, "screen_state_wq") == 0);
	return host.fail_workqueue ? NULL : &host.workqueue_object;
}

void destroy_workqueue(struct workqueue_struct *workqueue) { CHECK(workqueue == &host.workqueue_object); host.destroy_workqueue_calls++; }
void cancel_delayed_work_sync(struct delayed_work *work) { (void)work; host.cancel_work_calls++; }
int queue_delayed_work(struct workqueue_struct *workqueue, struct delayed_work *work, unsigned long delay) { (void)workqueue; (void)work; (void)delay; return 1; }
unsigned long msecs_to_jiffies(unsigned int value) { return value; }
void init_delayed_work(struct delayed_work *work, void (*func)(struct work_struct *)) { work->work.func = func; }

int gpio_is_valid(int gpio) { return gpio >= 0; }
struct gpio_desc *gpio_to_desc(int gpio) { return gpio == host.reset_desc.gpio ? &host.reset_desc : &host.irq_desc; }
int gpiod_to_irq(struct gpio_desc *desc) { return desc ? desc->gpio + 100 : -ENODEV; }
void gpiod_set_raw_value(struct gpio_desc *desc, int value) { (void)desc; (void)value; }
void gpio_direction_input(int gpio) { (void)gpio; }
int devm_gpio_request(struct device *dev, int gpio, const char *name) { (void)dev; (void)gpio; (void)name; host.gpio_request_calls++; return host.fail_gpio_request ? -EIO : 0; }
int of_get_named_gpio(struct device_node *node, const char *name, int index) { (void)node; (void)index; return strcmp(name, "fp-gpio-reset") == 0 ? host.reset_desc.gpio : host.irq_desc.gpio; }
void gpio_free(int gpio) { (void)gpio; }
struct pinctrl *devm_pinctrl_get(struct device *dev) { (void)dev; return host.fail_pinctrl_get ? ERR_PTR(-ENODEV) : &host.pinctrl_object; }
struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl, const char *name) { (void)pinctrl; if (host.fail_pinctrl_state) return ERR_PTR(-EINVAL); return strcmp(name, "goodix_active") == 0 ? &host.active_state : &host.suspend_state; }
int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state) { (void)pinctrl; (void)state; return 0; }
struct regulator *devm_regulator_get(struct device *dev, const char *name) { (void)dev; (void)name; return host.fail_regulator_get ? ERR_PTR(-ENODEV) : &host.regulator_object; }
int regulator_is_enabled(struct regulator *regulator) { return regulator->enabled; }
int regulator_enable(struct regulator *regulator) { host.regulator_enable_calls++; if (host.fail_regulator_enable) return -EIO; regulator->enabled = 1; return 0; }
int regulator_disable(struct regulator *regulator) { host.regulator_disable_calls++; regulator->enabled = 0; return 0; }

struct device_node *of_parse_phandle(struct device_node *node, const char *name, int index) { (void)name; (void)index; return node; }
int of_count_phandle_with_args(struct device_node *node, const char *name, const char *cells) { (void)node; (void)name; (void)cells; return 1; }
struct drm_panel *of_drm_find_panel(struct device_node *node) { (void)node; return &host.panel_object; }

int request_threaded_irq(unsigned int irq, void *handler, void *thread_fn, unsigned long flags, const char *name, void *dev_id)
{ (void)irq; (void)handler; (void)thread_fn; (void)flags; (void)name; (void)dev_id; host.irq_request_calls++; return host.fail_irq ? -EIO : 0; }
void free_irq(unsigned int irq, void *dev_id) { (void)irq; (void)dev_id; host.irq_free_calls++; }
void enable_irq(unsigned int irq) { (void)irq; }
void disable_irq(unsigned int irq) { (void)irq; }
int irq_set_irq_wake(unsigned int irq, unsigned int on) { (void)irq; (void)on; return 0; }
void __pm_wakeup_event(struct wakeup_source *source, unsigned int timeout) { (void)source; (void)timeout; }
void wakeup_source_add(struct wakeup_source *source) { (void)source; host.wakeup_add_calls++; }
void wakeup_source_remove(struct wakeup_source *source) { (void)source; host.wakeup_remove_calls++; }

struct sock *netlink_kernel_create(struct net *net, int protocol, struct netlink_kernel_cfg *cfg)
{ (void)net; (void)protocol; (void)cfg; host.netlink_create_calls++; return host.fail_netlink ? NULL : &host.sock_object; }
void netlink_kernel_release(struct sock *sock) { CHECK(sock == &host.sock_object); host.netlink_release_calls++; }
struct sk_buff *alloc_skb(unsigned int size, gfp_t flags) { (void)size; (void)flags; return calloc(1, sizeof(struct sk_buff)); }
void kfree_skb(struct sk_buff *skb) { free(skb); }
void skb_get(struct sk_buff *skb) { skb->refcount++; }
struct nlmsghdr *nlmsg_hdr(struct sk_buff *skb) { return &skb->header; }
void *nlmsg_data(struct nlmsghdr *header) { return header->data; }
struct nlmsghdr *nlmsg_put(struct sk_buff *skb, unsigned int portid, unsigned int seq, unsigned int type, unsigned int payload, unsigned int flags)
{ (void)portid; (void)seq; (void)type; (void)flags; skb->header.payload_len = payload; return &skb->header; }
int netlink_unicast(struct sock *sock, struct sk_buff *skb, u32 target_pid, unsigned int flags)
{ (void)sock; (void)target_pid; (void)flags; host.unicast_calls++; free(skb); return host.fail_unicast ? -EIO : 0; }

int copy_to_user(void *destination, const void *source, size_t size) { host.copy_to_calls++; if (host.fail_copy_to) return 1; memcpy(destination, source, size); return 0; }
int copy_from_user(void *destination, const void *source, size_t size) { host.copy_from_calls++; if (host.fail_copy_from) return 1; memcpy(destination, source, size); return 0; }
int nonseekable_open(struct inode *inode, struct file *file) { (void)inode; (void)file; return 0; }
int kstrtoint(const char *text, unsigned int base, int *result) { char *end; long value = strtol(text, &end, base); if (end == text || *end != '\0') return -EINVAL; *result = (int)value; return 0; }
void usleep_range(unsigned int min, unsigned int max) { (void)min; (void)max; }
void udelay(unsigned int usec) { (void)usec; }

void *zlog_register_client(struct zlog_module_info *module_info) { (void)module_info; host.zlog_register_calls++; return (void *)0x77770000; }
void zlog_unregister_client(void *client) { CHECK(client == (void *)0x77770000); host.zlog_unregister_calls++; }
void zlog_client_record(void *client, const char *format, ...) { CHECK(client == (void *)0x77770000); (void)format; host.zlog_record_calls++; }
void zlog_client_notify(void *client, u32 event) { CHECK(client == (void *)0x77770000); (void)event; host.zlog_notify_calls++; }
void *panel_event_notifier_register(int tag, int client, void *panel, void (*callback)(enum panel_event_notifier_tag, struct panel_event_notification *, void *), void *data)
{ (void)tag; (void)client; (void)panel; (void)callback; (void)data; host.panel_register_calls++; return host.fail_panel_register ? NULL : (void *)0x88880000; }
void panel_event_notifier_unregister(void *cookie_pointer) { CHECK(cookie_pointer == (void *)0x88880000); host.panel_unregister_calls++; }

static void test_full_lifecycle(void)
{
	struct inode inode = { .i_rdev = MKDEV(240, 0) };
	struct file file = { 0 };
	struct platform_device *pdev;
	struct panel_event_notification notification;
	struct sk_buff *packet;
	char version = 0;
	u32 action = 3;
	u64 key = ((u64)1 << 32) | 5;

	host_reset_state();
	pdev = &host.platform_object;
	SPIDEV_MAJOR = 240;
	gf_class = class_create("goodix_fp");
	CHECK(gf_probe(pdev) == 0);
	inode.i_rdev = gf_dev_static.devt;
	CHECK(gf_open(&inode, &file) == 0);
	CHECK(file.private_data == &gf_dev_static);
	CHECK(gf_ioctl(&file, 0x80046700, (unsigned long)&version) == 0);
	CHECK(version == 25);
	CHECK(gf_compat_ioctl(&file, 0x80046700, (unsigned long)&version) == 0);
	CHECK(gf_ioctl(&file, 0x4004670e, (unsigned long)&action) == 0);
	CHECK(gf_ioctl(&file, 0x40086709, (unsigned long)&key) == 0);
	goodixfp_drm_get_pannel(&host.node_object);
	goodixfp_init_drm_notifier(&gf_dev_static.screen_state_work.work);
	nl_sk = &host.sock_object;
	pid = 42;
	gf_irq(1, &gf_dev_static);
	CHECK(gf_release(&inode, &file) == 0);
	CHECK(host.zlog_register_calls == 1 && host.zlog_unregister_calls == 1);

	nl_sk = &host.sock_object;
	pid = 42;
	CHECK(sendnlmsg((const char[]){ 2 }) == 0);
	packet = alloc_skb(64, GFP_KERNEL);
	packet->len = NLMSG_SPACE(0);
	packet->portid = 42;
	nl_data_ready(packet);
	notification.notif_type = DRM_PANEL_EVENT_UNBLANK;
	goodix_fb_state_chg_callback(PANEL_EVENT_NOTIFICATION_PRIMARY, &notification, &gf_dev_static);
	notification.notif_type = DRM_PANEL_EVENT_BLANK;
	goodix_fb_state_chg_callback(PANEL_EVENT_NOTIFICATION_PRIMARY, &notification, &gf_dev_static);
	gf_remove(pdev);
}

static void test_failure_paths(void)
{
	host_reset_state();
	gf_class = class_create("goodix_fp");
	SPIDEV_MAJOR = 240;
	host.fail_input_allocate = 1;
	CHECK(gf_probe(&host.platform_object) == -ENOMEM);
	CHECK(host.input_allocate_calls == 1);

	host_reset_state();
	gf_class = class_create("goodix_fp");
	SPIDEV_MAJOR = 240;
	host.fail_irq = 1;
	CHECK(gf_probe(&host.platform_object) == 0);
	CHECK(gf_open(&(struct inode){ .i_rdev = MKDEV(240, 0) }, &(struct file){ 0 }) != 0);

	host_reset_state();
	gf_dev_static.pdev = &host.platform_object;
	gf_dev_static.zlog_client = (void *)0x77770000;
	host.fail_regulator_enable = 1;
	CHECK(gf_parse_dts(&gf_dev_static) != 0);
	CHECK(host.zlog_notify_calls == 1);

	host_reset_state();
	host.fail_netlink = 1;
	CHECK(netlink_init() == -ENOMEM);
	netlink_exit();
}

static void test_direct_helpers(void)
{
	host_reset_state();
	gf_dev_static.pdev = &host.platform_object;
	gf_dev_static.vdd_reg = &host.regulator_object;
	gf_dev_static.reset_gpio = host.reset_desc.gpio;
	gf_dev_static.irq_gpio = host.irq_desc.gpio;
	CHECK(gf_power_on(&gf_dev_static) == 0);
	CHECK(gf_power_off(&gf_dev_static) == 0);
	CHECK(gf_hw_reset(&gf_dev_static, 5) == 0);
	CHECK(gf_irq_num(&gf_dev_static) >= 0);
	CHECK(gf_enable_irq(&gf_dev_static) == 0);
	CHECK(gf_disable_irq(&gf_dev_static) == 0);
	CHECK(zte_goodix_pinctrl_init(&gf_dev_static) == 0);
	CHECK(zte_goodix_pinctrl_select(&gf_dev_static, true) == 0);
	CHECK(gf_cleanup(&gf_dev_static) == 0);
	nav_event_input(1);
}

static void test_module_entrypoints(void)
{
	host_reset_state();
	CHECK(init_module() == 0);
	cleanup_module();
	CHECK(host.chrdev_register_calls == 1);
	CHECK(host.chrdev_unregister_calls == 1);
}

int main(void)
{
	test_full_lifecycle();
	test_failure_paths();
	test_direct_helpers();
	test_module_entrypoints();
	if (failures)
		return 1;
	puts("PASS zte_fingerprint host tests");
	return 0;
}
