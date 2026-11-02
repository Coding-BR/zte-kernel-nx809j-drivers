#ifndef HAPTIC_HOST_LINUX_PRINTK_H
#define HAPTIC_HOST_LINUX_PRINTK_H

#define KERN_ERR ""
#define KERN_INFO ""

int haptic_test_printk(const char *format, ...)
	__attribute__((format(printf, 1, 2)));

#define printk haptic_test_printk

#endif
