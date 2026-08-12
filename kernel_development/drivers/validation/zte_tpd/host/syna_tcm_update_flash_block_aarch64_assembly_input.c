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
struct syna_tcm_fw_partition;

int printk(const char *format, ...);
void *memset(void *destination, int value, size_t length);
void *memcpy(void *destination, const void *source, size_t length);
void *devm_kmalloc(struct device *device, size_t size, unsigned int flags);
void devm_kfree(struct device *device, void *memory);
struct device *syna_request_managed_device(void);
void mutex_lock(void *lock);
void mutex_unlock(void *lock);
int syna_tcm_check_flash_block(struct tcm_dev *tcm,
				       struct syna_tcm_flash_access_context *access,
				       struct syna_tcm_fw_partition *partition);
const char *syna_tcm_get_partition_id_string(u8 partition_id);
int syna_tcm_write_flash(struct tcm_dev *tcm,
				 struct syna_tcm_flash_access_context *access,
				 int data_size, u8 *data, u32 data_length, u32 delay_ms);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_update_flash_block.c"
