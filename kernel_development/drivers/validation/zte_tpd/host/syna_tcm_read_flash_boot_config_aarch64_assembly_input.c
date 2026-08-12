#include <stddef.h>

typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef long long __int64;
typedef unsigned long size_t;
#define __fastcall
#define static_assert _Static_assert
#define NULL ((void *)0)

struct tcm_dev;
struct syna_tcm_flash_access_context;
struct tcm_buffer;

int printk(const char *format, ...);
void *memset(void *destination, int value, size_t length);
void *syna_pal_mem_alloc(int size);
void syna_pal_mem_free(void *memory);
int syna_tcm_read_flash(struct tcm_dev *tcm, unsigned int address,
			u8 *destination, unsigned int length, int delay_ms);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_boot_config.c"
