#ifndef HAPTIC_OPEN_HARNESS_LINUX_FS_H
#define HAPTIC_OPEN_HARNESS_LINUX_FS_H

struct inode {
	unsigned long opaque;
};

struct file {
	void *private_data;
	unsigned long opaque;
};

#endif
