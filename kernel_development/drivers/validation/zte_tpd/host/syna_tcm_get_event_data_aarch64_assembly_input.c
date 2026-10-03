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

int printk(const char *format, ...);
int syna_tcm_buf_copy_2(struct tcm_buffer *destination,
                        struct tcm_buffer *source);

#define SYNA_TCM_GET_EVENT_DATA_EXTERNAL_BUF_COPY
#include "../../../reconstructed/zte_tpd/syna_tcm_get_event_data.c"
