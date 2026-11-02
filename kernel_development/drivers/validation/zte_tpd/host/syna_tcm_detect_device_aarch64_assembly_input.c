typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
#define offsetof(type, member) __builtin_offsetof(type, member)
#define static_assert _Static_assert

#define __user
#define __init
#define __exit
#define barrier() __asm__ __volatile__("" ::: "memory")

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

int syna_tcm_v1_detect(struct tcm_dev *tcm_dev, bool quick_setup,
                       bool reinit);
int printk(const char *format, ...);

#include "../../../reconstructed/zte_tpd/syna_tcm_detect_device.c"
