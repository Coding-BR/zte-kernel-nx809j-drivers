#include <assert.h>
#include <errno.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include <linux/device.h>
#include <linux/printk.h>
#include <linux/sysfs.h>

static struct kobject expected_kobject = { .marker = 0x8693 };
static struct kobject *observed_kobject;
static const struct attribute_group *observed_group;
static int configured_create_result;
static unsigned int create_call_count;
static unsigned int log_call_count;
static char observed_log[256];

int sysfs_create_group(struct kobject *kobj,
		       const struct attribute_group *group)
{
	observed_kobject = kobj;
	observed_group = group;
	create_call_count++;
	return configured_create_result;
}

int haptic_host_printk(const char *format, ...)
{
	va_list args;
	int result;

	log_call_count++;
	va_start(args, format);
	result = vsnprintf(observed_log, sizeof(observed_log), format, args);
	va_end(args);
	return result;
}

#define DEFINE_ATTRIBUTE_CALLBACKS(name) \
	ssize_t name##_show(struct device *dev, struct device_attribute *attr, \
			    char *buf) \
	{ \
		(void)dev; (void)attr; (void)buf; return 0; \
	} \
	ssize_t name##_store(struct device *dev, struct device_attribute *attr, \
			     const char *buf, size_t count) \
	{ \
		(void)dev; (void)attr; (void)buf; return (ssize_t)count; \
	}

DEFINE_ATTRIBUTE_CALLBACKS(cont_drv_lvl)
DEFINE_ATTRIBUTE_CALLBACKS(cont_drv_time)
DEFINE_ATTRIBUTE_CALLBACKS(cont_brk_time)
DEFINE_ATTRIBUTE_CALLBACKS(trig)
DEFINE_ATTRIBUTE_CALLBACKS(rtp_auto_sin)

#include "haptic_86938_fn_126_aw8693x_creat_node.c"

struct aw_haptic {
	unsigned char opaque[0xf8];
	struct kobject *kobj;
};

static void check_attribute(unsigned int index, const char *name,
			    ssize_t (*show)(struct device *,
					    struct device_attribute *, char *),
			    ssize_t (*store)(struct device *,
					     struct device_attribute *,
					     const char *, size_t))
{
	struct attribute *attribute = aw8693x_vibrator_attribute_group.attrs[index];
	struct device_attribute *device_attribute =
		(struct device_attribute *)attribute;

	assert(attribute != NULL);
	assert(strcmp(attribute->name, name) == 0);
	assert(attribute->mode == 0644);
	assert(device_attribute->show == show);
	assert(device_attribute->store == store);
}

int main(void)
{
	struct aw_haptic haptic = { 0 };
	struct kobject *kobject = &expected_kobject;
	int result;

	memcpy((char *)&haptic + 0xf8, &kobject, sizeof(kobject));
	assert(aw8693x_vibrator_attribute_group.name == NULL);
	assert(aw8693x_vibrator_attribute_group.is_visible == NULL);
	assert(aw8693x_vibrator_attribute_group.is_bin_visible == NULL);
	assert(aw8693x_vibrator_attribute_group.bin_attrs == NULL);
	check_attribute(0, "cont_drv_lvl", cont_drv_lvl_show, cont_drv_lvl_store);
	check_attribute(1, "cont_drv_time", cont_drv_time_show, cont_drv_time_store);
	check_attribute(2, "cont_brk_time", cont_brk_time_show, cont_brk_time_store);
	check_attribute(3, "trig", trig_show, trig_store);
	check_attribute(4, "rtp_auto_sin", rtp_auto_sin_show, rtp_auto_sin_store);
	assert(aw8693x_vibrator_attribute_group.attrs[5] == NULL);

	configured_create_result = 0;
	result = aw8693x_creat_node(&haptic);
	assert(result == 0);
	assert(create_call_count == 1);
	assert(observed_kobject == &expected_kobject);
	assert(observed_group == &aw8693x_vibrator_attribute_group);
	assert(log_call_count == 0);

	configured_create_result = 1;
	result = aw8693x_creat_node(&haptic);
	assert(result == 0);
	assert(create_call_count == 2);
	assert(log_call_count == 0);

	configured_create_result = -EIO;
	result = aw8693x_creat_node(&haptic);
	assert(result == -EIO);
	assert(create_call_count == 3);
	assert(log_call_count == 1);
	assert(strcmp(observed_log,
		      "\0013[haptic_hv][2330]aw8693x_creat_node: error create aw8693x sysfs attr files\n") == 0);

	printf("PASS: sysfs group, five ordered 0644 callbacks, success normalization, and negative error/log behavior\n");
	return 0;
}
