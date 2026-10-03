typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
#define __break(value) ((void)(value))
#define static_assert _Static_assert
#define offsetof(type, member) __builtin_offsetof(type, member)
#define NULL ((void *)0)

struct tcm_dev;
struct tcm_identification_info;
struct tcm_boot_info;
struct syna_tcm_flash_access_context;

int printk(const char *format, ...);
int syna_tcm_identify(struct tcm_dev *tcm,
                      struct tcm_identification_info *identify_info,
                      unsigned int timeout_ms);
int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
                            unsigned int delay_ms);
int syna_tcm_get_boot_info(struct tcm_dev *tcm,
                           struct tcm_boot_info *boot_info,
                           unsigned int timeout_ms);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_set_up_flash_access.c"
