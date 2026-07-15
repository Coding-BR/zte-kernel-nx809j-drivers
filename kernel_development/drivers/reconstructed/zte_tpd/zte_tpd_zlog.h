/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_ZLOG_H
#define _ZTE_TPD_ZLOG_H

#define ZTE_TPD_ZLOG_BUFFER_SIZE 2048

typedef enum zlog_error_no {
	TP_I2C_R_ERROR_NO = 1,
	TP_I2C_W_ERROR_NO,
	TP_I2C_R_WARN_NO,
	TP_I2C_W_WARN_NO,
	TP_SPI_R_ERROR_NO,
	TP_SPI_W_ERROR_NO,
	TP_SPI_R_WARN_NO,
	TP_SPI_W_WARN_NO,
	TP_CRC_ERROR_NO,
	TP_FW_UPGRADE_ERROR_NO,
	TP_ESD_CHECK_ERROR_NO,
	TP_ESD_CHECK_WARN_NO,
	TP_PROBE_ERROR_NO,
	TP_SUSPEND_GESTURE_OPEN_NO,
	TP_REQUEST_FIRMWARE_ERROR_NO,
	TP_GHOST_ERROR_NO,
	TP_HAL_SERVICE_CRASH_NO,
	TP_SAVE_BUFFER_FULL_NO,
	TP_ZLOG_ERROR_MAX,
} zlog_error_no;

enum zte_tpd_zlog_notify_code {
	ZLOG_TP_I2C_R_ERROR_NO = 1,
	ZLOG_TP_I2C_W_ERROR_NO = 2,
	ZLOG_TP_CRC_ERROR_NO = 3,
	ZLOG_TP_FW_UPGRADE_ERROR_NO = 4,
	ZLOG_TP_ESD_CHECK_ERROR_NO = 5,
	ZLOG_TP_SPI_R_ERROR_NO = 6,
	ZLOG_TP_SPI_W_ERROR_NO = 7,
	ZLOG_TP_SUSPEND_GESTURE_OPEN_NO = 9,
	ZLOG_TP_GHOST_ERROR_NO = 0x10,
	ZLOG_TP_HAL_SERVICE_CRASH_NO = 0x11,
	ZLOG_TP_SAVE_BUFFER_FULL_NO = 0x12,
	ZLOG_TP_I2C_R_WARN_NO = 0x40000b,
	ZLOG_TP_I2C_W_WARN_NO = 0x40000c,
	ZLOG_TP_SPI_R_WARN_NO = 0x40000d,
	ZLOG_TP_SPI_W_WARN_NO = 0x40000e,
	ZLOG_TP_ESD_CHECK_WARN_NO = 0x40000f,
};

struct zlog_client;

struct zlog_mod_info {
	u32 module_no;
	u32 reserved_04;
	const char *name;
	const char *module_name;
	const char *ic_name;
	const char *device_name;
	const struct file_operations *fops;
};

struct zlog_error_item {
	unsigned long count[TP_ZLOG_ERROR_MAX];
	unsigned long timer[TP_ZLOG_ERROR_MAX];
};

/* Partial overlay: only fields proven by the NX809J stock ELF/Ghidra are named. */
struct ztp_device {
	u8 reserved_0000[0xa48];
	struct zlog_client *zlog_client;
	struct delayed_work zlog_register_work;
	struct zlog_error_item zlog_item;
	char *ztp_zlog_buffer;
	bool zlog_registered;
	u8 reserved_bf1[7];
	unsigned long tp_reset_timer;
	s8 probe_fail_chip_id;
	u8 reserved_c01[0xff];
	u32 firmware_version;
};

static_assert(sizeof(struct zlog_mod_info) == 48);
static_assert(sizeof(struct delayed_work) == 0x68);
static_assert(offsetof(struct ztp_device, zlog_client) == 0xa48);
static_assert(offsetof(struct ztp_device, zlog_register_work) == 0xa50);
static_assert(offsetof(struct ztp_device, zlog_item) == 0xab8);
static_assert(offsetof(struct ztp_device, ztp_zlog_buffer) == 0xbe8);
static_assert(offsetof(struct ztp_device, zlog_registered) == 0xbf0);
static_assert(offsetof(struct ztp_device, tp_reset_timer) == 0xbf8);
static_assert(offsetof(struct ztp_device, probe_fail_chip_id) == 0xc00);
static_assert(offsetof(struct ztp_device, firmware_version) == 0xd00);

extern struct zlog_mod_info zlog_tp_dev;
extern struct zlog_client *zlog_register_client(struct zlog_mod_info *module);
extern void zlog_client_record(struct zlog_client *client, const char *format, ...);
extern void zlog_client_notify(struct zlog_client *client, u32 event);

static inline struct ztp_device *tpd_zlog_device(void)
{
	return (struct ztp_device *)(unsigned long)tpd_cdev;
}

void tpd_zlog_register(struct ztp_device *cdev);
int tpd_zlog_check(zlog_error_no error_no);
void tpd_zlog_record_notify(zlog_error_no error_no);
void zlog_register_work(struct work_struct *work);
void zlog_register_work_init(void);
void zlog_register_work_deinit(void);
void tpd_zlog_init(void);
ssize_t tp_zlog_debug_read(struct file *file, char __user *buffer,
			   size_t count, loff_t *offset);
ssize_t tp_zlog_debug_write(struct file *file, const char __user *buffer,
			    size_t len, loff_t *offset);

#endif
