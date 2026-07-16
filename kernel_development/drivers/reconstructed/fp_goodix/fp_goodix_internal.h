/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef FP_GOODIX_INTERNAL_H
#define FP_GOODIX_INTERNAL_H

#ifdef ZTE_FINGERPRINT_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/mutex.h>
#include <linux/platform_device.h>
#include <linux/uaccess.h>
#include <linux/list.h>
#include <linux/bitmap.h>
#include <linux/input.h>
#include <linux/interrupt.h>
#include <linux/gpio.h>
#include <linux/of_gpio.h>
#include <linux/regulator/consumer.h>
#include <linux/delay.h>
#include <linux/netlink.h>
#include <linux/skbuff.h>
#include <linux/pm_wakeup.h>
#include <linux/pinctrl/consumer.h>
#include <net/netlink.h>
#include <net/net_namespace.h>
#include <drm/drm_panel.h>
#include <linux/soc/qcom/panel_event_notifier.h>
#endif

#define DRIVER_NAME "goodix_fp"
#define GF_NETLINK_PROTO 25

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
extern void zlog_unregister_client(void *client);
extern void zlog_client_record(void *client, const char *format, ...);
extern void zlog_client_notify(void *client, u32 event);

struct gf_dev {
	dev_t devt;
	struct list_head device_entry;
	struct platform_device *pdev;
	void *reserved_20;
	void *reserved_28;
	struct input_dev *input_dev;
	u32 ref_count;
	int irq_gpio;
	int reset_gpio;
	u32 reserved_44;
	u32 irq_num;
	u32 irq_enabled;
	u64 reserved_50[4];
	u8 opened;
	u8 screen_state;
	u8 reserved_72[6];
	void *zlog_client;
	struct pinctrl *pinctrl;
	struct pinctrl_state *pins_active;
	struct pinctrl_state *pins_suspend;
	struct regulator *vdd_reg;
	struct workqueue_struct *screen_state_wq;
	struct delayed_work screen_state_work;
};

static_assert(sizeof(struct gf_dev) == 272);
static_assert(offsetof(struct gf_dev, device_entry) == 8);
static_assert(offsetof(struct gf_dev, input_dev) == 48);
static_assert(offsetof(struct gf_dev, ref_count) == 56);
static_assert(offsetof(struct gf_dev, opened) == 112);
static_assert(offsetof(struct gf_dev, zlog_client) == 120);
static_assert(offsetof(struct gf_dev, screen_state_wq) == 160);

extern struct zlog_module_info goodix_zlog_fp_dev;

int sendnlmsg(char *msg);
int netlink_init(void);
void netlink_exit(void);

int zte_goodix_pinctrl_init(struct gf_dev *gf_dev);
int zte_goodix_pinctrl_select(struct gf_dev *gf_dev, bool active);
int gf_parse_dts(struct gf_dev *gf_dev);
void gf_cleanup(struct gf_dev *gf_dev);
int gf_power_on(struct gf_dev *gf_dev);
int gf_power_off(struct gf_dev *gf_dev);
int gf_hw_reset(struct gf_dev *gf_dev, unsigned int delay_ms);
int gf_irq_num(struct gf_dev *gf_dev);

#endif
