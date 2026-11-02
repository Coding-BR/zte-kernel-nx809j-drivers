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

struct tcm_dev;

int printk(const char *format, ...);
void *memset(void *destination, int value, size_t length);
int syna_tcm_parse_fw_image(const u8 *image, u32 image_size,
				    void *parsed_image);
int syna_tcm_do_fw_update_ex(struct tcm_dev *tcm, void *parsed_image,
				     u32 flags, u32 offset, u32 length,
				     u32 delay_ms, u8 optimize);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_do_fw_update.c"
