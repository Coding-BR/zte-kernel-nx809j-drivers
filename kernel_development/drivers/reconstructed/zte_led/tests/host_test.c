#define ZTE_LED_HOST_TEST
#include "../zte_led.c"

struct host_state {
	int failures;
	int send_failures;
	int recv_failures;
	int allocation_fail_after;
	int allocations;
	int firmware_error;
	int firmware_nowait_calls;
	int firmware_releases;
	int scheduled_work;
	int gpio_requests;
	int irq_requests;
	int irq_frees;
	int led_register_error;
	int sysfs_error;
	int proc_error;
	int add_driver_error;
	int add_driver_calls;
	int del_driver_calls;
	int zlog_records;
	int zlog_notifications;
	int fortify_panics;
	int last_reg;
	u8 registers[256];
	const struct firmware *firmware;
};

static struct host_state host;
static struct gpio_desc gpio_descs[64];
static struct pinctrl host_pinctrl;
static struct pinctrl_state host_default_state;
static struct pinctrl_state host_sleep_state;
static struct proc_dir_entry host_proc_entry;
static struct task_struct host_task;
static struct device host_led_device;

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		host.failures++; \
	} \
} while (0)

static void host_reset(void)
{
	int failures = host.failures;

	memset(&host, 0, sizeof(host));
	host.failures = failures;
	host.allocation_fail_after = -1;
	host.registers[1] = 118;
	host.registers[0] = 24;
	memset(gpio_descs, 0, sizeof(gpio_descs));
}

static void free_cfg_names(void)
{
	int i;

	if (!aw22xxx_cfg_name)
		return;
	for (i = 0; i < 11; i++)
		free(aw22xxx_cfg_name[i]);
	free(aw22xxx_cfg_name);
	aw22xxx_cfg_name = NULL;
}

void host_log(const char *format, ...)
{
	(void)format;
}

void host_fortify_panic(int write, size_t available, size_t wanted)
{
	(void)write;
	(void)available;
	(void)wanted;
	host.fortify_panics++;
}

void *host_kmalloc(size_t size)
{
	if (host.allocation_fail_after >= 0 &&
	    host.allocations++ >= host.allocation_fail_after)
		return NULL;
	return malloc(size);
}

void *host_kcalloc(size_t count, size_t size)
{
	if (host.allocation_fail_after >= 0 &&
	    host.allocations++ >= host.allocation_fail_after)
		return NULL;
	return calloc(count, size);
}

void host_kfree(const void *pointer)
{
	free((void *)pointer);
}

int i2c_master_send(struct i2c_client *client, const void *buffer, int count)
{
	const u8 *bytes = buffer;
	(void)client;
	if (host.send_failures > 0) {
		host.send_failures--;
		return -EIO;
	}
	if (count > 0)
		host.last_reg = bytes[0];
	if (count == 2 && !(bytes[0] == 1 && bytes[1] == 85))
		host.registers[bytes[0]] = bytes[1];
	return count;
}

int i2c_master_recv(struct i2c_client *client, void *buffer, int count)
{
	(void)client;
	if (host.recv_failures > 0) {
		host.recv_failures--;
		return -EIO;
	}
	if (count > 0)
		((u8 *)buffer)[0] = host.registers[host.last_reg & 0xff];
	return count;
}

int i2c_transfer_buffer_flags(struct i2c_client *client, void *buffer,
			      unsigned short count, unsigned short flags)
{
	(void)flags;
	return i2c_master_recv(client, buffer, count);
}

int i2c_check_functionality(struct i2c_adapter *adapter, u32 functionality)
{
	(void)functionality;
	return adapter && adapter->functional;
}

void i2c_set_clientdata(struct i2c_client *client, void *data) { client->data = data; }
void *i2c_get_clientdata(struct i2c_client *client) { return client->data; }
int i2c_add_driver(struct i2c_driver *driver)
{
	(void)driver;
	host.add_driver_calls++;
	return host.add_driver_error;
}
void i2c_del_driver(struct i2c_driver *driver)
{
	(void)driver;
	host.del_driver_calls++;
}

struct gpio_desc *gpio_to_desc(unsigned int gpio)
{
	struct gpio_desc *desc = &gpio_descs[gpio % ARRAY_SIZE(gpio_descs)];
	desc->gpio = (int)gpio;
	return desc;
}
int gpio_is_valid(int gpio) { return gpio >= 0 && gpio < 1024; }
int gpiod_get_raw_value(struct gpio_desc *desc) { return desc->value; }
void gpiod_set_raw_value_cansleep(struct gpio_desc *desc, int value) { desc->value = value; }
int gpiod_direction_output_raw(struct gpio_desc *desc, int value)
{
	desc->value = value;
	return 0;
}
int gpiod_to_irq(struct gpio_desc *desc) { return desc->gpio + 100; }
int devm_gpio_request_one(struct device *dev, unsigned int gpio,
			  unsigned long flags, const char *name)
{
	(void)dev;
	(void)gpio;
	(void)flags;
	(void)name;
	host.gpio_requests++;
	return 0;
}
int devm_request_threaded_irq(struct device *dev, unsigned int irq,
			      irq_handler_t handler, irq_handler_t thread_fn,
			      unsigned long flags, const char *name, void *data)
{
	(void)dev;
	(void)irq;
	(void)handler;
	(void)thread_fn;
	(void)flags;
	(void)name;
	(void)data;
	host.irq_requests++;
	return 0;
}
void devm_free_irq(struct device *dev, unsigned int irq, void *data)
{
	(void)dev;
	(void)irq;
	(void)data;
	host.irq_frees++;
}

struct pinctrl *devm_pinctrl_get(struct device *dev)
{
	(void)dev;
	return &host_pinctrl;
}
struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl, const char *name)
{
	(void)pinctrl;
	return strstr(name, "sleep") ? &host_sleep_state : &host_default_state;
}
int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state)
{
	(void)pinctrl;
	(void)state;
	return 0;
}
void devm_pinctrl_put(struct pinctrl *pinctrl) { (void)pinctrl; }

struct device_node *of_get_next_child(const struct device_node *node,
				      struct device_node *previous)
{
	return previous ? NULL : (node ? node->child : NULL);
}
int of_property_read_string(const struct device_node *node, const char *name,
			    const char **value)
{
	if (!node || strcmp(name, "aw22xxx,name") || !node->led_name)
		return -EINVAL;
	*value = node->led_name;
	return 0;
}
int of_property_read_u32(const struct device_node *node, const char *name, u32 *value)
{
	if (!node)
		return -EINVAL;
	if (!strcmp(name, "aw22xxx,imax")) *value = node->imax;
	else if (!strcmp(name, "aw22xxx,brightness")) *value = node->brightness;
	else if (!strcmp(name, "aw22xxx,max_brightness")) *value = node->max_brightness;
	else if (!strcmp(name, "aw_drv_ver")) *value = node->aw_drv_ver;
	else if (!strcmp(name, "cfg_custom_en")) *value = node->cfg_custom_en;
	else return -EINVAL;
	return 0;
}
int of_get_named_gpio(const struct device_node *node, const char *name, int index)
{
	(void)index;
	if (!strcmp(name, "reset-gpio")) return node->reset_gpio;
	if (!strcmp(name, "irq-gpio")) return node->irq_gpio;
	if (!strcmp(name, "nubia_ver-gpio")) return node->nubia_ver_gpio;
	return -EINVAL;
}

int led_classdev_register_ext(struct device *parent, struct led_classdev *cdev,
			     const void *init_data)
{
	(void)parent;
	(void)init_data;
	if (host.led_register_error)
		return host.led_register_error;
	memset(&host_led_device, 0, sizeof(host_led_device));
	host_led_device.driver_data = cdev;
	host_led_device.kobj.dev = &host_led_device;
	cdev->dev = &host_led_device;
	return 0;
}
void led_classdev_unregister(struct led_classdev *cdev) { (void)cdev; }
int sysfs_create_group(struct kobject *kobject, const struct attribute_group *group)
{
	(void)kobject;
	(void)group;
	return host.sysfs_error;
}
void sysfs_remove_group(struct kobject *kobject, const struct attribute_group *group)
{
	(void)kobject;
	(void)group;
}

int request_firmware(const struct firmware **firmware, const char *name,
		     struct device *device)
{
	(void)name;
	(void)device;
	if (host.firmware_error)
		return host.firmware_error;
	*firmware = host.firmware;
	return 0;
}
int request_firmware_nowait(void *module, int action, const char *name,
			    struct device *device, gfp_t flags, void *context,
			    void (*callback)(const struct firmware *, void *))
{
	(void)module;
	(void)action;
	(void)name;
	(void)device;
	(void)flags;
	(void)context;
	(void)callback;
	host.firmware_nowait_calls++;
	return host.firmware_error;
}
void release_firmware(const struct firmware *firmware)
{
	(void)firmware;
	host.firmware_releases++;
}

void msleep(unsigned int milliseconds) { (void)milliseconds; }
void usleep_range(unsigned int minimum, unsigned int maximum)
{ (void)minimum; (void)maximum; }
int schedule_work(struct work_struct *work)
{
	work->pending = 1;
	host.scheduled_work++;
	return 1;
}
void hrtimer_init(struct hrtimer *timer, int clock_id, int mode)
{ (void)clock_id; (void)mode; memset(timer, 0, sizeof(*timer)); }
int hrtimer_start(struct hrtimer *timer, long long expires, int mode)
{ (void)expires; (void)mode; timer->active = 1; return 0; }
long long ns_to_ktime(long long nanoseconds) { return nanoseconds; }
long long ktime_set(long seconds, unsigned long nanoseconds)
{ return seconds * 1000000000LL + (long long)nanoseconds; }

struct task_struct *kthread_create(int (*thread_function)(void *), void *data,
				   const char *name)
{
	(void)thread_function;
	(void)data;
	(void)name;
	host_task.running = 0;
	return &host_task;
}
int wake_up_process(struct task_struct *task) { task->running = 1; return 1; }
bool kthread_should_stop(void) { return false; }

struct proc_dir_entry *proc_create(const char *name, unsigned short mode,
				   struct proc_dir_entry *parent,
				   const struct proc_ops *operations)
{
	(void)name;
	(void)mode;
	(void)parent;
	(void)operations;
	return host.proc_error ? NULL : &host_proc_entry;
}
void remove_proc_entry(const char *name, struct proc_dir_entry *parent)
{ (void)name; (void)parent; }
ssize_t simple_read_from_buffer(void *to, size_t count, loff_t *position,
				const void *from, size_t available)
{
	size_t copied;
	if (*position >= (loff_t)available)
		return 0;
	copied = available - (size_t)*position;
	if (copied > count)
		copied = count;
	memcpy(to, (const u8 *)from + *position, copied);
	*position += (loff_t)copied;
	return (ssize_t)copied;
}

void *zlog_register_client(struct zlog_module_info *module_info)
{ (void)module_info; return &host; }
void zlog_client_record(void *client, const char *format, ...)
{ (void)client; (void)format; host.zlog_records++; }
void zlog_client_notify(void *client, u32 event)
{ (void)client; (void)event; host.zlog_notifications++; }

static void init_aw(struct aw22xxx *aw, struct i2c_client *client)
{
	memset(aw, 0, sizeof(*aw));
	aw->i2c = client;
	aw->dev = &client->dev;
	aw->reset_gpio = 7;
	aw->irq_gpio = 8;
	aw->imax = 3;
	aw->container_update_state = 2;
	aw->cdev.dev = &host_led_device;
	host_led_device.driver_data = &aw->cdev;
	host_led_device.kobj.dev = &host_led_device;
	mutex_init(&aw->cfg_lock);
	INIT_WORK(&aw->brightness_work, aw22xxx_brightness_work);
	INIT_WORK(&aw->task_work, aw22xxx_task_work);
	INIT_WORK(&aw->fw_work, aw22xxx_fw_work_routine);
	INIT_WORK(&aw->cfg_work, aw22xxx_cfg_work_routine);
	INIT_WORK(&aw->recover_work, aw22xxx_recover_work_routine);
}

static void test_i2c_hardware_irq(void)
{
	struct i2c_adapter adapter = { .functional = 1 };
	struct i2c_client client = { .adapter = &adapter };
	struct aw22xxx aw;
	u8 value = 0;

	host_reset();
	init_aw(&aw, &client);
	CHECK(aw22xxx_i2c_write(&aw, 5, 9) == 2);
	CHECK(host.registers[5] == 9);
	host.send_failures = 1;
	CHECK(aw22xxx_i2c_write(&aw, 6, 10) == 2);
	host.send_failures = 2;
	CHECK(aw22xxx_i2c_write(&aw, 7, 11) < 0);
	host.registers[3] = 0x5a;
	CHECK(aw22xxx_i2c_read(&aw, 3, &value) == 1 && value == 0x5a);
	host.send_failures = 1;
	CHECK(aw22xxx_i2c_read(&aw, 3, &value) == 1);
	host.recv_failures = 1;
	CHECK(aw22xxx_i2c_read(&aw, 3, &value) == 1);
	CHECK(aw22xxx_hw_reset(&aw) == 0);
	aw.reset_gpio = UINT32_MAX;
	CHECK(aw22xxx_hw_reset(&aw) == -EINVAL);
	aw.reset_gpio = 7;
	host.registers[1] = 118;
	host.registers[0] = 24;
	CHECK(aw22xxx_read_chipid(&aw) == 0 && aw.chip_type == 1);
	host.registers[0] = 39;
	CHECK(aw22xxx_read_chipid(&aw) == 0 && aw.chip_type == 2);
	host.registers[0] = 99;
	CHECK(aw22xxx_read_chipid(&aw) == -EINVAL);
	CHECK(aw22xxx_led_imax_cfg(&aw) == 0 && aw.imax == 7);
	CHECK(aw22xxx_interrupt_setup(&aw) >= 0);
	host.registers[10] = 0x10;
	aw.zlog_client = &host;
	CHECK(aw22xxx_irq(108, &aw) == IRQ_HANDLED);
	CHECK(aw.recover_work.pending && host.zlog_notifications == 1);
	host.registers[10] = 0x11;
	aw.effect = 4;
	CHECK(aw22xxx_irq_v15(108, &aw) == IRQ_HANDLED);
	CHECK(aw.cfg_work.pending);
	aw.imax = 3;
	CHECK(aw22xxx_led_init(&aw) == 0);
	aw.imax = 13;
	CHECK(aw22xxx_led_init(&aw) == -EINVAL);
	CHECK(aw22xxx_init_cfg_update_array(&aw) == 0);
}

static void test_firmware_and_configuration(void)
{
	static const u8 cfg_data[] = { 255, 1, 16, 0xaa, 17, 0xbb, 255, 0, 2, 1 };
	static const u8 invalid_fw_data[] = { 0, 1, 2, 3 };
	static const struct firmware cfg_fw = { sizeof(cfg_data), cfg_data };
	static const struct firmware invalid_fw = { sizeof(invalid_fw_data), invalid_fw_data };
	struct i2c_adapter adapter = { .functional = 1 };
	struct i2c_client client = { .adapter = &adapter };
	struct aw22xxx aw;

	host_reset();
	free_cfg_names();
	init_aw(&aw, &client);
	CHECK(aw22xxx_alloc_name_array() == 0);
	CHECK(aw22xxx_get_fwname(4) == 0 && !strcmp(aw22xxx_dyn_name, "lamps_init.bin"));
	CHECK(aw22xxx_get_fwname(0x01002003) == 0);
	CHECK(aw22xxx_get_fwname(0x02002003) == 0);
	CHECK(aw22xxx_get_fwname(0x03002003) == 0);
	CHECK(aw22xxx_get_fwname(0xff000000) == -EINVAL);
	aw.cfg_custom_en = 0;
	aw.rgb_val[0] = 0x112233;
	aw.imax = 2;
	aw22xxx_cfg_loaded(&cfg_fw, &aw);
	CHECK(host.registers[16] == 0x11 && host.firmware_releases == 1);
	aw22xxx_cfg_loaded(NULL, &aw);
	CHECK(host.firmware_releases == 2);
	host.firmware = &invalid_fw;
	aw22xxx_fw_loaded(&invalid_fw, &aw);
	aw22xxx_fw_loaded(NULL, &aw);
	CHECK(host.firmware_releases >= 4);
	host.firmware = &cfg_fw;
	strcpy(aw22xxx_dyn_name, "cfg.bin");
	CHECK(aw22xxx_cfg_update_wait_from_dyn_name(&aw) == 0);
	aw.container_update_state = 0;
	CHECK(aw22xxx_cfg_update_wait_from_dyn_name(&aw) == -EINVAL);
	aw.container_update_state = 2;
	CHECK(aw22xxx_set_cfg_run_state(0x01000000) == 0);
	CHECK(aw22xxx_set_cfg_run_state(0x03002000) == 0);
	aw.effect = 4;
	aw.cfg_custom_en = 1;
	host.firmware = &cfg_fw;
	aw22xxx_cfg_recover_update_wait(&aw);
	CHECK(aw.task_irq == 1);
	free_cfg_names();
}

static void test_work_timer_and_pattern(void)
{
	struct i2c_adapter adapter = { .functional = 1 };
	struct i2c_client client = { .adapter = &adapter };
	struct aw22xxx aw;
	u8 pattern[25] = { 0 };

	host_reset();
	init_aw(&aw, &client);
	aw.cdev.brightness = LED_FULL;
	aw22xxx_brightness_work(&aw.brightness_work);
	aw.task0 = 0x41;
	aw.task1 = 2;
	aw22xxx_task_work(&aw.task_work);
	aw22xxx_fw_work_routine(&aw.fw_work);
	CHECK(aw.container_update_state == 1 && host.firmware_nowait_calls == 1);
	aw.container_update_state = 2;
	aw.effect = 2;
	aw22xxx_cfg_work_routine(&aw.cfg_work);
	CHECK(host.firmware_nowait_calls == 2);
	lamp_effect = 4;
	fan_effect = 2;
	aw22xxx_recover_work_routine(&aw.recover_work);
	CHECK(aw.effect == 2);
	CHECK(aw22xxx_fw_timer_func(&aw.timer) == HRTIMER_NORESTART);
	aw22xxx_fw_init(&aw);
	CHECK(aw.timer.active && aw.timer.function == aw22xxx_fw_timer_func);
	for (int i = 0; i < 25; i++) pattern[i] = (u8)i;
	CHECK(aw22xxx_set_breath_data(&aw, pattern) == 0 && duration == 24);
	memcpy(user_para_data, pattern, sizeof(pattern));
	write_idx = 1;
	read_idx = 0;
	kthread_status = 1;
	CHECK(aw22xxx_play(&aw) == 0 && kthread_status == 0);
}

static void test_sysfs_and_proc(void)
{
	struct i2c_adapter adapter = { .functional = 1 };
	struct i2c_client client = { .adapter = &adapter };
	struct aw22xxx aw;
	char buffer[PAGE_SIZE] = { 0 };
	char id_buffer[32] = { 0 };
	loff_t position = 0;
	const char *values = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25";

	host_reset();
	free_cfg_names();
	init_aw(&aw, &client);
	CHECK(aw22xxx_alloc_name_array() == 0);
	aw.effect = 4;
	CHECK(aw22xxx_cfg_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_cfg_store(&host_led_device, NULL, "3", 1) == 1);
	CHECK(aw22xxx_effect_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_effect_store(&host_led_device, NULL, "4", 1) == 1);
	CHECK(aw22xxx_fw_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_fw_store(&host_led_device, NULL, "1", 1) == 1);
	CHECK(aw22xxx_hwen_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_hwen_store(&host_led_device, NULL, "1", 1) == 1);
	CHECK(aw22xxx_imax_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_imax_store(&host_led_device, NULL, "2", 1) == 1);
	write_idx = 0;
	CHECK(aw22xxx_para_store(&host_led_device, NULL, values, strlen(values)) == (ssize_t)strlen(values));
	CHECK(aw22xxx_para_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_reg_store(&host_led_device, NULL, "20 aa", 5) == 5);
	CHECK(aw22xxx_reg_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_rgb_store(&host_led_device, NULL, "2 112233", 8) == 8);
	CHECK(aw22xxx_rgb_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_task0_store(&host_led_device, NULL, "41", 2) == 2);
	CHECK(aw22xxx_task0_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_task1_store(&host_led_device, NULL, "2", 1) == 1);
	CHECK(aw22xxx_task1_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_task_irq_store(&host_led_device, NULL, "7", 1) == 1);
	CHECK(aw22xxx_task_irq_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_multi_breath_pattern_show(&host_led_device, NULL, buffer) > 0);
	CHECK(aw22xxx_multi_breath_pattern_store(&host_led_device, NULL, "0", 1) == 1);
	strcpy(g_chip_id.text, "aw22118");
	CHECK(get_aw22xxx_id(NULL, id_buffer, sizeof(id_buffer), &position) == 7);
	CHECK(!memcmp(id_buffer, "aw22118", 7));
	CHECK(aw22xxx_create_proc_entry() == 0);
	host.proc_error = 1;
	CHECK(aw22xxx_create_proc_entry() == -ENOMEM);
	free_cfg_names();
}

static void test_parse_probe_lifecycle(void)
{
	struct device_node child = {
		.led_name = "aw22xxx-test", .imax = 3, .brightness = 5,
		.max_brightness = 255,
	};
	struct device_node root = {
		.child = &child, .aw_drv_ver = 11, .cfg_custom_en = 1,
		.reset_gpio = 7, .irq_gpio = 8, .nubia_ver_gpio = 9,
	};
	struct i2c_adapter adapter = { .functional = 1 };
	struct i2c_client client = { .adapter = &adapter };
	struct aw22xxx aw;

	host_reset();
	free_cfg_names();
	client.dev.of_node = &root;
	client.dev.kobj.dev = &client.dev;
	init_aw(&aw, &client);
	CHECK(aw22xxx_parse_led_cdev(&aw, &root) == 0);
	CHECK(aw.cdev.brightness_set == aw22xxx_set_brightness);
	aw22xxx_set_brightness(&aw.cdev, LED_FULL);
	CHECK(aw.brightness_work.pending);
	free_cfg_names();
	CHECK(aw22xxx_i2c_probe(&client) == 0);
	CHECK(client.data != NULL && host.irq_requests == 1);
	if (client.data)
		aw22xxx_i2c_remove(&client);
	client.data = NULL;
	free_cfg_names();
	host_reset();
	adapter.functional = 0;
	CHECK(aw22xxx_i2c_probe(&client) == -EIO);
	CHECK(init_module() == 0 && host.add_driver_calls == 1);
	cleanup_module();
	CHECK(host.del_driver_calls == 1);
}

int main(void)
{
	test_i2c_hardware_irq();
	test_firmware_and_configuration();
	test_work_timer_and_pattern();
	test_sysfs_and_proc();
	test_parse_probe_lifecycle();
	free_cfg_names();
	if (host.failures)
		return 1;
	puts("PASS zte_led host tests: 58/58 reconstructed functions covered");
	return 0;
}
