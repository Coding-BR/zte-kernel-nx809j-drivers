#include <stddef.h>

typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
typedef long long __int64;
#define __fastcall
#define static_assert _Static_assert
#define NULL ((void *)0)

struct device;
struct tcm_dev;
struct syna_tcm_flash_access_context;
struct tcm_buffer;

struct device *syna_request_managed_device(void);
void *devm_kmalloc(struct device *device, size_t size, unsigned int flags);
void devm_kfree(struct device *device, const void *pointer);
int printk(const char *format, ...);
int syna_tcm_read_flash(struct tcm_dev *tcm, unsigned int address,
				u8 *destination, unsigned int length, int delay_ms);
void *memset(void *destination, int value, size_t length);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_mtp_config.c"
