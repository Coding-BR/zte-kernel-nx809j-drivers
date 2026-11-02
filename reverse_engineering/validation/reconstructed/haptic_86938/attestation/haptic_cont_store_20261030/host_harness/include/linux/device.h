#ifndef HAPTIC_CONT_STORE_HOST_LINUX_DEVICE_H
#define HAPTIC_CONT_STORE_HOST_LINUX_DEVICE_H

#include <stddef.h>
#include <sys/types.h>

struct device {
	unsigned char reserved[0x98];
	void *driver_data;
};

struct device_attribute {
	unsigned char reserved;
};

#endif
