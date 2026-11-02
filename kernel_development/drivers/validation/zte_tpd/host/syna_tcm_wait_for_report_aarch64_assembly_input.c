typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
#define offsetof(type, member) __builtin_offsetof(type, member)
#define static_assert _Static_assert
#define true 1
#define __user
#define __init
#define __exit

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

int printk(const char *format, ...);
void mutex_lock(void *lock);
void mutex_unlock(void *lock);
void msleep(unsigned int milliseconds);
int syna_tcm_get_event_data(struct tcm_dev *tcm, u8 *code,
                            struct tcm_buffer *event_data);

#include "../../../reconstructed/zte_tpd/syna_tcm_wait_for_report.c"
