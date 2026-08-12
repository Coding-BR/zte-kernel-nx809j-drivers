#include <stddef.h>

typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef long long __int64;
typedef unsigned long size_t;
#define __fastcall
#define static_assert(condition) _Static_assert(condition, #condition)
#ifndef NULL
#define NULL ((void *)0)
#endif

struct device;

int printk(const char *format, ...);
struct device *syna_request_managed_device(void);
void *devm_kmalloc(struct device *device, size_t size, unsigned int flags);

#include "../../../reconstructed/zte_tpd/syna_pal_mem_alloc.c"
