#include <stddef.h>

typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

#define static_assert(condition) _Static_assert(condition, #condition)
#define true 1
#define false 0

extern int printk(const char *format, ...);
extern void mutex_lock(void *lock);
extern void mutex_unlock(void *lock);
extern void *memset(void *destination, int value, unsigned long length);
extern void *memcpy(void *destination, const void *source,
			   unsigned long length);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_preserve_touch_report_config.c"

int syna_tcm_preserve_touch_report_config_aarch64_probe(struct tcm_dev *tcm)
{
	return syna_tcm_preserve_touch_report_config(tcm, 0U);
}
