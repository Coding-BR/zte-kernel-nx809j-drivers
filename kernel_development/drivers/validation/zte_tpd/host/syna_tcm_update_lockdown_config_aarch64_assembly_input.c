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

struct device;
struct tcm_dev;
struct syna_tcm_flash_access_context;
struct tcm_buffer;

enum flash_area {
	FLASH_AREA_UNKNOWN = 0,
};

int printk(const char *format, ...);
void *memcpy(void *destination, const void *source, size_t length);
int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					struct syna_tcm_flash_access_context *access,
					u32 timeout_ms, u32 mode_delay_ms);
int syna_tcm_read_flash_boot_config(struct tcm_dev *tcm,
					struct syna_tcm_flash_access_context *access,
					struct tcm_buffer *buffer, int delay_ms);
int syna_tcm_check_flash_block(struct tcm_dev *tcm,
				       struct syna_tcm_flash_access_context *access,
				       void *partition);
int syna_tcm_write_flash(struct tcm_dev *tcm,
				 struct syna_tcm_flash_access_context *access,
				 int data_size, u8 *data, u32 data_length,
				 u32 delay_ms);
int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode, u32 delay_ms);
char *syna_tcm_get_partition_id_string(enum flash_area partition_id);
struct device *syna_request_managed_device(void);
void mutex_init(void *lock);
void devm_kfree(struct device *device, void *memory);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_update_lockdown_config.c"
