#ifndef HAPTIC_HOST_LINUX_PRINTK_H
#define HAPTIC_HOST_LINUX_PRINTK_H

#define KERN_ERR "\0013"
int haptic_host_printk(const char *format, ...);
#define printk haptic_host_printk

#endif
