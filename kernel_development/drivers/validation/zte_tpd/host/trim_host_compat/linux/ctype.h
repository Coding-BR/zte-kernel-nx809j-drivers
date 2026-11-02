#ifndef ZTE_TPD_TRIM_HOST_LINUX_CTYPE_H
#define ZTE_TPD_TRIM_HOST_LINUX_CTYPE_H

#include <stddef.h>

extern size_t strlen(const char *input);

static inline int trim_host_isspace(unsigned int value)
{
  return value == '\t' || value == '\n' || value == '\v' ||
         value == '\f' || value == '\r' || value == ' ';
}

#define isspace trim_host_isspace

#endif
