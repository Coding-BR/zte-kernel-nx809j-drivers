typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
#define offsetof(type, member) __builtin_offsetof(type, member)
#define static_assert _Static_assert
#define __user
#define __init
#define __exit
#define NULL ((void *)0)

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

int printk(const char *format, ...);

#include "../../../reconstructed/zte_tpd/syna_tcm_switch_fw_mode.c"
