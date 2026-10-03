// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_fingerprint.c - ZTE Custom Goodix Fingerprint Bridge Driver
 *
 * Provides userspace char-dev node interface, inputs keys, and routes display state notifications via Netlink.
 *
 * Reconstructed from binary analysis of zte_fingerprint.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

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

struct zlog_module_info goodix_zlog_fp_dev = {
	.module_id = 7,
	.name = "fingerprint",
	.device = "goodix",
	.ic = "goodix",
	.module = "FP",
};

/* Netlink State */
static u8 sendnlmsg_data_pad[0x130] __used __attribute__((section(".data")));
static u32 pid __attribute__((section(".data"))) = 0;

/* Globals matching ROM binary */
static int SPIDEV_MAJOR;
static struct class *gf_class;
static struct wakeup_source fp_wakelock;
static void *cookie;
static void *goodixfp_active_panel;
static DECLARE_BITMAP(minors, 32);

static LIST_HEAD(device_list);
static DEFINE_MUTEX(device_list_lock);

/* Private data structure matching Ghidra analysis & layout offsets */
struct gf_device {
	dev_t devt;                           // 0
	struct list_head device_entry;        // 8
	struct platform_device *pdev;         // 24
	void *reserved_20;                    // 32
	void *reserved_28;                    // 40
	struct input_dev *input_dev;          // 48
	u32 ref_count;                        // 56
	int irq_gpio;                         // 60
	int reset_gpio;                       // 64
	u32 reserved_44;                      // 68
	u32 irq_num;                          // 72
	u32 irq_enabled;                      // 76
	u64 reserved_50[4];                   // 80..111
	u8 opened;                            // 112
	u8 screen_state;                      // 113
	u8 reserved_72[6];                    // 114..119
	void *zlog_client;                    // 120
	struct pinctrl *pinctrl;              // 128
	struct pinctrl_state *pins_active;    // 136
	struct pinctrl_state *pins_suspend;   // 144
	struct regulator *vdd_reg;            // 152
	struct workqueue_struct *screen_state_wq; // 160
	struct delayed_work screen_state_work; // 168
};

static_assert(sizeof(struct gf_device) == 272);
static_assert(offsetof(struct gf_device, device_entry) == 8);
static_assert(offsetof(struct gf_device, ref_count) == 56);
static_assert(offsetof(struct gf_device, opened) == 112);
static_assert(offsetof(struct gf_device, zlog_client) == 120);
static_assert(offsetof(struct gf_device, screen_state_wq) == 160);

/* Global static device reference (since original uses a fixed instance layout) */
static struct gf_device gf;
static struct sock *nl_sk;

static noinline void gf_probe_list_del(struct list_head *entry) __asm__("list_del");

static noinline void gf_probe_list_del(struct list_head *entry)
{
	__list_del_entry(entry);
	entry->next = LIST_POISON1;
	entry->prev = LIST_POISON2;
}

/* ======================================================================
 * Netlink Functions
 * ====================================================================== */

static void nl_data_ready(struct sk_buff *skb)
{
	skb_get(skb);
	if (skb->len >= nlmsg_total_size(0)) {
	#ifdef ZTE_FINGERPRINT_HOST_TEST
		pid = NETLINK_CB(skb).portid;
	#else
		pid = *(u32 *)(*(void **)((char *)skb + 0xe0) + 0xc);
	#endif
		printk("\0016%s: gf_kernel, update pid=%d\n", __func__, pid);
		sk_skb_reason_drop(NULL, skb, 2);
	}
	printk("\0016%s: gf_kernel, current pid=%d\n", __func__, pid);
}

noinline int sendnlmsg(char *msg)
{
	struct nlmsghdr *nlh;
	int ret = -ENODEV;
	#ifndef ZTE_FINGERPRINT_HOST_TEST
	register char *event_msg __asm__("x22") = msg;
	register struct sk_buff *event_skb __asm__("x19");
	#else
	char *event_msg = msg;
	struct sk_buff *event_skb;
	#endif

	if (!event_msg || !nl_sk || !pid)
		return ret;

	event_skb = alloc_skb(NLMSG_SPACE(32), GFP_ATOMIC);
	if (!event_skb)
		return -ENOMEM;

	nlh = nlmsg_put(event_skb, 0, 0, 0, 32, 0);
	if (!nlh) {
		kfree_skb(event_skb);
		return -EMSGSIZE;
	}

	*(u64 *)((char *)event_skb + 0x34) = 0;
	*(char *)nlmsg_data(nlh) = *event_msg;

	pr_info("gf_dev-gf_kernel, send message: %d\n", (int)*event_msg);
	#ifndef ZTE_FINGERPRINT_HOST_TEST
	register int event_ret __asm__("w19");
	event_ret = netlink_unicast(nl_sk, event_skb, pid, MSG_DONTWAIT);
	pr_info("gf_dev-gf_kernel, pid=%d, ret=%d\n", pid, event_ret);
	return event_ret & (event_ret >> 31);
	#else
	ret = netlink_unicast(nl_sk, event_skb, pid, MSG_DONTWAIT);
	pr_info("gf_dev-gf_kernel, pid=%d, ret=%d\n", pid, ret);
	return ret & (ret >> 31);
	#endif
}

noinline int netlink_init(void)
{
	struct netlink_kernel_cfg cfg;

	memset(&cfg, 0, sizeof(cfg));
	cfg.input = nl_data_ready;

	nl_sk = netlink_kernel_create(&init_net, GF_NETLINK_PROTO, &cfg);
	if (!nl_sk) {
		printk("\0013create netlink socket error\n");
		return 1;
	}

	return 0;
}

static noinline void netlink_exit(void)
{
	if (nl_sk) {
		netlink_kernel_release(nl_sk);
		nl_sk = NULL;
	}
	pr_info("%s: netlink socket released\n", __func__);
}

/* ======================================================================
 * Display Notifier Callbacks
 * ====================================================================== */

static void goodix_fb_state_chg_callback(enum panel_event_notifier_tag tag,
					 struct panel_event_notification *notification,
					 void *client_data)
{
	struct gf_device *gf_dev = client_data;
	char msg;

	if (!notification || !gf_dev) {
		printk("\0016zte_fingerprint: [%s] no notification callback\n", __func__);
		return;
	}

	if (!gf_dev->opened) {
		printk("\0014zte_fingerprint: [%s] Panel callback skipped: device unavailable\n",
		       __func__);
		return;
	}

	printk("\0016zte_fingerprint: [%s]: 1st callback", __func__);

	if (tag != 1)
		goto out;

	if (notification->notif_type == 2) {
		printk("\0016zte_fingerprint: [%s] LCD ON\n", __func__);
		gf_dev->screen_state = 0;
		printk("\0016zte_fingerprint: [info] %s msg = GF_NET_EVENT_FB_UNBLACK, FP_NETLINK_SCREEN_on\n",
		       __func__);
		msg = 3;
		sendnlmsg(&msg);
	} else if (notification->notif_type == 1) {
		printk("\0016zte_fingerprint: [%s] LCD OFF\n", __func__);
		gf_dev->screen_state = 1;
		printk("\0016zte_fingerprint: [info] %s msg = GF_NET_EVENT_FB_BLACK, FP_NETLINK_SCREEN_off\n",
		       __func__);
		msg = 2;
		sendnlmsg(&msg);
	} else {
		printk("\0016zte_fingerprint: [%s] Unknown notifier\n", __func__);
	}

out:
	return;
}

static noinline int goodixfp_drm_get_pannel(struct device_node *np)
{
	struct drm_panel *panel;
	int ret;
	int count, i;

	if (!np) {
		pr_err("zte_fingerprint: device is null, failed to find active panel\n");
		return -ENODEV;
	}

	count = of_count_phandle_with_args(np, "panel", NULL);
	if (count < 1) {
		pr_info("zte_fingerprint: [%s] find panel node fail\n", __func__);
	} else {
		for (i = 0; i < count; i++) {
			struct of_phandle_args args;

			ret = of_parse_phandle_with_args(np, "panel", NULL, i, &args);
			panel = of_drm_find_panel(ret ? NULL : args.np);
			if (!IS_ERR(panel)) {
				pr_info("zte_fingerprint: [%s] find panel success\n", __func__);
				goodixfp_active_panel = panel;
				pr_info("zte_fingerprint: [%s] register drm notify, panel active\n",
					__func__);
				count = 0;
				goto out;
			}
		}
		pr_err("zte_fingerprint: [%s] find panel fail!\n", __func__);
	}

out:
	return count;
}

static noinline void goodixfp_init_drm_notifier(struct work_struct *work)
{
	struct gf_device *gf_dev = container_of(work, struct gf_device, screen_state_work.work);
	int ret, i;

	pr_info("zte_fingerprint: [%s] enter\n", __func__);
	ret = goodixfp_drm_get_pannel(gf_dev->pdev->dev.of_node);
	i = 0;
	while (i != 25) {
		if (ret != 0) {
			pr_err("zte_fingerprint: [%s] get pannel node error\n", __func__);
			usleep_range(1000000, 1001000);
			ret = goodixfp_drm_get_pannel(gf_dev->pdev->dev.of_node);
		}
		i++;
	}
	if (ret)
		pr_info("zte_fingerprint: [%s] get pannel node error after retrying 25 times\n",
			__func__);

	if (goodixfp_active_panel) {
		pr_info("zte_fingerprint: [%s] success to get primary panel", __func__);
		cookie = panel_event_notifier_register(1, 3,
						       goodixfp_active_panel,
						       goodix_fb_state_chg_callback,
						       gf_dev);
		if (!cookie) {
			pr_info("zte_fingerprint: [%s] drm_panel_notifier_register error\n",
				__func__);
		}
	}
}

/* ======================================================================
 * Hardware Controls
 * ====================================================================== */

static int gf_power_on(struct gf_device *gf_dev)
{
	int ret;

	if (!gf_dev || IS_ERR_OR_NULL(gf_dev->vdd_reg)) {
		pr_err("%s: regulator is invalid\n", __func__);
		return -EINVAL;
	}

	pr_info("%s: turning on regulator\n", __func__);

	if (regulator_is_enabled(gf_dev->vdd_reg)) {
		pr_info("%s: regulator is already enabled\n", __func__);
		return 0;
	}

	ret = regulator_enable(gf_dev->vdd_reg);
	if (ret) {
		pr_err("%s: failed to enable regulator, ret=%d\n", __func__, ret);
		return ret;
	}
	return 0;
}

static int gf_power_off(struct gf_device *gf_dev)
{
	int ret;

	if (!gf_dev || IS_ERR_OR_NULL(gf_dev->vdd_reg)) {
		pr_err("%s: regulator is invalid\n", __func__);
		return -EINVAL;
	}

	pr_info("%s: turning off regulator\n", __func__);

	if (regulator_is_enabled(gf_dev->vdd_reg)) {
		ret = regulator_disable(gf_dev->vdd_reg);
		if (ret) {
			pr_err("%s: failed to disable regulator, ret=%d\n", __func__, ret);
			return ret;
		}
	} else {
		pr_info("%s: regulator is already disabled\n", __func__);
	}

	return 0;
}

int gf_hw_reset(struct gf_device *gf_dev, int delay_ms)
{
	if (!gf_dev) {
		pr_err("%s: invalid gf_dev\n", __func__);
		return -EINVAL;
	}

	if (!gpio_is_valid(gf_dev->reset_gpio)) {
		pr_info("%s: reset gpio not defined\n", __func__);
		return 0;
	}

	pr_info("%s: triggering hardware reset\n", __func__);

	gpiod_set_raw_value(gpio_to_desc(gf_dev->reset_gpio), 0);
	usleep_range(10000, 10100);
	gpiod_set_raw_value(gpio_to_desc(gf_dev->reset_gpio), 1);

	if (delay_ms > 0)
		udelay(delay_ms * 1000);

	return 0;
}

static void gf_enable_irq(void)
{
	if (!gf.irq_enabled) {
		enable_irq(gf.irq_num);
		gf.irq_enabled = 1;
	} else {
		pr_warn("zte_fingerprint: IRQ has been enabled.\n");
	}
}

static void gf_disable_irq(struct gf_device *gf_dev)
{
	if (gf_dev->irq_enabled) {
		gf_dev->irq_enabled = 0;
		disable_irq(gf_dev->irq_num);
	} else {
		pr_warn("zte_fingerprint: IRQ has been disabled.\n");
	}
}

int gf_cleanup(struct gf_device *gf_dev)
{
	if (!gf_dev)
		return -EINVAL;

	pr_info("%s: entry\n", __func__);

	if (gpio_is_valid(gf_dev->irq_gpio)) {
		gpio_free(gf_dev->irq_gpio);
		pr_info("%s: freed irq gpio\n", __func__);
	}

	if (gpio_is_valid(gf_dev->reset_gpio)) {
		gpio_free(gf_dev->reset_gpio);
		pr_info("%s: freed reset gpio\n", __func__);
	}

	if (!IS_ERR_OR_NULL(gf_dev->vdd_reg)) {
		if (regulator_is_enabled(gf_dev->vdd_reg)) {
			regulator_disable(gf_dev->vdd_reg);
			pr_info("%s: disabled vdd regulator\n", __func__);
		}
	}

	return 0;
}

static noinline int zte_goodix_pinctrl_init(struct gf_device *gf_dev)
{
	const char *error;
	int ret;

	if (!gf_dev || !gf_dev->pdev)
		return -EINVAL;

	pr_info("%s: loading pinctrl config\n", __func__);

	gf_dev->pinctrl = devm_pinctrl_get(&gf_dev->pdev->dev);
	if (IS_ERR_OR_NULL(gf_dev->pinctrl)) {
		error = "Target does not use pinctrl\n";
		ret = PTR_ERR(gf_dev->pinctrl);
		goto err_pinctrl;
	}

	gf_dev->pins_active = pinctrl_lookup_state(gf_dev->pinctrl, "goodix_active");
	if (IS_ERR_OR_NULL(gf_dev->pins_active)) {
		error = "Can not get goodix_active pinstate\n";
		ret = PTR_ERR(gf_dev->pins_active);
		goto err_pinctrl;
	}

	gf_dev->pins_suspend = pinctrl_lookup_state(gf_dev->pinctrl, "goodix_suspend");
	if (IS_ERR_OR_NULL(gf_dev->pins_suspend)) {
		error = "Can not get goodix_suspend pinstate\n";
		ret = PTR_ERR(gf_dev->pins_suspend);
		goto err_pinctrl;
	}

	return 0;

err_pinctrl:
	dev_err(&gf_dev->pdev->dev, "%s", error);
	gf_dev->pinctrl = NULL;
	return ret;
}

static noinline __used int zte_goodix_pinctrl_select(struct gf_device *gf_dev,
					      bool active)
{
	struct pinctrl_state *state;
	const char *state_name;
	const char *error;
	int ret;

	if (!gf_dev || !gf_dev->pinctrl)
		return -EINVAL;

	pr_info("%s: active=%u\n", __func__, active);
	state_name = active ? "goodix_active" : "goodix_suspend";
	state = active ? gf_dev->pins_active : gf_dev->pins_suspend;
	if (!state) {
		error = "not a valid '%s' pinstate\n";
		ret = -EINVAL;
		goto err_select;
	}

	ret = pinctrl_select_state(gf_dev->pinctrl, state);
	if (ret) {
		error = "can not set %s pins\n";
		goto err_select;
	}

	return 0;

err_select:
	dev_err(&gf_dev->pdev->dev, error, state_name);
	return ret;
}

noinline int gf_parse_dts(struct gf_device *gf_dev)
{
	struct device_node *np;
	int ret;

	if (!gf_dev || !gf_dev->pdev)
		return -EINVAL;

	np = gf_dev->pdev->dev.of_node;
	if (!np)
		return -ENODEV;

	ret = zte_goodix_pinctrl_init(gf_dev);
	if (ret)
		pr_info("%s: pinctrl init returned %d\n", __func__, ret);

	if (gf_dev->pinctrl) {
		if (IS_ERR_OR_NULL(gf_dev->pins_suspend)) {
			dev_err(&gf_dev->pdev->dev,
				"not a valid 'goodix_suspend' pinstate\n");
			return -EINVAL;
		}
		ret = pinctrl_select_state(gf_dev->pinctrl, gf_dev->pins_suspend);
		if (ret) {
			dev_err(&gf_dev->pdev->dev, "can not set goodix_suspend pins\n");
			return ret;
		}
		pr_info("%s: suspend pinctrl selected\n", __func__);
	}

	usleep_range(10000, 10100);

	gf_dev->vdd_reg = devm_regulator_get(&gf_dev->pdev->dev, "vdd");
	if (IS_ERR(gf_dev->vdd_reg)) {
		pr_err("%s: cannot get vdd regulator\n", __func__);
		return PTR_ERR(gf_dev->vdd_reg);
	}
	pr_info("%s: regulator acquired\n", __func__);

	ret = regulator_enable(gf_dev->vdd_reg);
	if (ret) {
		pr_err("%s: failed to enable regulator\n", __func__);
		if (gf_dev->zlog_client) {
			zlog_client_record(gf_dev->zlog_client,
					   "Failed to request goodixfp pwr gpio\n");
			zlog_client_notify(gf_dev->zlog_client, 0x102);
			pr_info("%s: notified ZLOG event 0x102\n", __func__);
		}
		return ret;
	}
	pr_info("%s: regulator enabled\n", __func__);

	gf_dev->reset_gpio = of_get_named_gpio(np, "fp-gpio-reset", 0);
	if (!gpio_is_valid(gf_dev->reset_gpio)) {
		pr_err("%s: invalid reset gpio\n", __func__);
		return -EINVAL;
	}
	pr_info("%s: reset gpio=%d\n", __func__, gf_dev->reset_gpio);

	ret = devm_gpio_request(&gf_dev->pdev->dev, gf_dev->reset_gpio, "goodix_reset");
	if (ret) {
		pr_err("%s: failed to request reset gpio\n", __func__);
		if (gf_dev->zlog_client) {
			zlog_client_record(gf_dev->zlog_client,
					   "Failed to request goodixfp rst gpio\n");
			zlog_client_notify(gf_dev->zlog_client, 0x101);
			pr_info("%s: notified ZLOG event 0x101\n", __func__);
		}
		return ret;
	}
	pr_info("%s: reset gpio requested\n", __func__);

	gf_dev->irq_gpio = of_get_named_gpio(np, "fp-gpio-irq", 0);
	if (!gpio_is_valid(gf_dev->irq_gpio)) {
		pr_err("%s: invalid irq gpio\n", __func__);
		return -EINVAL;
	}
	pr_info("%s: irq gpio=%d\n", __func__, gf_dev->irq_gpio);

	ret = devm_gpio_request(&gf_dev->pdev->dev, gf_dev->irq_gpio, "goodix_irq");
	if (ret) {
		pr_err("%s: failed to request irq gpio\n", __func__);
		if (gf_dev->zlog_client) {
			zlog_client_record(gf_dev->zlog_client,
					   "Failed to request goodixfp irq gpio\n");
			zlog_client_notify(gf_dev->zlog_client, 0x100);
			pr_info("%s: notified ZLOG event 0x100\n", __func__);
		}
		return ret;
	}
	pr_info("%s: irq gpio requested\n", __func__);

	gpio_direction_input(gf_dev->irq_gpio);
	pr_info("%s: parse dts complete successfully\n", __func__);
	return 0;
}

noinline int gf_irq_num(struct gf_device *gf_dev)
{
	struct gpio_desc *irq_desc;

	if (!gf_dev)
	{
		pr_err("%s: invalid device\n", __func__);
		return -ENODEV;
	}

	irq_desc = gpio_to_desc(gf_dev->irq_gpio);
	return gpiod_to_irq(irq_desc);
}

static irqreturn_t gf_irq(int irq, void *dev_id)
{
	char msg = 1;

	__pm_wakeup_event(&fp_wakelock, 2500);
	pr_info("zte_fingerprint: gf_kernel, sendnlmsg\n");
	sendnlmsg(&msg);

	return IRQ_HANDLED;
}

/* ======================================================================
 * File Operations Callbacks
 * ====================================================================== */

static int gf_open(struct inode *inode, struct file *file)
{
	struct gf_device *gf_dev;
	int ret = -ENXIO;

	pr_info("zte_fingerprint: %s: enter\n", __func__);

	mutex_lock(&device_list_lock);

	list_for_each_entry(gf_dev, &device_list, device_entry) {
		if (gf_dev->devt == inode->i_rdev) {
			pr_info("zte_fingerprint: Found\n");
			ret = 0;
			break;
		}
	}

	gf_dev->zlog_client = zlog_register_client(&goodix_zlog_fp_dev);
	if (gf_dev->zlog_client)
		pr_info("zte_fingerprint: %s zlog_register_goodixfp_client success\n",
			__func__);
	else
		pr_err("zte_fingerprint: %s zlog_register_goodixfp_client fail\n",
			__func__);

	if (list_entry_is_head(gf_dev, &device_list, device_entry)) {
		pr_info("zte_fingerprint: No device for minor %d\n", iminor(inode));
	} else {
		gf_dev->ref_count++;
		file->private_data = gf_dev;
		nonseekable_open(inode, file);
		pr_info("zte_fingerprint: goodix: Succeed to open device. irq = %d\n",
			gf_dev->irq_num);

		if (gf_dev->ref_count == 1) {
			ret = gf_parse_dts(gf_dev);
			if (ret)
				goto err_unlock_return;

			pr_info("zte_fingerprint: %s: enter", "irq_setup");
			gf_dev->irq_num = gf_irq_num(gf_dev);
			ret = request_threaded_irq(gf_dev->irq_num, NULL, gf_irq,
						   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
						   "gf", gf_dev);
			#ifdef ZTE_FINGERPRINT_HOST_TEST
			int wake_irq = gf_dev->irq_num;
			#else
			register int wake_irq __asm__("w1");
			asm volatile("ldr %w0, [%1, #0x40]"
				     : "=r"(wake_irq)
				     : "r"(&gf_dev->device_entry));
			#endif
			if (ret) {
				#if defined(__aarch64__)
				#pragma clang diagnostic push
				#pragma clang diagnostic ignored "-Wformat-insufficient-args"
				pr_err("zte_fingerprint: failed to request IRQ:%d\n");
				#pragma clang diagnostic pop
				#else
				pr_err("zte_fingerprint: failed to request IRQ:%d\n", ret);
				#endif
				gf_cleanup(gf_dev);
				goto err_unlock_return;
			}

			irq_set_irq_wake(wake_irq, 1);
			gf_dev->irq_enabled = 1;
		}

		gf_hw_reset(gf_dev, 5);
		gf_dev->opened = 1;
		barrier();
		ret = 0;
	}

	mutex_unlock(&device_list_lock);
	pr_info("zte_fingerprint: %s: end\n", __func__);
	return ret;

err_unlock_return:
	mutex_unlock(&device_list_lock);
	return ret;
}

static int gf_release(struct inode *inode, struct file *file)
{
	struct gf_device *gf_dev;

	pr_info("zte_fingerprint: %s enter!\n", __func__);

	mutex_lock(&device_list_lock);
	gf_dev = file->private_data;
	file->private_data = NULL;
	gf_dev->ref_count--;
	if (gf_dev->ref_count == 0) {
		pr_info("zte_fingerprint: disble_irq. irq = %d\n", gf_dev->irq_num);
		irq_set_irq_wake(gf_dev->irq_num, 0);

		if (gf_dev->irq_enabled) {
			gf_dev->irq_enabled = 0;
			disable_irq(gf_dev->irq_num);
		} else {
			pr_warn("zte_fingerprint: IRQ has been disabled.\n");
		}

		free_irq(gf_dev->irq_num, gf_dev);
		gf_cleanup(gf_dev);
		gf_dev->opened = 0;
	}

	if (gf_dev->zlog_client) {
		zlog_unregister_client(gf_dev->zlog_client);
		pr_info("zte_fingerprint: %s zlog_unregister_client goodix_zlog_fp_dev\n",
			__func__);
	}

	mutex_unlock(&device_list_lock);
	return 0;
}

static void nav_event_input(int action)
{
	u32 key_code = 0;

	switch (action) {
	case 1:
		pr_info("zte_fingerprint: %s nav finger up\n", __func__);
		return;
	case 2:
		pr_info("zte_fingerprint: %s nav finger down\n", __func__);
		return;
	case 3:
		key_code = KEY_UP;
		break;
	case 4:
		pr_info("zte_fingerprint: %s nav down\n", __func__);
		key_code = KEY_DOWN;
		break;
	case 5:
		pr_info("zte_fingerprint: %s nav left\n", __func__);
		key_code = KEY_LEFT;
		break;
	case 6:
		pr_info("zte_fingerprint: %s nav right\n", __func__);
		key_code = KEY_RIGHT;
		break;
	case 7:
		key_code = KEY_VOLUMEDOWN;
		break;
	case 8:
		pr_info("zte_fingerprint: %s nav heavy\n", __func__);
		key_code = KEY_CHAT;
		break;
	case 9:
		pr_info("zte_fingerprint: %s nav long press\n", __func__);
		key_code = 0xd9;
		break;
	case 10:
		pr_info("zte_fingerprint: %s nav double click\n", __func__);
		key_code = KEY_VOLUMEUP;
		break;
	default:
		pr_warn("zte_fingerprint: %s unknown nav event: %d\n", __func__, action);
		break;
	}

	input_report_key(gf.input_dev, key_code, 1);
	input_sync(gf.input_dev);
	input_report_key(gf.input_dev, key_code, 0);
	input_sync(gf.input_dev);
	return;
}



static long gf_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct gf_device *gf_dev = file->private_data;
	int ret = 0;

	if (!gf_dev)
		return -EINVAL;

	if ((cmd & 0xFF00) != 0x6700)
		return -ENOTTY;
	if (!gf_dev->opened) {
		if (cmd != 0x6707 && cmd != 0x6708) {
			pr_err("%s: device is not opened\n", __func__);
			return -ENODEV;
		}
		pr_info("%s: allowing power command while closed\n", __func__);
	}

	switch (cmd) {
	case 0x80046700: { // -2147391744
		char ver = 25;
		pr_info("%s: ZTE_FP_IOCTL_GET_VERSION\n", __func__);
		if (copy_to_user((void __user *)arg, &ver, sizeof(ver)))
			return -EFAULT;
		break;
	}
	case 0x6701: // 26369
		pr_info("%s: ZTE_FP_IOCTL_CMD_01\n", __func__);
		break;
	case 0x6702: // 26370
		pr_info("%s: ZTE_FP_IOCTL_RESET\n", __func__);
		gf_hw_reset(gf_dev, 5);
		break;
	case 0x6703: // 26371
		pr_info("%s: ZTE_FP_IOCTL_ENABLE_IRQ\n", __func__);
		gf_enable_irq();
		break;
	case 0x6704: // 26372
		pr_info("%s: ZTE_FP_IOCTL_DISABLE_IRQ\n", __func__);
		gf_disable_irq(gf_dev);
		break;
	case 0x6707: // 26375
		pr_info("%s: ZTE_FP_IOCTL_POWER_ON\n", __func__);
		if (gf_dev->opened) {
			pr_info("%s: power already enabled\n", __func__);
		} else {
			ret = gf_power_on(gf_dev);
		}
		gf_dev->opened = 1;
		break;
	case 0x6708: // 26376
		pr_info("%s: ZTE_FP_IOCTL_POWER_OFF\n", __func__);
		if (!gf_dev->opened) {
			pr_info("%s: power already disabled\n", __func__);
		} else {
			ret = gf_power_off(gf_dev);
		}
		gf_dev->opened = 0;
		break;
	case 0x670a:
		pr_info("%s: ZTE_FP_IOCTL_CMD_0A\n", __func__);
		break;
	case 0x670c: // 26380
		pr_info("%s: ZTE_FP_IOCTL_CLEANUP\n", __func__);
		gf_cleanup(gf_dev);
		break;
	case 0x4004670e: { // 1074030350
		u32 action;
		pr_info("%s: ZTE_FP_IOCTL_NAV_EVENT\n", __func__);
		if (copy_from_user(&action, (void __user *)arg, sizeof(action)))
			return -EFAULT;
		nav_event_input(action);
		break;
	}
	case 0x40086709: {
		u64 event_data;
		u32 original_key;
		u32 key_code;
		bool pressed;

		pr_info("%s: ZTE_FP_IOCTL_REPORT_KEY\n", __func__);
		if (copy_from_user(&event_data, (void __user *)arg, sizeof(event_data)))
			return -EFAULT;

		original_key = (u32)(event_data & 0xFFFFFFFF);
		key_code = original_key;
		pressed = (bool)((event_data >> 32) & 0xFFFFFFFF);

		switch (key_code) {
		case 1:
			key_code = KEY_HOME;
			break;
		case 5:
			key_code = KEY_CAMERA;
			break;
		case 2:
			key_code = KEY_POWER;
			break;
		}

		OPTIMIZER_HIDE_VAR(original_key);
		OPTIMIZER_HIDE_VAR(key_code);
		pr_info("%s: key=%u mapped=%u pressed=%u\n", __func__,
			 original_key, key_code, pressed);
		if ((key_code == KEY_CAMERA || key_code == KEY_POWER) && pressed) {
			input_report_key(gf_dev->input_dev, key_code, 1);
			input_sync(gf_dev->input_dev);
			input_report_key(gf_dev->input_dev, key_code, 0);
			input_sync(gf_dev->input_dev);
		}
		if (original_key == 1) {
			barrier();
			input_report_key(gf_dev->input_dev, key_code, pressed);
			input_sync(gf_dev->input_dev);
		}
		break;
	}
	case 0x4008670d: {
		u64 event_data;

		if (copy_from_user(&event_data, (void __user *)arg, sizeof(event_data)))
			return -EFAULT;
		pr_info("%s: ZTE_FP_IOCTL_CMD_0D byte0=%u\n", __func__,
			 (u8)event_data);
		pr_info("%s: ZTE_FP_IOCTL_CMD_0D byte1=%u\n", __func__,
			 (u8)(event_data >> 8));
		pr_info("%s: ZTE_FP_IOCTL_CMD_0D byte2=%u\n", __func__,
			 (u8)(event_data >> 16));
		break;
	}
	default:
		pr_warn("%s: unknown command 0x%x\n", __func__, cmd);
		return -EINVAL;
	}

	return ret;
}

#ifndef ZTE_FINGERPRINT_GF_COMPAT_IOCTL_EXACT
static noinline long gf_compat_ioctl(struct file *file, unsigned int cmd,
                                     unsigned long arg)
{
	return gf_ioctl(file, cmd, arg);
}
#else
extern long gf_compat_ioctl(struct file *file, unsigned int cmd,
                            unsigned long arg);
#include "gf_compat_ioctl_exact.inc"
#endif

static const struct file_operations gf_fops = {
	.owner          = THIS_MODULE,
	.unlocked_ioctl = gf_ioctl,
	.compat_ioctl   = gf_compat_ioctl,
	.open           = gf_open,
	.release        = gf_release,
};

/* ======================================================================
 * Platform Driver Probe & Remove
 * ====================================================================== */

static int gf_probe(struct platform_device *pdev)
{
	struct gf_device *gf_dev = &gf;
	struct device *dev_node;
	unsigned long minor;
	int ret = 0;
#ifndef ZTE_FINGERPRINT_HOST_TEST
	struct platform_device *pdev_reg = pdev;
#else
	struct platform_device *pdev_reg = pdev;
#endif

	pr_info("zte_fingerprint: %s\n", __func__);

	INIT_LIST_HEAD(&gf_dev->device_entry);
	gf_dev->pdev = pdev_reg;
	*(u64 *)&gf_dev->irq_gpio = 0xffffffeaffffffeaULL;
	*(u64 *)&gf_dev->reserved_44 = (u64)(u32)(-EINVAL);
	gf_dev->opened = 0;
	gf_dev->screen_state = 0;

	/* Setup delayed workqueue for screen notifier */
	#ifdef ZTE_FINGERPRINT_HOST_TEST
	gf_dev->screen_state_wq = alloc_workqueue("screen_state_wq", 0x6000a, 1);
	#else
	gf_dev->screen_state_wq = alloc_workqueue("%s", 0x6000a, 1, "screen_state_wq");
	#endif
	if (gf_dev->screen_state_wq) {
		INIT_DELAYED_WORK(&gf_dev->screen_state_work, goodixfp_init_drm_notifier);
		queue_delayed_work(gf_dev->screen_state_wq, &gf_dev->screen_state_work, 1250);
	}

	mutex_lock(&device_list_lock);

	/* Find first free minor */
	minor = find_first_zero_bit(minors, 32);
	if (minor >= 32) {
		mutex_unlock(&device_list_lock);
		ret = -ENODEV;
		goto err_destroy_wq;
	}

	gf.devt = MKDEV(SPIDEV_MAJOR, minor);

	/* Create device node /dev/goodix_fp */
	dev_node = device_create(gf_class, &gf_dev->pdev->dev, gf.devt, &gf, "goodix_fp");
	ret = PTR_ERR_OR_ZERO(dev_node);
	if (ret) {
		gf.devt = 0;
		goto err_destroy_wq;
	}

	/* Claim minor */
	set_bit(minor, minors);

	/* Add to list */
	list_add(&gf_dev->device_entry, &device_list);
	mutex_unlock(&device_list_lock);

	/* Allocate Input Device */
	gf_dev->input_dev = input_allocate_device();
	if (!gf_dev->input_dev) {
		pr_err("zte_fingerprint: %s, failed to allocate input device\n", __func__);
		ret = -ENOMEM;
		goto err_destroy_device;
	}

	/* Capabilities */
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_HOME);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_MENU);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_BACK);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_POWER);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_UP);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_DOWN);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_RIGHT);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_LEFT);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_CAMERA);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_VOLUMEDOWN);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_VOLUMEUP);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0xd9);
	input_set_capability(gf_dev->input_dev, EV_KEY, KEY_CHAT);
	gf_dev->input_dev->name = "goodix_fp";

	ret = input_register_device(gf_dev->input_dev);
	if (ret) {
		pr_err("zte_fingerprint: failed to register input device\n");
		goto err_free_input;
	}

	wakeup_source_add(&fp_wakelock);
	pr_info("zte_fingerprint: version V%d.%d.%02d.%02d\n", 1, 2, 4, 2);
	return 0;

err_free_input:
	if (gf_dev->input_dev)
		input_free_device(gf_dev->input_dev);
err_destroy_device:
	if (gf.devt) {
		pr_info("zte_fingerprint: Err: status = %d\n", ret);
		mutex_lock(&device_list_lock);
		gf_probe_list_del(&gf_dev->device_entry);
		device_destroy(gf_class, gf.devt);
		clear_bit(MINOR(gf.devt), minors);
		mutex_unlock(&device_list_lock);
	}
err_destroy_wq:
	gf_cleanup(gf_dev);
	gf_dev->opened = 0;
	return ret;
}

static void gf_remove(struct platform_device *pdev)
{
	pr_info("zte_fingerprint: %s: gf_remove\n", __func__);

	wakeup_source_remove(&fp_wakelock);

	if (gf.input_dev)
		input_unregister_device(gf.input_dev);
	input_free_device(gf.input_dev);

	mutex_lock(&device_list_lock);
	__list_del_entry(&gf.device_entry);
	gf.device_entry.next = LIST_POISON1;
	gf.device_entry.prev = LIST_POISON2;
	device_destroy(gf_class, gf.devt);
	clear_bit(MINOR(gf.devt), minors);

	if (gf.screen_state_wq) {
		panel_event_notifier_unregister(cookie);
		cancel_delayed_work_sync(&gf.screen_state_work);
		destroy_workqueue(gf.screen_state_wq);
	}
	mutex_unlock(&device_list_lock);
}

static const struct of_device_id gf_of_match[] = {
	{ .compatible = "goodix,fingerprint" },
	{ .compatible = "goodix,fp" },
	{ .compatible = "goodix,fp-spi" },
	{ .compatible = "zte,goodix-fp" },
	{ },
};
static struct platform_driver gf_driver = {
	.probe  = gf_probe,
	.remove = gf_remove,
	.driver = {
		.name           = "goodix_fp",
		.of_match_table = gf_of_match,
	},
};

/* ======================================================================
 * Module Initialization & Cleanup
 * ====================================================================== */

static int __init zte_fp_init(void)
{
	int ret;

	SPIDEV_MAJOR = register_chrdev(0, "goodix_fp_spi", &gf_fops);
	if (SPIDEV_MAJOR < 0) {
		pr_err("%s: failed to register char device\n", __func__);
		return SPIDEV_MAJOR;
	}

	gf_class = class_create("goodix_fp");
	if (IS_ERR(gf_class)) {
		pr_err("%s: failed to create goodix_fp class\n", __func__);
		ret = PTR_ERR(gf_class);
		goto err_unregister_chrdev;
	}

	ret = platform_driver_register(&gf_driver);
	if (ret) {
		pr_err("%s: failed to register platform driver\n", __func__);
		class_destroy(gf_class);
		unregister_chrdev(SPIDEV_MAJOR, "goodix_fp_spi");
	}

	netlink_init();
	pr_info("%s: platform registration ret=%d\n", __func__, ret);
	return 0;

err_unregister_chrdev:
	unregister_chrdev(SPIDEV_MAJOR, "goodix_fp_spi");
	return ret;
}

static void __exit zte_fp_exit(void)
{
	netlink_exit();
	platform_driver_unregister(&gf_driver);
	class_destroy(gf_class);
	unregister_chrdev(SPIDEV_MAJOR, "goodix_fp_spi");
}

module_init(zte_fp_init);
module_exit(zte_fp_exit);

MODULE_DESCRIPTION("ZTE Custom Goodix Fingerprint Bridge Driver");
MODULE_LICENSE("GPL");
MODULE_AUTHOR("ZTE Corporation (reconstructed)");
