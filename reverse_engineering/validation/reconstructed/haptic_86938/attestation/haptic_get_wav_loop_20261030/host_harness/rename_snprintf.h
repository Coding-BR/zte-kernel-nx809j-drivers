#include <stdio.h>
#undef snprintf
#define snprintf __wrap_snprintf
int __wrap_snprintf(char *buffer, size_t size, const char *format, ...);
