#include <stddef.h>

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

#define static_assert(condition) _Static_assert(condition, #condition)

extern int printk(const char *format, ...);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_set_touch_report_config.c"

int syna_tcm_set_touch_report_config_aarch64_probe(struct tcm_dev *tcm,
							char *config)
{
	return syna_tcm_set_touch_report_config(tcm, config, 4U, 0U);
}
