#ifndef ZTE_TPD_PARSE_IDINFO_HOST_COMPAT_H
#define ZTE_TPD_PARSE_IDINFO_HOST_COMPAT_H

typedef __SIZE_TYPE__ size_t;

extern void *memcpy(void *destination, const void *source, size_t length);

extern int printk(const char *format, ...);

#define __int8 char
#define __int64 long long
#define __fastcall
#define _DWORD int
#define _BYTE unsigned char
#define unk_3B313 "\0013[error] %s: Invalid given data buffer\n"
#define unk_3944E "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n"
#define unk_320CD "\0013[error] %s: Fail to copy identification info\n"

#endif
