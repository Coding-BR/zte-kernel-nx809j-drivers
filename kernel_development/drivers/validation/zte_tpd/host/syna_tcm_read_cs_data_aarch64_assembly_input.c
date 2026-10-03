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
#define true 1
#define false 0
#ifndef NULL
#define NULL ((void *)0)
#endif

struct device;
struct tcm_dev;
struct tcm_buffer;
struct syna_tcm_flash_access_context;

int printk(const char *format, ...);
void mutex_init(void *lock);
struct device *syna_request_managed_device(void);
void devm_kfree(struct device *device, void *memory);
void *memcpy(void *destination, const void *source, size_t length);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_read_cs_data.c"
