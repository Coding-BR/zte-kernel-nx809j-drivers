typedef _Bool bool;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef long long __int64;
typedef unsigned long size_t;
#define __fastcall
#define static_assert _Static_assert
#define offsetof(type, member) __builtin_offsetof(type, member)
#define NULL ((void *)0)

struct device;
struct tcm_dev;
struct tcm_buffer;
struct syna_tcm_flash_access_context;
enum flash_area { FLASH_AREA_UNKNOWN = 0 };

int printk(const char *format, ...);
void *memset(void *destination, int value, size_t length);
void *memcpy(void *destination, const void *source, size_t length);
struct device *syna_request_managed_device(void);
void *devm_kmalloc(struct device *dev, size_t size, unsigned int flags);
void devm_kfree(struct device *dev, const void *ptr);
int syna_tcm_set_up_flash_access(
	struct tcm_dev *tcm, struct syna_tcm_flash_access_context *access,
	unsigned int delay_ms, unsigned int timeout_ms);
int syna_tcm_read_flash(struct tcm_dev *tcm, unsigned int address,
		u8 *destination, unsigned int length, int delay_ms);
int syna_tcm_read_flash_boot_config(
	struct tcm_dev *tcm, struct syna_tcm_flash_access_context *access,
		struct tcm_buffer *buffer, int delay_ms);
int syna_tcm_read_flash_boot_cs_config(
	struct tcm_dev *tcm, struct syna_tcm_flash_access_context *access,
		struct tcm_buffer *buffer, unsigned int offset, int length,
		int delay_ms);
int syna_tcm_read_flash_mtp_config(
	struct tcm_dev *tcm, struct syna_tcm_flash_access_context *access,
		struct tcm_buffer *buffer, unsigned int offset, int length,
		int delay_ms);
int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
		unsigned int delay_ms);
char *syna_tcm_get_partition_id_string(enum flash_area partition_id);

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"
#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_area.c"
