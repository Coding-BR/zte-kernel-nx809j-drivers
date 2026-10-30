#include <stddef.h>

typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
#define static_assert _Static_assert

struct device;
struct tcm_dev;
struct syna_tcm_flash_access_context;
struct syna_tcm_fw_image;

struct device *syna_request_managed_device(void);
void devm_kfree(struct device *device, const void *pointer);
int printk(const char *format, ...);
int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					 struct syna_tcm_flash_access_context *access,
					 unsigned int timeout_ms,
					 unsigned int mode_delay_ms);
int syna_tcm_update_flash_block(struct tcm_dev *tcm,
					struct syna_tcm_flash_access_context *access,
					void *partition, int data_offset,
					int data_length, unsigned long optimize);
int syna_tcm_reset(struct tcm_dev *tcm, unsigned int delay_ms);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_do_fw_update_ex.c"
