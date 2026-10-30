#ifndef HAPTIC_HOST_LINUX_SYSFS_H
#define HAPTIC_HOST_LINUX_SYSFS_H

#include <linux/types.h>

struct kobject {
	unsigned int marker;
};

struct attribute;
struct bin_attribute;

struct attribute_group {
	const char *name;
	umode_t (*is_visible)(struct kobject *, struct attribute *, int);
	umode_t (*is_bin_visible)(struct kobject *, struct bin_attribute *, int);
	struct attribute **attrs;
	struct bin_attribute **bin_attrs;
};

int sysfs_create_group(struct kobject *kobj,
		       const struct attribute_group *group);

#endif
