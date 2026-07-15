// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_led.c - ZTE Smart RGB LED Controller (Awinic AW22XXX) Driver
 *
 * Reconstructed from binary analysis of zte_led.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

#ifdef ZTE_LED_HOST_TEST
#include "tests/host_stubs.h"
#define AW22XXX_OPT_BARRIER(tag) do { (void)sizeof(tag); } while (0)
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/slab.h>
#include <linux/i2c.h>
#include <linux/leds.h>
#include <linux/gpio/consumer.h>
#include <linux/of_gpio.h>
#include <linux/of.h>
#include <linux/proc_fs.h>
#include <linux/uaccess.h>
#include <linux/mutex.h>
#include <linux/pinctrl/consumer.h>
#include <linux/firmware.h>
#include <linux/delay.h>
#include <linux/workqueue.h>
#include <linux/kthread.h>
#include <linux/hrtimer.h>
#include <linux/string.h>
#include <linux/build_bug.h>
#include <linux/stddef.h>
#define AW22XXX_OPT_BARRIER(tag) asm volatile("nop // " tag ::: "memory")
#endif

#define DRIVER_NAME "zte_led"

struct aw22xxx {
	struct i2c_client *i2c;              /* 0x000 */
	struct device *dev;                  /* 0x008 */
	struct led_classdev cdev;            /* 0x010 */
	struct work_struct brightness_work;  /* 0x1d0 */
	struct work_struct task_work;        /* 0x1f0 */
	struct work_struct fw_work;          /* 0x210 */
	struct work_struct cfg_work;         /* 0x230 */
	struct work_struct recover_work;     /* 0x250 */
	struct hrtimer timer;                /* 0x270 */
	struct mutex cfg_lock;               /* 0x2b0 */
	u32 reset_gpio;                      /* 0x2e0 */
	u32 irq_gpio;                        /* 0x2e4 */
	u32 nubia_ver_gpio;                  /* 0x2e8 */
	u8 no_interrupt;                     /* 0x2ec */
	u8 chip_type;                        /* 0x2ed */
	u8 init_flag;                        /* 0x2ee */
	u8 container_update_state;           /* 0x2ef */
	u32 imax;                            /* 0x2f0 */
	u32 reserved_2f4;
	u32 task_irq;                        /* 0x2f8 */
	u8 task0;                            /* 0x2fc */
	u8 task1;                            /* 0x2fd */
	u8 reserved_2fe[2];
	u32 effect;                          /* 0x300 */
	u8 cfg_custom_en;                    /* 0x304 */
	u8 reserved_305[3];
	u32 multi_breath_pattern;            /* 0x308 */
	u32 rgb_val[9];                      /* 0x30c */
	struct pinctrl *pinctrl;             /* 0x330 */
	struct pinctrl_state *pinctrl_default;
	struct pinctrl_state *pinctrl_sleep;
	u8 need_update;                      /* 0x348 */
	u8 reserved_349[7];
	void *zlog_client;                   /* 0x350 */
};

static_assert(offsetof(struct aw22xxx, brightness_work) == 0x1d0);
static_assert(offsetof(struct aw22xxx, task_work) == 0x1f0);
static_assert(offsetof(struct aw22xxx, fw_work) == 0x210);
static_assert(offsetof(struct aw22xxx, cfg_work) == 0x230);
static_assert(offsetof(struct aw22xxx, recover_work) == 0x250);
static_assert(offsetof(struct aw22xxx, timer) == 0x270);
static_assert(offsetof(struct aw22xxx, cfg_lock) == 0x2b0);
static_assert(offsetof(struct aw22xxx, reset_gpio) == 0x2e0);
static_assert(offsetof(struct aw22xxx, irq_gpio) == 0x2e4);
static_assert(offsetof(struct aw22xxx, no_interrupt) == 0x2ec);
static_assert(offsetof(struct aw22xxx, chip_type) == 0x2ed);
static_assert(offsetof(struct aw22xxx, init_flag) == 0x2ee);
static_assert(offsetof(struct aw22xxx, container_update_state) == 0x2ef);
static_assert(offsetof(struct aw22xxx, imax) == 0x2f0);
static_assert(offsetof(struct aw22xxx, task_irq) == 0x2f8);
static_assert(offsetof(struct aw22xxx, task0) == 0x2fc);
static_assert(offsetof(struct aw22xxx, effect) == 0x300);
static_assert(offsetof(struct aw22xxx, cfg_custom_en) == 0x304);
static_assert(offsetof(struct aw22xxx, multi_breath_pattern) == 0x308);
static_assert(offsetof(struct aw22xxx, rgb_val) == 0x30c);
static_assert(offsetof(struct aw22xxx, pinctrl) == 0x330);
static_assert(offsetof(struct aw22xxx, need_update) == 0x348);
static_assert(offsetof(struct aw22xxx, zlog_client) == 0x350);
static_assert(sizeof(struct aw22xxx) == 0x358);

struct zlog_module_info {
	u32 module_id;
	u32 reserved_04;
	const char *name;
	const char *device;
	const char *ic;
	const char *module;
	void *reserved_28;
};

static_assert(sizeof(struct zlog_module_info) == 48);

extern void *zlog_register_client(struct zlog_module_info *module_info);
extern void zlog_client_record(void *client, const char *format, ...);
extern void zlog_client_notify(void *client, u32 event);

static struct zlog_module_info zlog_aw22xxx_dev = {
	.module_id = 25,
	.name = "aw22xxx_led",
	.device = "Unknown",
	.ic = "Unknown",
	.module = "LED",
};

/* Globals matching ROM binary */
static char aw22xxx_fw_name[64] = "aw22xxx_fw.bin";
static char aw22xxx_dyn_name[64];
u32 multicolor_led;
static u32 g_ver_var = 11;
static u32 g_custom_en = 0;
static u32 g_cfgarray_count = 4500;
static u8 init_flag = 0;
static u8 g_init_flg = 0;
static u8 g_cfg_cur_state = 0;
static union {
	u64 id;
	char text[32];
} g_chip_id;
static u32 lamp_effect;
static u32 fan_effect;

static int write_idx = 0;
static int read_idx = 0;
static int user_para_data[25000];
static u8 duration = 0;
static struct task_struct *cfg_update_kthread = NULL;
static int kthread_status = 0;
static char **aw22xxx_cfg_name = NULL;

static const u8 aw22xxx_imax_code[13] = {
	0x08, 0x00, 0x09, 0x01, 0x02, 0x0b, 0x03, 0x0c, 0x04, 0x0e, 0x05, 0x06, 0x07
};

static const char * const aw22xxx_imax_name[] = {
	"AW22XXX_IMAX_2mA", "AW22XXX_IMAX_3mA", "AW22XXX_IMAX_4mA",
	"AW22XXX_IMAX_6mA", "AW22XXX_IMAX_9mA", "AW22XXX_IMAX_10mA",
	"AW22XXX_IMAX_15mA", "AW22XXX_IMAX_20mA", "AW22XXX_IMAX_30mA",
	"AW22XXX_IMAX_40mA", "AW22XXX_IMAX_45mA", "AW22XXX_IMAX_60mA",
	"AW22XXX_IMAX_75mA"
};

static const u8 aw22xxx_reg_access[256] = {
	[0x00] = 0x01, [0x01] = 0x03, [0x02] = 0x03, [0x03] = 0x03, [0x04] = 0x03, [0x05] = 0x03, [0x06] = 0x03, [0x07] = 0x01,
	[0x08] = 0x03, [0x09] = 0x03, [0x0A] = 0x03, [0x0B] = 0x03, [0x0C] = 0x03, [0x0D] = 0x03, [0x0E] = 0x01, [0x0F] = 0x03,
	[0x10] = 0x03,
	[0x20] = 0x03, [0x21] = 0x03, [0x22] = 0x03, [0x23] = 0x03, [0x24] = 0x03, [0x25] = 0x01, [0x26] = 0x01,
	[0x30] = 0x03, [0x31] = 0x03, [0x32] = 0x03, [0x33] = 0x03, [0x34] = 0x03, [0x35] = 0x03, [0x36] = 0x03, [0x37] = 0x03,
	[0x38] = 0x03, [0x39] = 0x03,
	[0xFF] = 0x03
};

static u8 aw22xxx_blink_cfg[] = {
	0xFF, 0x00, 0x0C, 0x00, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0x00, 0x04, 0x07, 0x05, 0x00, 0x06, 0x00, 0x04, 0x07, 0x05, 0x00,
	0x06, 0x00, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0x00, 0x04, 0x07, 0x05, 0x00, 0x06, 0x00, 0x04, 0x07, 0x05, 0x00,
	0x06, 0x00, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07, 0x05, 0x00,
	0x06, 0xFF, 0x04, 0x07, 0x05, 0x00, 0x06, 0xFF, 0x04, 0x07
};

/* Prototypes */
static int aw22xxx_i2c_write(struct aw22xxx *aw22xxx, u8 reg, u8 val);
static int aw22xxx_i2c_read(struct aw22xxx *aw22xxx, u8 reg, u8 *val);
static int aw22xxx_hw_reset(struct aw22xxx *aw22xxx);
static int aw22xxx_led_init(struct aw22xxx *aw22xxx);
static int aw22xxx_init_cfg_update_array(struct aw22xxx *aw22xxx);
static void aw22xxx_cfg_loaded(const struct firmware *fw, void *context);
static void aw22xxx_fw_loaded(const struct firmware *fw, void *context);
static int aw22xxx_cfg_update_wait_from_dyn_name(struct aw22xxx *aw22xxx);
static int aw22xxx_set_cfg_run_state(u32 effect);
static void aw22xxx_cfg_recover_update_wait(struct aw22xxx *aw22xxx);

/* ======================================================================
 * I2C and Hardware Operations
 * ====================================================================== */

static noinline int aw22xxx_i2c_write(struct aw22xxx *aw22xxx, u8 reg, u8 val)
{
	struct i2c_client *client = aw22xxx->i2c;
	u8 buf[2] = { reg, val };
	int ret;

	ret = i2c_master_send(client, buf, 2);
	if (ret < 0) {
		gpiod_get_raw_value(gpio_to_desc(aw22xxx->reset_gpio));
		pr_err("aw22xxx: %s: i2c master send error retry 1\n", __func__);
		msleep(1);
		ret = i2c_master_send(client, buf, 2);
		if (ret < 0) {
			gpiod_get_raw_value(gpio_to_desc(aw22xxx->reset_gpio));
			pr_err("aw22xxx: %s: i2c master send error retry 2, hw reset\n", __func__);
			gpiod_direction_output_raw(gpio_to_desc(aw22xxx->reset_gpio), 1);
			pr_err("aw22xxx: %s: hardware reset after retries\n", __func__);
			msleep(1);
		}
	}
	return ret;
}

static noinline int aw22xxx_i2c_read(struct aw22xxx *aw22xxx, u8 reg, u8 *val)
{
	struct i2c_client *client = aw22xxx->i2c;
	int ret;

	ret = i2c_master_send(client, &reg, 1);
	if (ret < 0) {
		pr_err("aw22xxx: %s: i2c read reg send failed\n", __func__);
		msleep(1);
		ret = i2c_master_send(client, &reg, 1);
		if (ret < 0)
			return ret;
	}

	ret = i2c_master_recv(client, val, 1);
	if (ret < 0) {
		*val = ret;
		pr_err("aw22xxx: %s: i2c read recv failed\n", __func__);
		msleep(1);
		ret = i2c_master_recv(client, val, 1);
	}
	return ret;
}

static int aw22xxx_hw_reset(struct aw22xxx *aw22xxx)
{
	struct gpio_desc *desc;
	pr_info("aw22xxx: %s\n", __func__);
	if (!aw22xxx || (aw22xxx->reset_gpio & 0x80000000)) {
		dev_err(aw22xxx->dev, "%s: reset_gpio invalid\n", __func__);
		return -EINVAL;
	}

	desc = gpio_to_desc(aw22xxx->reset_gpio);
	gpiod_set_raw_value_cansleep(desc, 0);
	usleep_range(1000, 1500);
	desc = gpio_to_desc(aw22xxx->reset_gpio);
	gpiod_set_raw_value_cansleep(desc, 1);
	usleep_range(1000, 1500);
	return 0;
}

static noinline int aw22xxx_read_chipid(struct aw22xxx *aw22xxx)
{
	u8 val = 0;
	int ret;

	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 1, 85);
	usleep_range(2000, 3000);

	ret = aw22xxx_i2c_read(aw22xxx, 1, &val);
	if (ret < 0)
		goto err;

	if (val != 118) {
		pr_info("aw22xxx: chip_id != 118, retrying\n");
		msleep(1);
		ret = aw22xxx_i2c_read(aw22xxx, 1, &val);
		if (ret < 0)
			goto err;
		if (val != 118) {
			pr_info("aw22xxx: chip_id != 118 after retry\n");
			msleep(1);
			return -EINVAL;
		}
	}

	aw22xxx_i2c_read(aw22xxx, 0, &val);
	if (val == 24) {
		aw22xxx->chip_type = 1;
		g_chip_id.id = 0x38313132327761ULL;
		pr_info("aw22xxx: detected aw22118 chip\n");
		return 0;
	} else if (val == 39) {
		aw22xxx->chip_type = 2;
		g_chip_id.id = 0x37323132327761ULL;
		pr_info("aw22xxx: detected aw22127 chip\n");
		return 0;
	}

	pr_err("aw22xxx: unknown chip id register value: %d\n", val);
	pr_info("aw22xxx: %s unsupported revision\n", __func__);
	return -EINVAL;

err:
	dev_err(aw22xxx->dev, "aw22xxx: failed to read AW22XXX_REG_ID: %d\n", ret);
	return -EIO;
}

static noinline __used int aw22xxx_led_imax_cfg(struct aw22xxx *aw22xxx)
{
	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 11, 7);
	aw22xxx->imax = 7;
	pr_info("aw22xxx: %s imax=7\n", __func__);
	return 0;
}

static noinline int aw22xxx_interrupt_setup(struct aw22xxx *aw22xxx)
{
	u8 val = 0;

	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: interrupt clear\n");
	aw22xxx_i2c_read(aw22xxx, 10, &val);
	pr_info("aw22xxx: interrupt status=0x%02x\n", val);
	aw22xxx_i2c_read(aw22xxx, 9, &val);
	aw22xxx_i2c_write(aw22xxx, 9, val | 1);
	aw22xxx_i2c_read(aw22xxx, 9, &val);
	return aw22xxx_i2c_write(aw22xxx, 9, val | 0x10);
}

static noinline irqreturn_t aw22xxx_irq(int irq, void *data)
{
	struct aw22xxx *aw22xxx = data;
	u8 status = 0;

	pr_info("aw22xxx: %s enter\n", __func__);
	aw22xxx_i2c_read(aw22xxx, 10, &status);
	pr_info("aw22xxx: %s status=0x%02x\n", __func__, status);
	if (status & 0x10) {
		schedule_work(&aw22xxx->recover_work);
		pr_warn("aw22xxx: watchdog recovery count=%u\n", aw22xxx->task_irq);
		zlog_client_record(aw22xxx->zlog_client,
				   "LED WATCHDOG recover cfg warnning,count:%d\n",
				   aw22xxx->task_irq);
		zlog_client_notify(aw22xxx->zlog_client, 0x400259);
	}
	pr_info("aw22xxx: %s exit\n", __func__);
	return IRQ_HANDLED;
}

static noinline irqreturn_t aw22xxx_irq_v15(int irq, void *data)
{
	struct aw22xxx *aw22xxx = data;
	u8 status = 0;
	u8 val = 0;

	aw22xxx_i2c_read(aw22xxx, 10, &status);
	pr_info("aw22xxx: %s status=0x%02x\n", __func__, status);
	if (status & 1) {
		pr_info("aw22xxx: %s MCU reset\n", __func__);
		aw22xxx_i2c_write(aw22xxx, 255, 0);
		aw22xxx_i2c_read(aw22xxx, 4, &val);
		aw22xxx_i2c_write(aw22xxx, 4, val & ~2);
		aw22xxx_i2c_read(aw22xxx, 4, &val);
		aw22xxx_i2c_write(aw22xxx, 4, val & ~1);
		pr_info("aw22xxx: chip disable\n");
		aw22xxx_i2c_read(aw22xxx, 2, &val);
		aw22xxx_i2c_write(aw22xxx, 2, val & ~1);
		usleep_range(2000, 3000);
		pr_info("aw22xxx: %s standby\n", __func__);
	}
	if (status & 0x10) {
		pr_info("aw22xxx: %s function complete\n", __func__);
		aw22xxx_i2c_write(aw22xxx, 255, 0);
		aw22xxx_i2c_read(aw22xxx, 4, &val);
		aw22xxx_i2c_write(aw22xxx, 4, val & ~2);
		aw22xxx_i2c_read(aw22xxx, 4, &val);
		aw22xxx_i2c_write(aw22xxx, 4, val | 2);
		aw22xxx_i2c_read(aw22xxx, 4, &val);
		aw22xxx_i2c_write(aw22xxx, 4, val | 1);
		if (aw22xxx->effect)
			schedule_work(&aw22xxx->cfg_work);
	}
	return IRQ_HANDLED;
}

static int aw22xxx_led_init(struct aw22xxx *aw22xxx)
{
	u8 val = 0;
	u8 imax_val;
	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: %s enable chip\n", __func__);

	aw22xxx_i2c_write(aw22xxx, 1, 85);
	usleep_range(2000, 3000);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);

	if (aw22xxx->imax >= 13)
		return -EINVAL;

	imax_val = aw22xxx_imax_code[aw22xxx->imax];
	if (imax_val >= 15)
		imax_val = 15;

	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 11, imax_val);
	pr_info("aw22xxx: %s disable chip\n", __func__);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val &= ~1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);
	pr_info("aw22xxx: %s complete\n", __func__);

	return 0;
}

static int aw22xxx_init_cfg_update_array(struct aw22xxx *aw22xxx)
{
	u8 val = 0;
	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: %s enable chip\n", __func__);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);

	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 2, 1);
	aw22xxx_i2c_write(aw22xxx, 12, 0);
	aw22xxx_i2c_write(aw22xxx, 11, 5);
	aw22xxx_i2c_write(aw22xxx, 5, 1);
	aw22xxx_i2c_write(aw22xxx, 4, 1);
	aw22xxx_i2c_write(aw22xxx, 9, 1);
	aw22xxx_i2c_write(aw22xxx, 4, 3);
	aw22xxx_i2c_write(aw22xxx, 5, 65);

	return 0;
}

/* ======================================================================
 * Firmware Loading & Configuration
 * ====================================================================== */

static noinline int aw22xxx_get_fwname(u32 index)
{
	u8 mode = (index >> 24) & 0xFF;
	u32 v3 = (index >> 12) & 0xFFF;
	u32 v4 = index & 0xFFF;
	const char *name;
	size_t len;

	pr_info("aw22xxx: %s mode=%d\n", __func__, mode);
	pr_info("aw22xxx: %s group=%x\n", __func__, v3);
	pr_info("aw22xxx: %s index=%x\n", __func__, v4);

	if (mode == 1) {
		sprintf(aw22xxx_dyn_name, "aw_cfg%x_%x.bin", v3, v4);
		barrier();
	} else if (mode == 2) {
		sprintf(aw22xxx_dyn_name, "aw_touch%x_%x.bin", v3, v4);
		barrier();
	} else if (mode == 3) {
		sprintf(aw22xxx_dyn_name, "aw_fan%x_%x.bin", v3, v4);
		barrier();
	} else if (mode == 0 && v4 < 11 && aw22xxx_cfg_name) {
		name = aw22xxx_cfg_name[index];
		len = strlen(name) + 1;
		memcpy(aw22xxx_dyn_name, name, len);
	} else {
		goto invalid;
	}

	pr_info("aw22xxx: %s selected %s\n", __func__, aw22xxx_dyn_name);
	return 0;

invalid:
	pr_err("aw22xxx: %s invalid firmware selector\n", __func__);
	return -EINVAL;
}

static void aw22xxx_cfg_loaded(const struct firmware *fw, void *context)
{
	struct aw22xxx *aw22xxx = context;
	size_t offset = 0;
	u8 page = 0;
	u8 imax_code;
	pr_info("aw22xxx: %s\n", __func__);

	if (!fw) {
		pr_err("aw22xxx: cfg firmware NULL\n");
		release_firmware(fw);
		return;
	}

	pr_info("aw22xxx: %s effect=%u size=%zu\n", __func__, aw22xxx->effect,
		 fw->size);

	while (offset + 1 < fw->size) {
		const u8 *ptr = fw->data + offset;
		u8 reg = ptr[0];
		u8 val = ptr[1];

		if (reg == 255)
			page = val;

		if (aw22xxx->cfg_custom_en == 1 || page != 1) {
			aw22xxx_i2c_write(aw22xxx, reg, val);
		} else {
			int reg_offset = reg - 16;

			if (reg_offset >= 0 && reg_offset < 27) {
				int led_index = reg_offset / 3;
				int color_channel = reg_offset % 3;
				int shift = 16 - color_channel * 8;

				val = (aw22xxx->rgb_val[led_index] >> shift) & 0xff;
			}
			aw22xxx_i2c_write(aw22xxx, reg, val);
		}

		if (page == 0 && reg == 2 && (val & 1))
			usleep_range(2000, 2500);
		offset += 2;
	}

	release_firmware(fw);
	if (aw22xxx->imax >= ARRAY_SIZE(aw22xxx_imax_code))
		return;
	imax_code = min_t(u8, aw22xxx_imax_code[aw22xxx->imax], 15);
	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 11, imax_code);
	pr_info("aw22xxx: %s complete\n", __func__);
}

static void aw22xxx_fw_loaded(const struct firmware *fw, void *context)
{
	struct aw22xxx *aw22xxx = context;
	size_t size;
	const u16 *fw_words;
	u16 checksum = 0;
	size_t i;
	u32 *fw_buf;
	size_t fw_buf_size;
	u8 val = 0;

	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: firmware callback entered\n");
	if (!fw) {
		pr_err("aw22xxx: fw firmware NULL\n");
		release_firmware(fw);
		return;
	}

	size = fw->size;
	pr_info("aw22xxx: firmware size=%zu\n", size); /* +1 */
	fw_words = (const u16 *)fw->data;

	if (size < 3) {
		checksum = 0;
	} else {
		for (i = 1; i < size / 2; i++) {
			checksum += be16_to_cpu(fw_words[i]);
		}
	}
	pr_info("aw22xxx: firmware checksum calculated\n"); /* +2 */

	if (checksum != be16_to_cpu(fw_words[0])) {
		pr_err("aw22xxx: fw checksum mismatch\n");
		release_firmware(fw);
		pr_info("aw22xxx: firmware rejected\n"); /* +3 */
		return;
	}

	pr_info("aw22xxx: fw checksum valid\n");
	fw_buf_size = size + 16;
	pr_info("aw22xxx: allocating firmware container\n"); /* +4 */
	fw_buf = kzalloc(fw_buf_size, GFP_KERNEL);
	if (!fw_buf) {
		release_firmware(fw);
		pr_err("aw22xxx: firmware allocation cleanup\n"); /* +5 */
		return;
	}

	fw_buf[1] = be32_to_cpup((const __be32 *)(fw->data + 27));
	fw_buf[2] = swab16(*(u16 *)(fw->data + 34));
	fw_buf[3] = *(u8 *)(fw->data + 36);
	fw_buf[0] = swab16(*(u16 *)(fw->data + 38));
	pr_info("aw22xxx: firmware metadata parsed\n"); /* +6 */

	memcpy(fw_buf + 4, fw->data + 40, fw_buf[0]);
	pr_info("aw22xxx: firmware payload copied\n"); /* +7 */
	release_firmware(fw);

	pr_info("aw22xxx: starting bootloader precheck\n"); /* +8 */
	aw22xxx_i2c_write(aw22xxx, 1, 85);
	usleep_range(2000, 3000);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);

	aw22xxx_i2c_read(aw22xxx, 4, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 4, val);

	aw22xxx_i2c_write(aw22xxx, 34, ((fw_buf[0] - 1) >> 8) & 0xFF);
	aw22xxx_i2c_write(aw22xxx, 33, (fw_buf[0] - 1) & 0xFF);
	aw22xxx_i2c_write(aw22xxx, 36, 7);
	usleep_range(5000, 6500);

	aw22xxx_i2c_read(aw22xxx, 36, &val);
	if (val == 5) {
		pr_info("aw22xxx: bootloader status ready\n"); /* +9 */
		u8 check_val1 = 0, check_val2 = 0;
		aw22xxx_i2c_read(aw22xxx, 37, &check_val1);
		aw22xxx_i2c_read(aw22xxx, 38, &check_val2);
		if ((check_val1 | (check_val2 << 8)) == fw_buf[2]) {
			pr_info("aw22xxx: fw boot loaded ok\n");
			if (!aw22xxx->init_flag) {
				pr_info("aw22xxx: existing firmware accepted\n"); /* +10 */
				kfree(fw_buf);
				aw22xxx_i2c_write(aw22xxx, 36, 0);
				aw22xxx_led_init(aw22xxx);
				aw22xxx->container_update_state = 2;
				return;
			}
		} else {
			pr_err("aw22xxx: boot loading check error\n");
		}
	} else {
		pr_err("aw22xxx: boot loader status error: %d\n", val);
	}

	aw22xxx_i2c_write(aw22xxx, 36, 0);
	pr_info("aw22xxx: entering full firmware update\n"); /* +11 */
	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 1, 85);
	usleep_range(2000, 3000);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);

	aw22xxx_i2c_read(aw22xxx, 4, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 4, val);

	aw22xxx_i2c_write(aw22xxx, 128, 236);
	aw22xxx_i2c_write(aw22xxx, 53, 41);
	aw22xxx_i2c_write(aw22xxx, 56, fw_buf[3]);
	aw22xxx_i2c_write(aw22xxx, 34, 0);
	aw22xxx_i2c_write(aw22xxx, 33, 0);
	aw22xxx_i2c_write(aw22xxx, 32, 3);
	aw22xxx_i2c_write(aw22xxx, 48, 3);
	aw22xxx_i2c_write(aw22xxx, 35, 0);
	pr_info("aw22xxx: flash erase sequence started\n"); /* +12 */

	if (g_ver_var < 12)
		msleep(40);
	else
		usleep_range(4000, 4500);

	aw22xxx_i2c_write(aw22xxx, 48, 0);
	aw22xxx_i2c_write(aw22xxx, 34, 64);
	aw22xxx_i2c_write(aw22xxx, 33, 0);
	aw22xxx_i2c_write(aw22xxx, 48, 2);
	aw22xxx_i2c_write(aw22xxx, 35, 0);
	usleep_range(6000, 6500);

	aw22xxx_i2c_write(aw22xxx, 48, 0);
	aw22xxx_i2c_write(aw22xxx, 34, 66);
	aw22xxx_i2c_write(aw22xxx, 33, 0);
	aw22xxx_i2c_write(aw22xxx, 48, 2);
	aw22xxx_i2c_write(aw22xxx, 35, 0);
	usleep_range(6000, 6500);

	aw22xxx_i2c_write(aw22xxx, 48, 0);
	aw22xxx_i2c_write(aw22xxx, 34, 68);
	aw22xxx_i2c_write(aw22xxx, 33, 0);
	aw22xxx_i2c_write(aw22xxx, 48, 2);
	aw22xxx_i2c_write(aw22xxx, 35, 0);
	usleep_range(6000, 6500);

	aw22xxx_i2c_write(aw22xxx, 48, 0);
	aw22xxx_i2c_write(aw22xxx, 32, 0);
	aw22xxx_i2c_write(aw22xxx, 32, 3);

	if (fw_buf[0]) {
		u32 written = 0;
		pr_info("aw22xxx: programming firmware payload\n"); /* +13 */
		#pragma clang loop unroll(disable)
		do {
			u32 chunk;
			u8 *send_buf;
			aw22xxx_i2c_write(aw22xxx, 34, (written >> 8) & 0xFF);
			aw22xxx_i2c_write(aw22xxx, 33, written & 0xFF);
			aw22xxx_i2c_write(aw22xxx, 17, 1);
			aw22xxx_i2c_write(aw22xxx, 48, 4);

			chunk = fw_buf[0] - written;
			if (chunk >= 128)
				chunk = 128;

			send_buf = kmalloc(chunk + 1, GFP_KERNEL);
			if (send_buf) {
				pr_info("aw22xxx: sending firmware chunk\n"); /* +14 */
				send_buf[0] = 35; // register 35
				memcpy(send_buf + 1, (u8 *)(fw_buf + 4) + written, chunk);
				if (i2c_master_send(aw22xxx->i2c, send_buf, chunk + 1) < 0) {
					pr_err("aw22xxx: firmware writes block send error\n");
				}
				kfree(send_buf);
			}
			aw22xxx_i2c_write(aw22xxx, 17, 0);
			aw22xxx_i2c_write(aw22xxx, 48, 0);
			written += chunk;
		} while (written < fw_buf[0]);
	}

	aw22xxx_i2c_write(aw22xxx, 32, 0);
	aw22xxx_i2c_write(aw22xxx, 1, 85);
	usleep_range(2000, 3000);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);

	aw22xxx_i2c_read(aw22xxx, 4, &val);
	val |= 1;
	aw22xxx_i2c_write(aw22xxx, 4, val);

	aw22xxx_i2c_write(aw22xxx, 34, ((fw_buf[0] - 1) >> 8) & 0xFF);
	aw22xxx_i2c_write(aw22xxx, 33, (fw_buf[0] - 1) & 0xFF);
	aw22xxx_i2c_write(aw22xxx, 36, 7);
	usleep_range(5000, 6500);
	pr_info("aw22xxx: verifying programmed firmware\n"); /* +15 */

	aw22xxx_i2c_read(aw22xxx, 36, &val);
	if (val == 5) {
		u8 check_val1 = 0, check_val2 = 0;
		aw22xxx_i2c_read(aw22xxx, 37, &check_val1);
		aw22xxx_i2c_read(aw22xxx, 38, &check_val2);
		if ((check_val1 | (check_val2 << 8)) != fw_buf[2]) {
			pr_err("aw22xxx: container boot verify error\n");
			aw22xxx->container_update_state = 3;
		} else {
			pr_info("aw22xxx: container boot verify success\n");
			aw22xxx->container_update_state = 2;
		}
	} else {
		pr_err("aw22xxx: container boot verify failed state: %d\n", val);
		aw22xxx->container_update_state = 3;
	}

	aw22xxx_i2c_write(aw22xxx, 36, 0);
	kfree(fw_buf);
	aw22xxx->init_flag = 0;
	aw22xxx_led_init(aw22xxx);
	pr_info("aw22xxx: firmware update complete\n"); /* +16 */
	pr_info("aw22xxx: firmware callback leaving\n");
}

static noinline int aw22xxx_cfg_update_wait_from_dyn_name(struct aw22xxx *aw22xxx)
{
	const struct firmware *fw = NULL;
	int ret;

	pr_info("aw22xxx: %s\n", __func__);
	if (aw22xxx->container_update_state != 2) {
		ret = -EINVAL;
		goto error;
	}

	if (aw22xxx->effect != 2) {
		aw22xxx->need_update = 1;
		if (!g_init_flg) {
			g_init_flg = 1;
			aw22xxx_init_cfg_update_array(aw22xxx);
		}
	} else {
		aw22xxx->need_update = 0;
		if (!g_init_flg) {
			g_init_flg = 1;
			aw22xxx_init_cfg_update_array(aw22xxx);
		}
	}

	ret = request_firmware(&fw, aw22xxx_dyn_name, aw22xxx->dev);
	if (ret)
		goto error;

	aw22xxx_cfg_loaded(fw, aw22xxx);
	msleep(20);
	return 0;

error:
	pr_err("aw22xxx: %s failed: %d\n", __func__, ret);
	return ret;
}

static noinline int aw22xxx_set_cfg_run_state(u32 effect)
{
	u8 mode = (effect >> 24) & 0xFF;
	u32 sub_mode = (effect >> 12) & 0xFFF;
	int next_state;

	pr_info("aw22xxx: %s mode=%u\n", __func__, mode);
	pr_info("aw22xxx: %s sub_mode=%u\n", __func__, sub_mode);
	pr_info("aw22xxx: %s effect=0x%x\n", __func__, effect);

	if (mode == 1 && sub_mode == 0) {
		next_state = g_cfg_cur_state & ~2;
	} else if (mode == 3 && sub_mode == 0) {
		next_state = g_cfg_cur_state & ~1;
	} else if (mode == 3 && sub_mode == 2) {
		next_state = g_cfg_cur_state | 1;
	} else if (mode == 2 && sub_mode == 0) {
		next_state = g_cfg_cur_state & ~4;
	} else if (mode == 2 && sub_mode >= 257 && sub_mode <= 260) {
		next_state = g_cfg_cur_state | 4;
	} else {
		next_state = g_cfg_cur_state | (mode == 3 ? 1 : 2);
	}

	g_cfg_cur_state = next_state;
	return 0;
}

static noinline void aw22xxx_cfg_recover_update_wait(struct aw22xxx *aw22xxx)
{
	const struct firmware *fw = NULL;
	const char *name;
	size_t offset;
	u8 page = 0;
	u8 imax_code;
	int ret;

	pr_info("aw22xxx: %s\n", __func__); /* 1 */
	pr_info("aw22xxx: recovery state=%u\n", aw22xxx->container_update_state);
	if ((aw22xxx->effect & ~1U) == 4)
		lamp_effect = aw22xxx->effect;
	pr_info("aw22xxx: %s lamp=%u\n", __func__, lamp_effect); /* 2 */
	if ((aw22xxx->effect & ~1U) == 2)
		fan_effect = aw22xxx->effect;
	pr_info("aw22xxx: %s fan=%u\n", __func__, fan_effect); /* 3 */
	if (aw22xxx->effect >= g_cfgarray_count || !aw22xxx_cfg_name) {
		pr_err("aw22xxx: %s effect outside cfg array\n", __func__); /* 4 */
		return;
	}

	name = aw22xxx_cfg_name[aw22xxx->effect];
	pr_info("aw22xxx: %s name=%s\n", __func__, name); /* 5 */
	if (strlen(name) < 5) {
		pr_err("aw22xxx: %s short firmware name\n", __func__); /* 6 */
		return;
	}
	if (aw22xxx->container_update_state != 2) {
		pr_err("aw22xxx: %s container not ready\n", __func__); /* 7 */
		return;
	}

	aw22xxx->need_update = aw22xxx->effect != 2;
	if (!g_init_flg) {
		g_init_flg = 1;
		aw22xxx_init_cfg_update_array(aw22xxx);
	}

	ret = request_firmware(&fw, name, aw22xxx->dev);
	if (ret) {
		pr_err("aw22xxx: %s request failed: %d\n", __func__, ret); /* 8 */
		return;
	}

	pr_info("aw22xxx: recover firmware callback\n"); /* 9 */
	if (!fw) {
		pr_err("aw22xxx: recover firmware is NULL\n"); /* 10 */
		release_firmware(fw);
		return;
	}
	pr_info("aw22xxx: recover firmware size=%zu\n", fw->size); /* 11 */
	for (offset = 0; offset + 1 < fw->size; offset += 2) {
		u8 reg = fw->data[offset];
		u8 val = fw->data[offset + 1];

		if (reg == 255)
			page = val;
		if (aw22xxx->cfg_custom_en == 1 || page != 1) {
			aw22xxx_i2c_write(aw22xxx, reg, val);
		} else {
			int reg_offset = reg - 16;

			if (reg_offset >= 0 && reg_offset < 27) {
				int led = reg_offset / 3;
				int channel = reg_offset % 3;

				val = (aw22xxx->rgb_val[led] >> (16 - channel * 8)) & 0xff;
			}
			aw22xxx_i2c_write(aw22xxx, reg, val);
		}
		if (page == 0 && reg == 2 && (val & 1))
			usleep_range(2000, 2500);
	}
	release_firmware(fw);
	if (aw22xxx->imax < ARRAY_SIZE(aw22xxx_imax_code)) {
		imax_code = min_t(u8, aw22xxx_imax_code[aw22xxx->imax], 15);
		aw22xxx_i2c_write(aw22xxx, 255, 0);
		aw22xxx_i2c_write(aw22xxx, 11, imax_code);
	}
	aw22xxx->task_irq++;
	pr_info("aw22xxx: %s complete\n", __func__); /* 12 */
	pr_info("aw22xxx: recovery count=%u\n", aw22xxx->task_irq);
	msleep(20);
}

/* ======================================================================
 * Workqueues & Timers & Kthreads
 * ====================================================================== */

static void aw22xxx_brightness_work(struct work_struct *work)
{
	struct aw22xxx *aw22xxx = container_of(work, struct aw22xxx, brightness_work);
	u8 val = 0;
	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: %s stop previous task\n", __func__);

	aw22xxx_i2c_write(aw22xxx, 5, 255);
	aw22xxx_i2c_read(aw22xxx, 4, &val);
	val &= ~2;
	aw22xxx_i2c_write(aw22xxx, 4, val);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val &= ~1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);

	if (aw22xxx->cdev.brightness) {
		pr_info("aw22xxx: %s start brightness task\n", __func__);
		u8 imax_val;
		aw22xxx_i2c_read(aw22xxx, 2, &val);
		val |= 1;
		aw22xxx_i2c_write(aw22xxx, 2, val);
		usleep_range(2000, 3000);

		aw22xxx_i2c_read(aw22xxx, 4, &val);
		val |= 1;
		aw22xxx_i2c_write(aw22xxx, 4, val);

		imax_val = aw22xxx->imax >= 15 ? 15 : aw22xxx->imax;
		aw22xxx_i2c_write(aw22xxx, 255, 0);
		aw22xxx_i2c_write(aw22xxx, 11, imax_val);
		aw22xxx_i2c_write(aw22xxx, 33, 225);
		aw22xxx_i2c_write(aw22xxx, 34, 0);
		aw22xxx_i2c_write(aw22xxx, 32, 2);
		aw22xxx_i2c_write(aw22xxx, 35, 61);
		aw22xxx_i2c_write(aw22xxx, 32, 0);
		aw22xxx_i2c_write(aw22xxx, 5, 130);

		aw22xxx_i2c_read(aw22xxx, 4, &val);
		val |= 2;
		aw22xxx_i2c_write(aw22xxx, 4, val);
	}
}

static void aw22xxx_task_work(struct work_struct *work)
{
	struct aw22xxx *aw22xxx = container_of(work, struct aw22xxx, task_work);
	u8 val = 0;
	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: %s stop previous task\n", __func__);

	aw22xxx_i2c_write(aw22xxx, 5, 255);
	aw22xxx_i2c_read(aw22xxx, 4, &val);
	val &= ~2;
	aw22xxx_i2c_write(aw22xxx, 4, val);

	aw22xxx_i2c_read(aw22xxx, 2, &val);
	val &= ~1;
	aw22xxx_i2c_write(aw22xxx, 2, val);
	usleep_range(2000, 3000);

	if (aw22xxx->task0) {
		pr_info("aw22xxx: %s start task\n", __func__);
		u8 imax_val;
		aw22xxx_i2c_read(aw22xxx, 2, &val);
		val |= 1;
		aw22xxx_i2c_write(aw22xxx, 2, val);
		usleep_range(2000, 3000);

		aw22xxx_i2c_read(aw22xxx, 4, &val);
		val |= 1;
		aw22xxx_i2c_write(aw22xxx, 4, val);

		imax_val = aw22xxx->imax >= 15 ? 15 : aw22xxx->imax;
		aw22xxx_i2c_write(aw22xxx, 255, 0);
		aw22xxx_i2c_write(aw22xxx, 11, imax_val);
		aw22xxx_i2c_write(aw22xxx, 33, 225);
		aw22xxx_i2c_write(aw22xxx, 34, 0);
		aw22xxx_i2c_write(aw22xxx, 32, 2);
		aw22xxx_i2c_write(aw22xxx, 35, 61);
		aw22xxx_i2c_write(aw22xxx, 32, 0);
		aw22xxx_i2c_write(aw22xxx, 5, aw22xxx->task0);
		aw22xxx_i2c_write(aw22xxx, 6, aw22xxx->task1);

		aw22xxx_i2c_read(aw22xxx, 4, &val);
		val |= 2;
		aw22xxx_i2c_write(aw22xxx, 4, val);
	}
}

static void aw22xxx_fw_work_routine(struct work_struct *work)
{
	struct aw22xxx *aw22xxx = container_of(work, struct aw22xxx, fw_work);
	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: firmware update requested\n");
	aw22xxx->container_update_state = 1;
	request_firmware_nowait(THIS_MODULE, 1, aw22xxx_fw_name, aw22xxx->dev,
				GFP_KERNEL, aw22xxx, aw22xxx_fw_loaded);
}

static void aw22xxx_cfg_work_routine(struct work_struct *work)
{
	struct aw22xxx *aw22xxx = container_of(work, struct aw22xxx, cfg_work);
	pr_info("aw22xxx: %s\n", __func__);
	pr_info("aw22xxx: dynamic configuration update\n");

	if (aw22xxx->container_update_state != 2)
	{
		pr_err("aw22xxx: configuration container not ready\n");
		return;
	}

	if (aw22xxx->effect == 2) {
		aw22xxx->need_update = 0;
	} else {
		aw22xxx->need_update = 1;
	}

	if (!g_init_flg) {
		g_init_flg = 1;
		aw22xxx_init_cfg_update_array(aw22xxx);
	}

	request_firmware_nowait(THIS_MODULE, 1, aw22xxx_dyn_name, aw22xxx->dev,
				GFP_KERNEL, aw22xxx, aw22xxx_cfg_loaded);
}

static void aw22xxx_recover_work_routine(struct work_struct *work)
{
	struct aw22xxx *aw22xxx = container_of(work, struct aw22xxx, recover_work);
	u8 val = 0;

	pr_info("aw22xxx: %s\n", __func__);
	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_read(aw22xxx, 4, &val);
	aw22xxx_i2c_write(aw22xxx, 4, val & ~2);
	aw22xxx_i2c_read(aw22xxx, 4, &val);
	aw22xxx_i2c_write(aw22xxx, 4, val & ~1);
	pr_info("aw22xxx: chip disable\n");
	aw22xxx_i2c_read(aw22xxx, 2, &val);
	aw22xxx_i2c_write(aw22xxx, 2, val & ~1);
	usleep_range(2000, 3000);
	pr_info("aw22xxx: %s restore baseline\n", __func__);
	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 2, 1);
	aw22xxx_i2c_write(aw22xxx, 12, 0);
	aw22xxx_i2c_write(aw22xxx, 5, 1);
	aw22xxx_i2c_write(aw22xxx, 4, 1);
	aw22xxx_i2c_write(aw22xxx, 9, 17);
	aw22xxx_i2c_write(aw22xxx, 4, 3);
	aw22xxx_i2c_write(aw22xxx, 5, 65);
	msleep(200);
	pr_info("aw22xxx: %s restore effects\n", __func__);
	aw22xxx->effect = lamp_effect;
	aw22xxx_cfg_recover_update_wait(aw22xxx);
	msleep(200);
	aw22xxx->effect = fan_effect;
	aw22xxx_cfg_recover_update_wait(aw22xxx);
}

static enum hrtimer_restart aw22xxx_fw_timer_func(struct hrtimer *timer)
{
	struct aw22xxx *aw22xxx = container_of(timer, struct aw22xxx, timer);
	pr_info("aw22xxx: %s\n", __func__);
	schedule_work(&aw22xxx->fw_work);
	return HRTIMER_NORESTART;
}

static void aw22xxx_fw_init(struct aw22xxx *aw22xxx)
{
	hrtimer_init(&aw22xxx->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	aw22xxx->timer.function = aw22xxx_fw_timer_func;

	INIT_WORK(&aw22xxx->fw_work, aw22xxx_fw_work_routine);
	INIT_WORK(&aw22xxx->cfg_work, aw22xxx_cfg_work_routine);

	if (g_ver_var == 11) {
		INIT_WORK(&aw22xxx->recover_work, aw22xxx_recover_work_routine);
	}

	pr_info("aw22xxx: %s starting timer\n", __func__);
	hrtimer_start(&aw22xxx->timer, ktime_set(1, 0), HRTIMER_MODE_REL);
}

static int aw22xxx_alloc_name_array(void)
{
	int i;
	pr_info("aw22xxx: %s\n", __func__);
	aw22xxx_cfg_name = kmalloc_array(11, sizeof(char *), GFP_KERNEL);
	if (!aw22xxx_cfg_name)
		return -ENOMEM;

	for (i = 0; i < 11; i++) {
		aw22xxx_cfg_name[i] = kmalloc(64, GFP_KERNEL);
		if (!aw22xxx_cfg_name[i])
			goto err;
	}

	strcpy(aw22xxx_cfg_name[0], "m_led_off.bin");
	strcpy(aw22xxx_cfg_name[1], "fan_led_on.bin");
	strcpy(aw22xxx_cfg_name[2], "fan_led_off.bin");
	strcpy(aw22xxx_cfg_name[3], "touch_led_off.bin");
	strcpy(aw22xxx_cfg_name[4], "lamps_init.bin");
	strcpy(aw22xxx_cfg_name[5], "nubia_all_rgb_red.bin");
	strcpy(aw22xxx_cfg_name[6], "nubia_all_rgb_green.bin");
	strcpy(aw22xxx_cfg_name[7], "nubia_all_rgb_blue.bin");
	strcpy(aw22xxx_cfg_name[8], "nubia_all_rgb_red.bin");
	strcpy(aw22xxx_cfg_name[9], "nubia_all_rgb_green.bin");
	strcpy(aw22xxx_cfg_name[10], "nubia_all_rgb_blue.bin");
	pr_info("aw22xxx: %s complete\n", __func__);
	return 0;

err:
	while (--i >= 0)
		kfree(aw22xxx_cfg_name[i]);
	kfree(aw22xxx_cfg_name);
	aw22xxx_cfg_name = NULL;
	return -ENOMEM;
}

static ssize_t aw22xxx_set_breath_data(struct aw22xxx *aw22xxx, const u8 *a2)
{
	int i;

	aw22xxx_blink_cfg[5]   = a2[8];
	aw22xxx_blink_cfg[11]  = a2[9];
	aw22xxx_blink_cfg[17]  = a2[10];
	aw22xxx_blink_cfg[23]  = a2[11];
	aw22xxx_blink_cfg[29]  = a2[12];
	aw22xxx_blink_cfg[35]  = a2[13];
	aw22xxx_blink_cfg[41]  = a2[14];
	aw22xxx_blink_cfg[47]  = a2[15];
	aw22xxx_blink_cfg[53]  = a2[16];
	aw22xxx_blink_cfg[59]  = a2[17];
	aw22xxx_blink_cfg[65]  = a2[18];
	aw22xxx_blink_cfg[71]  = a2[19];

	aw22xxx_blink_cfg[77]  = a2[20];
	aw22xxx_blink_cfg[83]  = a2[20];
	aw22xxx_blink_cfg[89]  = a2[20];

	aw22xxx_blink_cfg[95]  = a2[21];
	aw22xxx_blink_cfg[101] = a2[21];
	aw22xxx_blink_cfg[107] = a2[21];

	aw22xxx_blink_cfg[113] = a2[22];
	aw22xxx_blink_cfg[119] = a2[22];
	aw22xxx_blink_cfg[125] = a2[22];

	aw22xxx_blink_cfg[131] = a2[23];
	aw22xxx_blink_cfg[137] = a2[23];
	aw22xxx_blink_cfg[143] = a2[23];

	duration = a2[24];

	for (i = 0; i < ARRAY_SIZE(aw22xxx_blink_cfg); i += 2) {
		aw22xxx_i2c_write(aw22xxx, aw22xxx_blink_cfg[i], aw22xxx_blink_cfg[i + 1]);
	}
	return 0;
}

static int aw22xxx_play(void *data)
{
	struct aw22xxx *aw22xxx = data;
	pr_info("aw22xxx: %s start\n", __func__);
	aw22xxx_init_cfg_update_array(aw22xxx);
	aw22xxx_set_breath_data(aw22xxx, (const u8 *)user_para_data);

	while (kthread_status) {
		msleep(duration / 30);
		if (read_idx == write_idx) {
			kthread_status = 0;
			read_idx = 0;
			write_idx = 0;
			schedule_work(&aw22xxx->cfg_work);
			pr_info("aw22xxx: %s finished playing patterns\n", __func__);
			break;
		}

		if (read_idx * 25 >= 25000)
			break;

		aw22xxx_set_breath_data(aw22xxx, (const u8 *)&user_para_data[25 * read_idx]);
		read_idx++;
	}

	if (!kthread_status) {
		aw22xxx_i2c_write(aw22xxx, 255, 0);
		aw22xxx_i2c_write(aw22xxx, 5, 0);
		aw22xxx_i2c_write(aw22xxx, 4, 1);
		aw22xxx_i2c_write(aw22xxx, 2, 0);
	}

	return 0;
}

/* ======================================================================
 * Sysfs Callbacks
 * ====================================================================== */

static ssize_t aw22xxx_cfg_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 effect = aw22xxx->effect;

	if (effect > 10) {
		pr_err("aw22xxx: invalid effect index in cfg_show: %d\n", effect);
		return strlen(buf);
	}
	if (snprintf(buf, PAGE_SIZE, "current cfg = %s\n", aw22xxx_cfg_name[effect]) >= PAGE_SIZE)
		return -EFAULT;
	return strlen(buf);
}

static ssize_t aw22xxx_cfg_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;

	if (sscanf(buf, "%u", &val) != 1) {
		pr_err("aw22xxx: %s parse failed\n", __func__);
		return -EINVAL;
	}
	aw22xxx->cfg_custom_en = val & 0xf;
	pr_info("aw22xxx: %s cfg=%u\n", __func__, aw22xxx->cfg_custom_en);
	return count;
}

static ssize_t aw22xxx_effect_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	return snprintf(buf, PAGE_SIZE, "effect = 0x%02x\n", aw22xxx->effect);
}

static ssize_t aw22xxx_effect_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;
	u8 reg_val = 0;

	if (sscanf(buf, "%x", &val) != 1) {
		pr_err("aw22xxx: %s parse failed\n", __func__); /* 1 */
		return -EINVAL;
	}

	pr_info("aw22xxx: %s value=0x%x\n", __func__, val); /* 2 */
	mutex_lock(&aw22xxx->cfg_lock);
	if ((val - 8) <= 2 && init_flag == 1) {
		pr_info("aw22xxx: %s restore initialization\n", __func__); /* 3 */
		aw22xxx->effect = 4;
		aw22xxx_get_fwname(4);
		aw22xxx_cfg_update_wait_from_dyn_name(aw22xxx);
		aw22xxx_set_cfg_run_state(aw22xxx->effect);
		if (!g_cfg_cur_state) {
			pr_info("aw22xxx: %s stop initialized effect\n", __func__); /* 4 */
			aw22xxx_i2c_read(aw22xxx, 2, &reg_val);
			reg_val &= ~1;
			aw22xxx_i2c_write(aw22xxx, 2, reg_val);
			usleep_range(2000, 3000);
			g_init_flg = 0;
		}
		init_flag = 0;
		pr_info("aw22xxx: %s initialization cleared\n", __func__); /* 5 */
	}

	aw22xxx->effect = val;
	pr_info("aw22xxx: %s effect stored\n", __func__); /* 6 */
	if (val <= 3 && val != 1 && !init_flag) {
		init_flag = 1;
		pr_info("aw22xxx: %s initialization armed\n", __func__); /* 7 */
	}

	aw22xxx_get_fwname(aw22xxx->effect);
	aw22xxx_cfg_update_wait_from_dyn_name(aw22xxx);

	if (aw22xxx->effect == 0)
		msleep(100);

	aw22xxx_set_cfg_run_state(aw22xxx->effect);

	if (!g_cfg_cur_state) {
		pr_info("aw22xxx: %s stop completed effect\n", __func__); /* 8 */
		aw22xxx_i2c_read(aw22xxx, 2, &reg_val);
		reg_val &= ~1;
		aw22xxx_i2c_write(aw22xxx, 2, reg_val);
		usleep_range(2000, 3000);
		g_init_flg = 0;
	}
	pr_info("aw22xxx: %s complete\n", __func__); /* 9 */
	mutex_unlock(&aw22xxx->cfg_lock);
	return count;
}

static ssize_t aw22xxx_fw_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	return snprintf(buf, PAGE_SIZE, "firmware name = %s\n", aw22xxx_fw_name);
}

static ssize_t aw22xxx_fw_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;

	if (sscanf(buf, "%x", &val) == 1) {
		aw22xxx->init_flag = val;
		if (val == 1)
			schedule_work(&aw22xxx->fw_work);
	}
	g_init_flg = 0;
	return count;
}

static ssize_t aw22xxx_hwen_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	int val = gpiod_get_raw_value(gpio_to_desc(aw22xxx->reset_gpio));
	return snprintf(buf, PAGE_SIZE, "hwen=%d\n", val);
}

static ssize_t aw22xxx_hwen_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;

	if (sscanf(buf, "%x", &val) != 1 || val >= 2)
	{
		pr_err("aw22xxx: %s invalid value\n", __func__);
		return -EINVAL;
	}

	if (val == 1) {
		aw22xxx_hw_reset(aw22xxx);
	} else {
		pr_info("aw22xxx: hw off\n");
		if (aw22xxx->reset_gpio & 0x80000000) {
			dev_err(aw22xxx->dev, "aw22xxx_hw_off failed\n");
		} else {
			gpiod_set_raw_value_cansleep(gpio_to_desc(aw22xxx->reset_gpio), 0);
			usleep_range(1000, 1500);
		}
	}
	return count;
}

static ssize_t aw22xxx_imax_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	size_t len = 0;
	int i;

	for (i = 0; i < 13; i++) {
		len += snprintf(buf + len, PAGE_SIZE - len, "imax[%x] = %s\n", i, aw22xxx_imax_name[i]);
	}

	if (aw22xxx->imax < 13) {
		len += snprintf(buf + len, PAGE_SIZE - len, "current id = 0x%02x, imax = %s\n",
				aw22xxx->imax, aw22xxx_imax_name[aw22xxx->imax]);
	}
	return len;
}

static ssize_t aw22xxx_imax_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;
	u8 code;

	if (sscanf(buf, "%x", &val) != 1 || val >= 13)
	{
		pr_err("aw22xxx: %s invalid imax\n", __func__);
		return -EINVAL;
	}

	aw22xxx->imax = val;
	code = aw22xxx_imax_code[val];
	if (code >= 15)
		code = 15;

	aw22xxx_i2c_write(aw22xxx, 255, 0);
	aw22xxx_i2c_write(aw22xxx, 11, code);
	return count;
}

static ssize_t aw22xxx_para_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	size_t len = 0;
	int i;

	if (!write_idx)
		return 0;

	#pragma clang loop unroll(disable)
	for (i = 0; i < 25 * write_idx; i++) {
		if (i > 0 && (i % 25) == 0) {
			len += snprintf(buf + len, PAGE_SIZE - len, "\r\n");
		}
		len += snprintf(buf + len, PAGE_SIZE - len, "%d  ", user_para_data[i]);
	}
	len += snprintf(buf + len, PAGE_SIZE - len, "\r\n");
	return len;
}

static ssize_t aw22xxx_para_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	int *vals;
	ssize_t ret = count;
	int i;

	pr_info("aw22xxx: %s\n", __func__); /* 1 */
	vals = kmalloc_array(25, sizeof(*vals), GFP_KERNEL);
	if (!vals) {
		pr_err("aw22xxx: %s allocation failed\n", __func__); /* 2 */
		return -EFAULT;
	}
	if (sscanf(buf, "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d",
		   &vals[0], &vals[1], &vals[2], &vals[3], &vals[4], &vals[5],
		   &vals[6], &vals[7], &vals[8], &vals[9], &vals[10], &vals[11],
		   &vals[12], &vals[13], &vals[14], &vals[15], &vals[16], &vals[17],
		   &vals[18], &vals[19], &vals[20], &vals[21], &vals[22], &vals[23],
		   &vals[24]) != 25) {
		pr_err("aw22xxx: %s invalid input format\n", __func__); /* 3 */
		ret = -EINVAL;
		goto out;
	}

	if (write_idx >= 1000) {
		pr_err("aw22xxx: %s parameter capacity exceeded\n", __func__); /* 4 */
		ret = -ENOSPC;
		goto out;
	}

	for (i = 0; i < 25; i++) {
		user_para_data[write_idx * 25 + i] = vals[i];
	}
	write_idx++;
	pr_info("aw22xxx: %s stored entry=%d\n", __func__, write_idx); /* 5 */
out:
	kfree(vals);
	return ret;
}

static ssize_t aw22xxx_reg_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u8 reg_255 = 0;
	u8 val = 0;
	int i;
	size_t len = 0;

	aw22xxx_i2c_read(aw22xxx, 255, &reg_255);

	for (i = 0; i < 256; i++) {
		if (!reg_255 && !(aw22xxx_reg_access[i] & 1))
			continue;

		aw22xxx_i2c_read(aw22xxx, i, &val);
		if (PAGE_SIZE - len <= 32)
			break;

		if (snprintf(buf + len, PAGE_SIZE - len,
			     "reg:0x%02x=0x%02x \n", i, val) >= PAGE_SIZE - len)
			return -EFAULT;
		len += strlen(buf + len);
	}
	return len;
}

static ssize_t aw22xxx_reg_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 reg = 0, val = 0;

	if (sscanf(buf, "%x %x", &reg, &val) != 2 || reg >= 256) {
		pr_err("aw22xxx: %s invalid register request\n", __func__);
		return -EINVAL;
	}

	aw22xxx_i2c_write(aw22xxx, reg, val);
	return count;
}

static ssize_t aw22xxx_rgb_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	size_t len = 0;
	int i;

	for (i = 0; i < 9; i++) {
		len += snprintf(buf + len, PAGE_SIZE - len, "rgb[%d] = 0x%06x\n", i, aw22xxx->rgb_val[i]);
	}
	return len;
}

static ssize_t aw22xxx_rgb_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 index = 0, val = 0;

	if (sscanf(buf, "%x %x", &index, &val) != 2 || index > 8)
		return -EINVAL;

	aw22xxx->rgb_val[index] = val;
	pr_info("aw22xxx: rgb[%d] set to 0x%06x\n", index, val);
	return count;
}

static ssize_t aw22xxx_task0_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	return snprintf(buf, PAGE_SIZE, "task0 = 0x%02x\n", aw22xxx->task0);
}

static ssize_t aw22xxx_task0_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;

	if (sscanf(buf, "%x", &val) != 1) {
		pr_err("aw22xxx: %s parse failed\n", __func__);
		return -EINVAL;
	}

	aw22xxx->task0 = val;
	pr_info("aw22xxx: %s task0=0x%x\n", __func__, val);
	schedule_work(&aw22xxx->task_work);
	return count;
}

static ssize_t aw22xxx_task1_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	return snprintf(buf, PAGE_SIZE, "task1 = 0x%02x\n", aw22xxx->task1);
}

static ssize_t aw22xxx_task1_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;

	if (sscanf(buf, "%x", &val) != 1) {
		pr_err("aw22xxx: %s parse failed\n", __func__);
		return -EINVAL;
	}

	aw22xxx->task1 = val;
	pr_info("aw22xxx: %s task1=0x%x\n", __func__, val);
	return count;
}

static ssize_t aw22xxx_task_irq_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	return snprintf(buf, PAGE_SIZE, "task_irq = %u\n", aw22xxx->task_irq);
}

static ssize_t aw22xxx_task_irq_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;

	if (sscanf(buf, "%u", &val) != 1) {
		pr_err("aw22xxx: %s parse failed\n", __func__);
		return -EINVAL;
	}

	aw22xxx->task_irq = val;
	pr_info("aw22xxx: %s task_irq=%u\n", __func__, val);
	return count;
}

static ssize_t aw22xxx_multi_breath_pattern_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	return snprintf(buf, PAGE_SIZE, " pattern_status = %d\n",
			aw22xxx->multi_breath_pattern);
}

static ssize_t aw22xxx_multi_breath_pattern_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct led_classdev *cdev = dev_get_drvdata(dev);
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	u32 val = 0;

	if (sscanf(buf, "%x", &val) != 1)
		return -EINVAL;

	aw22xxx->multi_breath_pattern = val;

	if (val) {
		if (val == 1) {
			read_idx = 0;
			if (!kthread_status && write_idx) {
				cfg_update_kthread = kthread_create(aw22xxx_play, aw22xxx, "aw22xxx_play");
				if (!IS_ERR(cfg_update_kthread)) {
					wake_up_process(cfg_update_kthread);
					kthread_status = 1;
					pr_info("aw22xxx: kthread_create done\n");
				} else {
					kthread_status = 0;
					pr_err("aw22xxx: kthread_create error\n");
				}
			}
		}
	} else {
		read_idx = 0;
		write_idx = 0;
		if (kthread_status == 1) {
			kthread_status = 0;
		}
		aw22xxx_i2c_write(aw22xxx, 255, 0);
		aw22xxx_i2c_write(aw22xxx, 5, 0);
		aw22xxx_i2c_write(aw22xxx, 4, 1);
		aw22xxx_i2c_write(aw22xxx, 2, 0);
	}
	return count;
}

static DEVICE_ATTR(cfg, 0644, aw22xxx_cfg_show, aw22xxx_cfg_store);
static DEVICE_ATTR(effect, 0644, aw22xxx_effect_show, aw22xxx_effect_store);
static DEVICE_ATTR(fw, 0644, aw22xxx_fw_show, aw22xxx_fw_store);
static DEVICE_ATTR(hwen, 0644, aw22xxx_hwen_show, aw22xxx_hwen_store);
static DEVICE_ATTR(imax, 0644, aw22xxx_imax_show, aw22xxx_imax_store);
static DEVICE_ATTR(para, 0644, aw22xxx_para_show, aw22xxx_para_store);
static struct device_attribute dev_attr_pattern =
	__ATTR(pattern, 0660, aw22xxx_multi_breath_pattern_show, aw22xxx_multi_breath_pattern_store);
static DEVICE_ATTR(reg, 0644, aw22xxx_reg_show, aw22xxx_reg_store);
static DEVICE_ATTR(rgb, 0644, aw22xxx_rgb_show, aw22xxx_rgb_store);
static DEVICE_ATTR(task0, 0644, aw22xxx_task0_show, aw22xxx_task0_store);
static DEVICE_ATTR(task1, 0644, aw22xxx_task1_show, aw22xxx_task1_store);
static DEVICE_ATTR(task_irq, 0644, aw22xxx_task_irq_show, aw22xxx_task_irq_store);

static struct attribute *aw22xxx_attrs[] = {
	&dev_attr_cfg.attr,
	&dev_attr_effect.attr,
	&dev_attr_fw.attr,
	&dev_attr_hwen.attr,
	&dev_attr_imax.attr,
	&dev_attr_para.attr,
	&dev_attr_pattern.attr,
	&dev_attr_reg.attr,
	&dev_attr_rgb.attr,
	&dev_attr_task0.attr,
	&dev_attr_task1.attr,
	&dev_attr_task_irq.attr,
	NULL
};

static const struct attribute_group aw22xxx_attribute_group = {
	.attrs = aw22xxx_attrs,
};

/* ======================================================================
 * LED Classdev Operations
 * ====================================================================== */

static void aw22xxx_set_brightness(struct led_classdev *cdev, enum led_brightness value)
{
	struct aw22xxx *aw22xxx = container_of(cdev, struct aw22xxx, cdev);
	cdev->brightness = value;
	schedule_work(&aw22xxx->brightness_work);
}

static noinline int aw22xxx_parse_led_cdev(struct aw22xxx *aw22xxx,
					   struct device_node *np)
{
	struct device_node *child;
	int ret = 0;

	pr_info("aw22xxx: %s\n", __func__);
	child = of_get_next_child(np, NULL);
	while (child) {
		ret = of_property_read_string(child, "aw22xxx,name",
					      &aw22xxx->cdev.name);
		if (ret < 0) {
			dev_err(aw22xxx->dev, "Failure reading led name, ret = %d\n", ret);
			AW22XXX_OPT_BARRIER("led-name");
			return ret;
		}
		ret = of_property_read_u32(child, "aw22xxx,imax", &aw22xxx->imax);
		if (ret < 0) {
			dev_err(aw22xxx->dev, "Failure reading imax, ret = %d\n", ret);
			AW22XXX_OPT_BARRIER("led-imax");
			return ret;
		}
		ret = of_property_read_u32(child, "aw22xxx,brightness",
					   &aw22xxx->cdev.brightness);
		if (ret < 0) {
			dev_err(aw22xxx->dev, "Failure reading brightness, ret = %d\n", ret);
			AW22XXX_OPT_BARRIER("led-brightness");
			return ret;
		}
		ret = of_property_read_u32(child, "aw22xxx,max_brightness",
					   &aw22xxx->cdev.max_brightness);
		if (ret < 0) {
			dev_err(aw22xxx->dev,
				"Failure reading max brightness, ret = %d\n", ret);
			AW22XXX_OPT_BARRIER("led-max-brightness");
			return ret;
		}
		child = of_get_next_child(np, child);
	}

	INIT_WORK(&aw22xxx->brightness_work, aw22xxx_brightness_work);
	INIT_WORK(&aw22xxx->task_work, aw22xxx_task_work);
	aw22xxx->cdev.brightness_set = aw22xxx_set_brightness;
	ret = led_classdev_register_ext(aw22xxx->dev, &aw22xxx->cdev, NULL);
	if (ret) {
		dev_err(aw22xxx->dev, "unable to register led ret=%d\n", ret);
		AW22XXX_OPT_BARRIER("led-register");
		return ret;
	}

	ret = sysfs_create_group(&aw22xxx->cdev.dev->kobj,
				 &aw22xxx_attribute_group);
	if (ret) {
		dev_err(aw22xxx->dev, "led sysfs ret: %d\n", ret);
		AW22XXX_OPT_BARRIER("led-sysfs");
		led_classdev_unregister(&aw22xxx->cdev);
	}
	return ret;
}

/* ======================================================================
 * Procfs Entry Callbacks
 * ====================================================================== */

static ssize_t get_aw22xxx_id(struct file *file, char __user *user_buf,
			     size_t count, loff_t *ppos)
{
	size_t len;
	volatile size_t checked_len;

	if (*ppos)
		return 0;
	pr_info("aw22xxx: %s\n", __func__);
	len = strnlen(g_chip_id.text, sizeof(g_chip_id.text));
	checked_len = len;
	if (unlikely(checked_len > sizeof(g_chip_id.text)))
		__fortify_panic(4, sizeof(g_chip_id.text), checked_len);
	return simple_read_from_buffer(user_buf, count, ppos, g_chip_id.text, len);
}

static const struct proc_ops proc_ops_awid = {
	.proc_read = get_aw22xxx_id,
};

static int aw22xxx_create_proc_entry(void)
{
	pr_info("aw22xxx: %s\n", __func__);
	if (proc_create("driver/colorleds_id", 0444, NULL, &proc_ops_awid)) {
		pr_info("aw22xxx: proc entry driver/colorleds_id created\n");
		return 0;
	}
	pr_err("aw22xxx: failed to create proc entry\n");
	return -ENOMEM;
}

/* ======================================================================
 * Probe & Remove
 * ====================================================================== */

static int aw22xxx_i2c_probe(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct device_node *np = dev->of_node;
	struct aw22xxx *aw22xxx;
	irq_handler_t irq_handler;
	int irq;
	int ret;

	pr_info("aw22xxx: %s entering\n", __func__);

	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
		dev_err(dev, "i2c functionality check failed\n");
		return -EIO;
	}

	aw22xxx = devm_kzalloc(dev, sizeof(struct aw22xxx), GFP_KERNEL);
	if (!aw22xxx)
		return -ENOMEM;

	aw22xxx->i2c = client;
	aw22xxx->dev = dev;
	i2c_set_clientdata(client, aw22xxx);

	mutex_init(&aw22xxx->cfg_lock);
	aw22xxx->cfg_custom_en = 1;

	aw22xxx->pinctrl = devm_pinctrl_get(dev);
	if (IS_ERR_OR_NULL(aw22xxx->pinctrl)) {
		pr_err("aw22xxx: failed to get pinctrl\n");
		ret = -EINVAL;
		goto free_device;
	}
	aw22xxx->pinctrl_default = pinctrl_lookup_state(aw22xxx->pinctrl,
							 "aw22xxx_led_default");
	aw22xxx->pinctrl_sleep = pinctrl_lookup_state(aw22xxx->pinctrl,
						       "aw22xxx_led_sleep");
	if (IS_ERR_OR_NULL(aw22xxx->pinctrl_default) ||
	    IS_ERR_OR_NULL(aw22xxx->pinctrl_sleep)) {
		pr_err("aw22xxx: failed to resolve pinctrl states\n");
		ret = -EINVAL;
		goto put_pinctrl;
	}
	ret = pinctrl_select_state(aw22xxx->pinctrl, aw22xxx->pinctrl_default);
	if (ret) {
		pr_err("aw22xxx: failed to select pinctrl default\n");
		goto put_pinctrl;
	}
	pr_info("aw22xxx: pinctrl active\n");

	if (!np) {
		dev_err(dev, "%s: failed to parse device tree node\n", __func__);
		aw22xxx->reset_gpio = -1;
		ret = -EINVAL;
		goto put_pinctrl;
	}

	if (of_property_read_u32(np, "aw_drv_ver", &g_ver_var)) {
		g_ver_var = 11;
	}
	dev_info(dev, "aw drv ver=%d\n", g_ver_var);

	aw22xxx->reset_gpio = of_get_named_gpio(np, "reset-gpio", 0);
	if (!gpio_is_valid(aw22xxx->reset_gpio)) {
		dev_err(dev, "reset-gpio missing or invalid\n");
		ret = -EINVAL;
		goto put_pinctrl;
	}
	ret = gpiod_direction_output_raw(gpio_to_desc(aw22xxx->reset_gpio), 1);
	if (!ret)
		dev_info(dev, "reset gpio not enabled, gpio=%u\n", aw22xxx->reset_gpio);
	dev_info(dev, "reset gpio provided, gpio=%u\n", aw22xxx->reset_gpio);

	aw22xxx->irq_gpio = of_get_named_gpio(np, "irq-gpio", 0);
	if (!gpio_is_valid(aw22xxx->irq_gpio)) {
		dev_err(dev, "irq-gpio missing or invalid\n");
		ret = -EINVAL;
		goto put_pinctrl;
	}
	dev_info(dev, "irq gpio provided, gpio=%u\n", aw22xxx->irq_gpio);

	aw22xxx->nubia_ver_gpio = of_get_named_gpio(np, "nubia_ver-gpio", 0);
	if (gpio_is_valid(aw22xxx->nubia_ver_gpio))
		dev_info(dev, "nubia version gpio=%u\n", aw22xxx->nubia_ver_gpio);
	else
		dev_info(dev, "nubia version gpio unavailable\n");

	if (of_property_read_u32(np, "cfg_custom_en", &g_custom_en))
		g_custom_en = 0;

	ret = devm_gpio_request_one(dev, aw22xxx->reset_gpio, GPIOF_OUT_INIT_LOW,
				    "aw22xxx_rst");
	if (ret) {
		dev_err(dev, "%s: gpio request failed\n", __func__);
		goto put_pinctrl;
	}
	ret = devm_gpio_request_one(dev, aw22xxx->irq_gpio, GPIOF_IN,
				    "aw22xxx_int");
	if (ret) {
		dev_err(dev, "%s: gpio request failed\n", __func__);
		goto put_pinctrl;
	}

	aw22xxx_hw_reset(aw22xxx);
	pr_info("aw22xxx: %s multicolor=%u\n", __func__, multicolor_led);

	if (multicolor_led == 1 || multicolor_led == 2) {
		gpiod_set_raw_value_cansleep(gpio_to_desc(aw22xxx->reset_gpio), 0);
		devm_gpio_request_one(dev, aw22xxx->irq_gpio, GPIOF_OUT_INIT_LOW,
				      "aw22xxx_int");
		multicolor_led = 0;
		g_cfgarray_count = g_custom_en ? 11 : 4500;
		return 0;
	}

	ret = aw22xxx_read_chipid(aw22xxx);
	if (ret < 0) {
		dev_err(dev, "read_chipid failed\n");
		goto put_pinctrl;
	}

	if (gpio_is_valid(aw22xxx->irq_gpio) && !aw22xxx->no_interrupt) {
		aw22xxx_interrupt_setup(aw22xxx);
		if (g_ver_var < 12) {
			irq_handler = aw22xxx_irq;
		} else {
			pr_info("aw22xxx: using v15 IRQ handler\n");
			irq_handler = aw22xxx_irq_v15;
		}
		irq = gpiod_to_irq(gpio_to_desc(aw22xxx->irq_gpio));
		ret = devm_request_threaded_irq(dev, irq, NULL, irq_handler,
					 IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					 "aw22xxx", aw22xxx);
		if (ret) {
			irq = gpiod_to_irq(gpio_to_desc(aw22xxx->irq_gpio));
			dev_err(dev, "failed to request IRQ %d: %d\n", irq, ret);
			goto put_pinctrl;
		}
	} else {
		aw22xxx->no_interrupt |= 1;
	}

	i2c_set_clientdata(client, aw22xxx);
	ret = aw22xxx_parse_led_cdev(aw22xxx, np);
	if (ret < 0) {
		dev_err(dev, "failed to create LED class device\n");
		goto put_pinctrl;
	}

	ret = aw22xxx_alloc_name_array();
	if (ret < 0) {
		dev_err(dev, "failed to allocate configuration names\n");
		goto put_pinctrl;
	}

	strcpy(aw22xxx_fw_name, "aw22xxx_fw.bin");
	aw22xxx_fw_init(aw22xxx);

	pr_info("aw22xxx: %s probe completed\n", __func__);
	ret = gpiod_direction_output_raw(gpio_to_desc(aw22xxx->reset_gpio), 0);
	if (ret)
		pr_err("aw22xxx: failed to disable reset output\n");
	aw22xxx->zlog_client = zlog_register_client(&zlog_aw22xxx_dev);
	if (!aw22xxx->zlog_client)
		pr_err("aw22xxx: zlog registration failed\n");
	pr_info("aw22xxx: registering proc identity\n");
	aw22xxx_create_proc_entry();

	return 0;

put_pinctrl:
	devm_pinctrl_put(aw22xxx->pinctrl);
	aw22xxx->pinctrl = NULL;
free_device:
	devm_kfree(dev, aw22xxx);
	return ret;
}

static void aw22xxx_i2c_remove(struct i2c_client *client)
{
	struct aw22xxx *aw22xxx = i2c_get_clientdata(client);
	int irq;

	pr_info("aw22xxx: %s\n", __func__);
	remove_proc_entry("driver/colorleds_id", NULL);
	pr_info("aw22xxx: proc entry removed\n");
	sysfs_remove_group(&aw22xxx->cdev.dev->kobj, &aw22xxx_attribute_group);
	led_classdev_unregister(&aw22xxx->cdev);
	irq = gpiod_to_irq(gpio_to_desc(aw22xxx->irq_gpio));
	devm_free_irq(&client->dev, irq, aw22xxx);
	devm_kfree(&client->dev, aw22xxx);
	g_cfgarray_count = g_custom_en ? 11 : 4500;
}

static const struct of_device_id aw22xxx_dt_match[] = {
	{ .compatible = "awinic,aw22xxx_led" },
	{ },
};

static const struct i2c_device_id aw22xxx_i2c_id[] = {
	{ "aw22xxx_led", 0 },
	{ }
};
MODULE_DEVICE_TABLE(i2c, aw22xxx_i2c_id);

static struct i2c_driver aw22xxx_i2c_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table = aw22xxx_dt_match,
	},
	.probe = aw22xxx_i2c_probe,
	.remove = aw22xxx_i2c_remove,
	.id_table = aw22xxx_i2c_id,
};

static int __init aw22xxx_driver_init(void)
{
	int ret;

	pr_info("aw22xxx: driver version v1.1.3\n");
	msleep(500);
	pr_info("aw22xxx: registering I2C driver\n");
	ret = i2c_add_driver(&aw22xxx_i2c_driver);
	if (ret)
		pr_err("aw22xxx: I2C registration failed: %d\n", ret);
	return ret;
}

static void __exit aw22xxx_driver_exit(void)
{
	i2c_del_driver(&aw22xxx_i2c_driver);
}

module_init(aw22xxx_driver_init);
module_exit(aw22xxx_driver_exit);

MODULE_AUTHOR("Antigravity <google-deepmind>");
MODULE_DESCRIPTION("Awinic AW22XXX RGB LED smart controller driver reconstruction");
MODULE_LICENSE("GPL v2");
