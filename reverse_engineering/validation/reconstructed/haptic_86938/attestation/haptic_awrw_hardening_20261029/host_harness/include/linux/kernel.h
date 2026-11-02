#ifndef AWRW_SHOW_HOST_LINUX_KERNEL_H
#define AWRW_SHOW_HOST_LINUX_KERNEL_H

#include <stdio.h>

int kernel_snprintf(char *buffer, size_t size, const char *format, ...);
#define snprintf kernel_snprintf

#endif
