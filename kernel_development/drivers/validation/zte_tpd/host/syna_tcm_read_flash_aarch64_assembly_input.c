typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef long long __int64;
#define __fastcall
#define static_assert _Static_assert
#define offsetof(type, member) __builtin_offsetof(type, member)
#define NULL ((void *)0)

struct tcm_dev;
int printk(const char *format, ...);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash.c"
