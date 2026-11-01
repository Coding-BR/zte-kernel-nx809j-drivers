#ifndef HAPTIC_HOST_LINUX_PRINTK_H
#define HAPTIC_HOST_LINUX_PRINTK_H
#define KERN_ERR "\0013"
#define KERN_INFO "\0016"
int printk(const char *format, ...);
#endif
