#ifndef HAPTIC_HOST_LINUX_KERNEL_H
#define HAPTIC_HOST_LINUX_KERNEL_H
#define KERN_INFO "\0016"
#define min(x, y) ((x) < (y) ? (x) : (y))
int printk(const char *format, ...);
#endif

