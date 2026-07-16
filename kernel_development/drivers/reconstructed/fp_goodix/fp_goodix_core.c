// SPDX-License-Identifier: GPL-2.0-only
/*
 * fp_goodix_core.c - Goodix fingerprint core
 *
 * Provides userspace char-dev node interface, inputs keys, and routes display state notifications via Netlink.
 *
 * Reconstructed from binary analysis of fp_goodix.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

#include "fp_goodix_internal.h"

struct zlog_module_info goodix_zlog_fp_dev = {
	.module_id = 7,
	.name = "fingerprint",
	.device = "goodix",
	.ic = "goodix",
	.module = "FP",
};

/* Globals matching ROM binary */
static int SPIDEV_MAJOR;
static struct class *gf_class;
static struct wakeup_source fp_wakelock;
static void *cookie;
static void *goodixfp_active_panel;
static DECLARE_BITMAP(minors, 32);

static LIST_HEAD(device_list);
static DEFINE_MUTEX(device_list_lock);

/* Global static device reference (since original uses a fixed instance layout) */
static struct gf_dev gf;

static noinline void gf_probe_list_del(struct list_head *entry) __asm__("list_del");

static noinline void gf_probe_list_del(struct list_head *entry)
{
	__list_del_entry(entry);
	entry->next = LIST_POISON1;
	entry->prev = LIST_POISON2;
}

/* ======================================================================
 * Display Notifier Callbacks
 * ====================================================================== */

static void goodix_fb_state_chg_callback(enum panel_event_notifier_tag tag,
					 struct panel_event_notification *notification,
					 void *client_data)
{
	struct gf_dev *gf_dev = client_data;
	char msg = 0;

	if (!notification || !gf_dev) {
		pr_info("fp_goodix: [%s] no notification callback\n", __func__);
		return;
	}

	if (!gf_dev->opened) {
		pr_warn("fp_goodix: [%s] Panel callback skipped: device unavailable\n",
			__func__);
		return;
	}

	pr_info("fp_goodix: [%s]: 1st callback", __func__);

	if ((int)tag == 1) {
		if (notification->notif_type == DRM_PANEL_EVENT_UNBLANK) {
			pr_info("fp_goodix: [%s] LCD ON\n", __func__);
			gf_dev->screen_state = 0;
			pr_info("fp_goodix: [info] %s msg = GF_NET_EVENT_FB_UNBLACK, FP_NETLINK_SCREEN_on\n",
				__func__);
			msg = 3;
			sendnlmsg(&msg);
		} else if (notification->notif_type == DRM_PANEL_EVENT_BLANK) {
			pr_info("fp_goodix: [%s] LCD OFF\n", __func__);
			gf_dev->screen_state = 1;
			pr_info("fp_goodix: [info] %s msg = GF_NET_EVENT_FB_BLACK, FP_NETLINK_SCREEN_off\n",
				__func__);
			msg = 2;
			sendnlmsg(&msg);
		} else {
			pr_info("fp_goodix: [%s] Unknown notifier\n", __func__);
		}
	}
}

static noinline int goodixfp_drm_get_pannel(struct device_node *np)
{
	struct drm_panel *panel = NULL;
	int count, i;

	if (!np) {
		pr_err("fp_goodix: device is null, failed to find active panel\n");
		return -ENODEV;
	}

	count = of_count_phandle_with_args(np, "panel", NULL);
	if (count < 1) {
		pr_info("fp_goodix: [%s] find panel node fail\n", __func__);
		return count;
	}

	for (i = 0; i < count; i++) {
		struct device_node *panel_np;

		panel_np = of_parse_phandle(np, "panel", i);
		panel = of_drm_find_panel(panel_np);
		if (!IS_ERR(panel)) {
			pr_info("fp_goodix: [%s] find panel success\n", __func__);
			goodixfp_active_panel = panel;
			pr_info("fp_goodix: [%s] register drm notify, panel active\n",
				__func__);
			return 0;
		}
	}

	pr_err("fp_goodix: [%s] find panel fail!\n", __func__);
	return count;
}

static noinline void goodixfp_init_drm_notifier(struct work_struct *work)
{
	struct gf_dev *gf_dev = container_of(work, struct gf_dev, screen_state_work.work);
	int ret, i;

	pr_info("fp_goodix: [%s] enter\n", __func__);

	ret = goodixfp_drm_get_pannel(gf_dev->pdev->dev.of_node);
	for (i = 0; i < 25; i++) {
		if (ret) {
			pr_err("fp_goodix: [%s] get pannel node error\n", __func__);
			usleep_range(1000000, 1001000);
			ret = goodixfp_drm_get_pannel(gf_dev->pdev->dev.of_node);
		}
	}
	if (ret)
		pr_info("fp_goodix: [%s] get pannel node error after retrying 25 times\n",
			__func__);

	if (goodixfp_active_panel) {
		pr_info("fp_goodix: [%s] success to get primary panel", __func__);
		cookie = panel_event_notifier_register(1, 3,
						       goodixfp_active_panel,
						       goodix_fb_state_chg_callback,
						       gf_dev);
		if (!cookie)
			pr_info("fp_goodix: [%s] drm_panel_notifier_register error\n",
				__func__);
	}
}

static void gf_enable_irq(void)
{
	if (gf.irq_enabled == 0) {
		enable_irq(gf.irq_num);
		gf.irq_enabled = 1;
	} else {
		pr_warn("fp_goodix: IRQ has been enabled.\n");
	}
}

static void gf_disable_irq(struct gf_dev *gf_dev)
{
	if (!gf_dev->irq_enabled) {
		pr_warn("fp_goodix: IRQ has been disabled.\n");
	} else {
		gf_dev->irq_enabled = 0;
		disable_irq(gf_dev->irq_num);
	}
}

static irqreturn_t gf_irq(int irq, void *dev_id)
{
	char msg = 1;

	__pm_wakeup_event(&fp_wakelock, 2500);
	pr_info("fp_goodix: gf_kernel, sendnlmsg\n");
	sendnlmsg(&msg);

	return IRQ_HANDLED;
}

/* ======================================================================
 * File Operations Callbacks
 * ====================================================================== */

static int gf_open(struct inode *inode, struct file *file)
{
	struct gf_dev *gf_dev;
	int ret = -ENXIO;

	pr_info("fp_goodix: %s: enter\n", __func__);

	mutex_lock(&device_list_lock);

	list_for_each_entry(gf_dev, &device_list, device_entry) {
		if (gf_dev->devt == inode->i_rdev) {
			pr_info("fp_goodix: Found\n");
			ret = 0;
			break;
		}
	}

	gf_dev->zlog_client = zlog_register_client(&goodix_zlog_fp_dev);
	if (gf_dev->zlog_client)
		pr_info("fp_goodix: %s zlog_register_goodixfp_client success\n",
			__func__);
	else
		pr_err("fp_goodix: %s zlog_register_goodixfp_client fail\n",
			__func__);

	if (list_entry_is_head(gf_dev, &device_list, device_entry)) {
		pr_info("fp_goodix: No device for minor %d\n", iminor(inode));
	} else {
		gf_dev->ref_count++;
		file->private_data = gf_dev;
		nonseekable_open(inode, file);
		pr_info("fp_goodix: goodix: Succeed to open device. irq = %d\n",
			gf_dev->irq_num);

		if (gf_dev->ref_count == 1) {
			ret = gf_parse_dts(gf_dev);
			if (ret) {
				mutex_unlock(&device_list_lock);
				return ret;
			}

			pr_info("fp_goodix: %s: enter", "irq_setup");
			gf_dev->irq_num = gf_irq_num(gf_dev);
			ret = request_threaded_irq(gf_dev->irq_num, NULL, gf_irq,
						   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
						   "gf", gf_dev);
			if (ret) {
				pr_err("fp_goodix: failed to request IRQ:%d\n", ret);
				gf_cleanup(gf_dev);
				mutex_unlock(&device_list_lock);
				return ret;
			}

			irq_set_irq_wake(gf_dev->irq_num, 1);
			gf_dev->irq_enabled = 1;
		}

		gf_hw_reset(gf_dev, 5);
		ret = 0;
		gf_dev->opened = 1;
	}

	mutex_unlock(&device_list_lock);
	pr_info("fp_goodix: %s: end\n", __func__);
	return ret;
}

static int gf_release(struct inode *inode, struct file *file)
{
	struct gf_dev *gf_dev;

	pr_info("fp_goodix: %s enter!\n", __func__);

	mutex_lock(&device_list_lock);
	gf_dev = file->private_data;
	file->private_data = NULL;
	gf_dev->ref_count--;
	if (gf_dev->ref_count == 0) {
		pr_info("fp_goodix: disble_irq. irq = %d\n", gf_dev->irq_num);
		irq_set_irq_wake(gf_dev->irq_num, 0);

		if (gf_dev->irq_enabled) {
			gf_dev->irq_enabled = 0;
			disable_irq(gf_dev->irq_num);
		} else {
			pr_warn("fp_goodix: IRQ has been disabled.\n");
		}

		free_irq(gf_dev->irq_num, gf_dev);
		gf_cleanup(gf_dev);
		gf_dev->opened = 0;
	}

	if (gf_dev->zlog_client) {
		zlog_unregister_client(gf_dev->zlog_client);
		pr_info("fp_goodix: %s zlog_unregister_client goodix_zlog_fp_dev\n",
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
		pr_info("fp_goodix: %s nav finger up\n", __func__);
		return;
	case 2:
		pr_info("fp_goodix: %s nav finger down\n", __func__);
		return;
	case 3:
		key_code = KEY_UP;
		break;
	case 4:
		pr_info("fp_goodix: %s nav down\n", __func__);
		key_code = KEY_DOWN;
		break;
	case 5:
		pr_info("fp_goodix: %s nav left\n", __func__);
		key_code = KEY_LEFT;
		break;
	case 6:
		pr_info("fp_goodix: %s nav right\n", __func__);
		key_code = KEY_RIGHT;
		break;
	case 7:
		key_code = KEY_VOLUMEDOWN;
		break;
	case 8:
		pr_info("fp_goodix: %s nav heavy\n", __func__);
		key_code = KEY_CHAT;
		break;
	case 9:
		pr_info("fp_goodix: %s nav long press\n", __func__);
		key_code = 0xd9;
		break;
	case 10:
		pr_info("fp_goodix: %s nav double click\n", __func__);
		key_code = KEY_VOLUMEUP;
		break;
	default:
		pr_warn("fp_goodix: %s unknown nav event: %d\n", __func__, action);
		break;
	}

	input_report_key(gf.input_dev, key_code, 1);
	input_sync(gf.input_dev);
	input_report_key(gf.input_dev, key_code, 0);
	input_sync(gf.input_dev);
}



static long gf_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct gf_key_event {
		u32 key;
		u32 value;
	} key_event;
	struct gf_chip_info {
		u8 vendor_id;
		u8 mode;
		u8 operation;
		u8 reserved[5];
	} chip_info;
	u32 nav_event = 0;
	u8 netlink_route = GF_NETLINK_PROTO;
	u32 power_offset;
	int key_code;
	int access_error = 0;
	long ret = 0;

	if ((cmd & 0xFF00) != 0x6700)
		goto err_nodev;

	key_event = (struct gf_key_event){ 0 };
	chip_info = (struct gf_chip_info){ 0 };

	if (_IOC_DIR(cmd) & _IOC_READ)
		access_error = !access_ok((void __user *)arg, _IOC_SIZE(cmd));
	else if (_IOC_DIR(cmd) & _IOC_WRITE)
		access_error = !access_ok((void __user *)arg, _IOC_SIZE(cmd));
	if (access_error)
		goto err_fault;

	if (!gf.opened) {
		power_offset = cmd - 0x6707;
		OPTIMIZER_HIDE_VAR(power_offset);
		if (power_offset > 1) {
			pr_info("fp_goodix: Sensor is power off currently.\n");
			goto err_nodev;
		}
		pr_info("fp_goodix: power cmd\n");
	}

	switch (cmd) {
	case 0x80016700:
		pr_info("fp_goodix: %s GF_IOC_INIT\n", __func__);
		ret = copy_to_user((void __user *)arg, &netlink_route,
				   sizeof(netlink_route)) ? -EFAULT : 0;
		goto out;
	case 0x6701:
		pr_info("fp_goodix: %s GF_IOC_EXIT\n", __func__);
		break;
	case 0x6702:
		pr_info("fp_goodix: %s GF_IOC_RESET\n", __func__);
		gf_hw_reset(&gf, 5);
		break;
	case 0x6703:
		pr_info("fp_goodix: %s GF_IOC_ENABLE_IRQ\n", __func__);
		gf_enable_irq();
		break;
	case 0x6704:
	{
		struct gf_dev *gf_dev = &gf;

		pr_info("fp_goodix: %s GF_IOC_DISABEL_IRQ\n", __func__);
		OPTIMIZER_HIDE_VAR(gf_dev);
		gf_disable_irq(gf_dev);
		break;
	}
	case 0x40046705:
	case 0x6706:
		break;
	case 0x6707:
		pr_info("fp_goodix: %s GF_IOC_ENABLE_POWER\n", __func__);
		if (gf.opened == 1)
			pr_info("fp_goodix: Sensor has already powered-on.\n");
		else
			gf_power_on(&gf);
		gf.opened = 1;
		goto out;
	case 0x6708:
		pr_info("fp_goodix: %s GF_IOC_DISABLE_POWER\n", __func__);
		if (!gf.opened)
			pr_info("fp_goodix: Sensor has already powered-off.\n");
		else
			gf_power_off(&gf);
		gf.opened = 0;
		goto out;
	case 0x670a:
		pr_info("fp_goodix: %s GF_IOC_ENTER_SLEEP_MODE\n", __func__);
		break;
	case 0x8001670b:
		pr_info("fp_goodix: %s GF_IOC_GET_FW_INFO\n", __func__);
		break;
	case 0x670c:
		pr_info("fp_goodix: %s GF_IOC_REMOVE\n", __func__);
		gf_cleanup(&gf);
		break;
	case 0x4004670e:
		pr_info("fp_goodix: %s GF_IOC_NAV_EVENT\n", __func__);
		if (copy_from_user(&nav_event, (void __user *)arg,
				   sizeof(nav_event))) {
			pr_err("fp_goodix: failed to copy nav event from user to kernel\n");
			goto err_fault;
		}
		nav_event_input(nav_event);
		break;
	case 0x40086709:
		if (copy_from_user(&key_event, (void __user *)arg,
				   sizeof(key_event))) {
			pr_err("fp_goodix: failed to copy input key event from user to kernel\n");
			goto err_fault;
		}

		if (key_event.key == 1) {
			key_code = 0x66;
			barrier();
		} else if (key_event.key == 5) {
			key_code = 0xd4;
			barrier();
		} else {
			key_code = key_event.key;
			if (key_event.key == 2)
				key_code = 0x74;
			barrier();
		}

		pr_info("fp_goodix: %s: received key event[%d], key=%d, value=%d\n",
			"gf_kernel_key_input", key_code, key_event.key,
			key_event.value);
		if (key_event.key == 5 || key_event.key == 2) {
			if (key_event.value != 1)
				break;
			input_event(gf.input_dev, EV_KEY, key_code, 1);
			input_event(gf.input_dev, EV_SYN, 0, 0);
			input_event(gf.input_dev, EV_KEY, key_code, 0);
			input_event(gf.input_dev, EV_SYN, 0, 0);
		}
		if (key_event.key == 1) {
			input_event(gf.input_dev, EV_KEY, key_code,
				    key_event.value != 0);
			input_event(gf.input_dev, EV_SYN, 0, 0);
		}
		break;
	case 0x4008670d:
		pr_info("fp_goodix: %s GF_IOC_CHIP_INFO\n", __func__);
		if (copy_from_user(&chip_info, (void __user *)arg,
				   sizeof(chip_info)))
			goto err_fault;
		pr_info("fp_goodix: vendor_id : 0x%x\n", chip_info.vendor_id);
		pr_info("fp_goodix: mode : 0x%x\n", chip_info.mode);
		pr_info("fp_goodix: operation: 0x%x\n", chip_info.operation);
		break;
	default:
		pr_warn("fp_goodix: unsupport cmd:0x%x\n", cmd);
		break;
	}

	ret = 0;
out:
	return ret;

err_fault:
	ret = -EFAULT;
	goto out;

err_nodev:
	ret = -ENODEV;
	goto out;
}

static noinline long gf_compat_ioctl(struct file *file, unsigned int cmd,
				     unsigned long arg)
{
	#ifdef ZTE_FINGERPRINT_HOST_TEST
	return gf_ioctl(file, cmd, arg);
	#else
	return gf_ioctl(file, cmd, (unsigned int)arg);
	#endif
}

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
	struct gf_dev *gf_dev = &gf;
	struct device *dev_node;
	unsigned long minor;
	int ret = 0;

	pr_info("fp_goodix: %s\n", __func__);

	INIT_LIST_HEAD(&gf_dev->device_entry);
	gf_dev->irq_gpio = -EINVAL;
	gf_dev->reset_gpio = -EINVAL;
	gf_dev->reserved_44 = (u32)-EINVAL;
	gf_dev->opened = 0;
	gf_dev->screen_state = 0;
	gf_dev->pdev = pdev;

	gf_dev->screen_state_wq = create_singlethread_workqueue("screen_state_wq");
	if (gf_dev->screen_state_wq) {
		INIT_DELAYED_WORK(&gf_dev->screen_state_work, goodixfp_init_drm_notifier);
		queue_delayed_work(gf_dev->screen_state_wq,
				   &gf_dev->screen_state_work, 1250);
	}

	mutex_lock(&device_list_lock);

	minor = find_first_zero_bit(minors, 32);
	if (minor >= 32) {
		mutex_unlock(&device_list_lock);
		ret = -ENODEV;
		goto err_cleanup;
	}

	gf_dev->devt = MKDEV(SPIDEV_MAJOR, minor);
	dev_node = device_create(gf_class, &gf_dev->pdev->dev, gf_dev->devt,
				 gf_dev, "goodix_fp");
	ret = PTR_ERR_OR_ZERO(dev_node);
	if (ret) {
		gf_dev->devt = 0;
		goto err_cleanup;
	}

	set_bit(minor, minors);
	list_add_tail(&gf_dev->device_entry, &device_list);
	mutex_unlock(&device_list_lock);

	gf_dev->input_dev = input_allocate_device();
	if (!gf_dev->input_dev) {
		pr_err("fp_goodix: %s, failed to allocate input device\n", __func__);
		ret = -ENOMEM;
		goto err_device;
	}

	input_set_capability(gf_dev->input_dev, EV_KEY, 0x66);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x8b);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x9e);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x74);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x67);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x6c);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x6a);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x69);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0xd4);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x72);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0x73);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0xd9);
	input_set_capability(gf_dev->input_dev, EV_KEY, 0xd8);
	gf_dev->input_dev->name = "goodix_fp";

	ret = input_register_device(gf_dev->input_dev);
	if (ret) {
		pr_err("fp_goodix: failed to register input device\n");
		if (gf_dev->input_dev)
			input_free_device(gf_dev->input_dev);
		goto err_device;
	}

	wakeup_source_add(&fp_wakelock);
	pr_info("fp_goodix: version V%d.%d.%02d.%02d\n", 1, 2, 4, 2);
	return ret;

err_device:
	if (gf_dev->devt) {
		pr_info("fp_goodix: Err: status = %d\n", ret);
		mutex_lock(&device_list_lock);
		gf_probe_list_del(&gf_dev->device_entry);
		device_destroy(gf_class, gf_dev->devt);
		clear_bit(MINOR(gf_dev->devt), minors);
		mutex_unlock(&device_list_lock);
	}
err_cleanup:
	gf_cleanup(gf_dev);
	gf_dev->opened = 0;
	return ret;
}

static void gf_remove(struct platform_device *pdev)
{
	pr_info("fp_goodix: %s: gf_remove\n", __func__);

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

	ret = register_chrdev(SPIDEV_MAJOR, "goodix_fp_spi", &gf_fops);
	if (ret < 0) {
		pr_warn("fp_goodix: Failed to register char device!\n");
		return ret;
	}
	SPIDEV_MAJOR = ret;

	gf_class = class_create("goodix_fp");
	if (IS_ERR(gf_class)) {
		unregister_chrdev(SPIDEV_MAJOR, gf_driver.driver.name);
		pr_warn("fp_goodix: Failed to create class.\n");
		return PTR_ERR(gf_class);
	}

	ret = platform_driver_register(&gf_driver);
	if (ret < 0) {
		class_destroy(gf_class);
		unregister_chrdev(SPIDEV_MAJOR, gf_driver.driver.name);
		pr_warn("fp_goodix: Failed to register SPI driver.\n");
	}

	netlink_init();
	pr_info("fp_goodix: status = 0x%x\n", ret);
	return 0;
}

static void __exit zte_fp_exit(void)
{
	netlink_exit();
	platform_driver_unregister(&gf_driver);
	class_destroy(gf_class);
	unregister_chrdev(SPIDEV_MAJOR, gf_driver.driver.name);
}

module_init(zte_fp_init);
module_exit(zte_fp_exit);

MODULE_DESCRIPTION("goodix fingerprint sensor device driver");
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Jiangtao Yi <yijiangtao@goodix.com>");
MODULE_AUTHOR("Jandy Gou <gouqingsong@goodix.com>");
