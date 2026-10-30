#ifndef AWRW_SHOW_HOST_LINUX_DEVICE_H
#define AWRW_SHOW_HOST_LINUX_DEVICE_H

#include <linux/types.h>

struct device {
	u8 reserved[0x98];
	u8 *driver_private;
};

struct device_attribute {
	int unused;
};

#endif
