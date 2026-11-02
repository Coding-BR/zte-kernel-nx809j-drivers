#ifndef HAPTIC_HOST_LINUX_DEVICE_H
#define HAPTIC_HOST_LINUX_DEVICE_H

#include <linux/types.h>

struct device;
struct device_attribute;

struct attribute {
	const char *name;
	umode_t mode;
};

struct device_attribute {
	struct attribute attr;
	ssize_t (*show)(struct device *, struct device_attribute *, char *);
	ssize_t (*store)(struct device *, struct device_attribute *,
			 const char *, size_t);
};

#define __HAPTIC_STRINGIFY_1(value) #value
#define __HAPTIC_STRINGIFY(value) __HAPTIC_STRINGIFY_1(value)
#define DEVICE_ATTR_RW(_name) \
	struct device_attribute dev_attr_##_name = { \
		.attr = { .name = __HAPTIC_STRINGIFY(_name), .mode = 0644 }, \
		.show = _name##_show, .store = _name##_store, \
	}

#endif
