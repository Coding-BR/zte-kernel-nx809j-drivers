#ifndef AUDIO_OFF_HOST_LINUX_PRINTK_H
#define AUDIO_OFF_HOST_LINUX_PRINTK_H

#define KERN_INFO "\0016"
int printk(const char *format, ...);

#endif
