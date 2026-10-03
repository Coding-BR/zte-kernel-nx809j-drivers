#ifndef ZTE_TPD_DEVICE_ID_0001_HOST_COMPAT_H
#define ZTE_TPD_DEVICE_ID_0001_HOST_COMPAT_H

typedef __SIZE_TYPE__ size_t;
extern int strncmp(const char *s1, const char *s2, size_t n);
extern int printk(const char *format, ...);

#define __int8 char
#define __int64 long long
#define __fastcall
#define unk_3CC6C "\0013[error] %s: Device ID mismatched, FW: %s (limit: %s)\n"

#endif
