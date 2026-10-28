#include <linux/atomic.h>
#include <linux/device.h>
#include <linux/hrtimer.h>
#include <linux/interrupt.h>
#include <linux/kernel.h>
#include <linux/kobject.h>
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/printk.h>
#include <linux/sysfs.h>
#include <linux/types.h>

/* The stock ELF exports this module-global pointer as an 8-byte BSS object. */
void *chip;

/* Layout scaffolding; the driver's fields and sysfs table are still pending. */
static struct platform_driver nubia_fan_driver
	__used __attribute__((section(".data"))) = {};
static struct attribute_group chip_attr_group
	__used __attribute__((section(".data"))) = {};

/* Count fan tachometer interrupts through the stock atomic counter. */
static __used irqreturn_t fan_speed_irq_proc(int irq, void *dev_id)
{
	atomic_t *speed_count =
		(atomic_t *)(*(u8 **)((u8 *)dev_id + 0x08) + 0x04);

	/* The arm64 atomic primitive supplies the stock prefetch hint. */
	atomic_inc(speed_count);
	return IRQ_HANDLED;
}

struct nb_fan_remove_context {
	struct device *dev;
	u64 reserved_08;
	struct kobject *sysfs_kobj;
};

static __used void nb_fan_remove(struct platform_device *pdev)
{
	struct nb_fan_remove_context *context = platform_get_drvdata(pdev);

	sysfs_remove_group(context->sysfs_kobj, &chip_attr_group);
	dev_set_drvdata(context->dev, NULL);
}

__used void __exit cleanup_module(void)
{
	platform_driver_unregister(&nubia_fan_driver);
}

__used int __init init_module(void)
{
	return __platform_driver_register(&nubia_fan_driver, THIS_MODULE);
}

static __used enum hrtimer_restart fan_hrtimer_hander(struct hrtimer *timer)
{
	u8 *state = *(u8 **)((u8 *)chip + 0x08);

	if (state[0x02] == 0x02)
		goto stop_calculation;
	if (state[0x02] == 0x01)
		goto start_calculation;
	return HRTIMER_NORESTART;

start_calculation:
	*(u32 *)(state + 0x04) = 0;
	(*(u8 **)((u8 *)chip + 0x08))[0x02] = 0x02;
	hrtimer_start_range_ns(
		(struct hrtimer *)(*(u8 **)((u8 *)chip + 0x08) + 0x28),
		500000000, 0, HRTIMER_MODE_REL);
	enable_irq(*(int *)(*(u8 **)((u8 *)chip + 0x08) + 0x1c));
	printk(KERN_DEBUG "[%s] [%s:%d] fan_level=%d start calculate, count=%d.",
	       "NB_FAN", "fan_hrtimer_hander", 0x82,
	       (*(u8 **)((u8 *)chip + 0x08))[0],
	       *(u32 *)(*(u8 **)((u8 *)chip + 0x08) + 0x04));
	return HRTIMER_RESTART;

stop_calculation:
	state[0x02] = 0x03;
	u8 *root = (u8 *)chip;
	u8 *stop_state = *(u8 **)(root + 0x08);
	*(u32 *)(stop_state + 0x08) = *(u32 *)(stop_state + 0x04);
	disable_irq_nosync(
		*(int *)(*(u8 **)(root + 0x08) + 0x1c));
	printk(KERN_DEBUG "[%s] [%s:%d] fan_level=%d stop calculate, count=%d.",
	       "NB_FAN", "fan_hrtimer_hander", 0x89,
	       (*(u8 **)((u8 *)chip + 0x08))[0],
	       *(u32 *)(*(u8 **)((u8 *)chip + 0x08) + 0x04));
	return HRTIMER_NORESTART;
}

/*
 * The recovered sysfs read callback logs the stock source line and returns the
 * enable byte at chip+0x08+0x0c as decimal text.
 */
static __used ssize_t fan_enable_show(struct kobject *kobj,
				      struct kobj_attribute *attr, char *buf)
{
	printk(KERN_DEBUG "[%s] [%s:%d] fan_enable=%d.\n",
	       "NB_FAN", "fan_enable_show", 0x130,
	       (*(u8 **)((u8 *)chip + 0x08))[0x0c]);
	return sprintf(buf, "%d\n",
		       (*(u8 **)((u8 *)chip + 0x08))[0x0c]);
}

/*
 * Keep the observed byte offsets explicit until the original structure type is
 * independently recovered. The state pointer is at chip+0x08; its active
 * flag is at +0x0c, selecting current (+0x00) or pending (+0x01) level.
 */
static __used ssize_t fan_level_show(struct kobject *kobj,
				     struct kobj_attribute *attr, char *buf)
{
	u8 *fan_state = *(u8 **)((u8 *)chip + 0x08);
	u8 level_index = fan_state[0x0c] ^ 1;

	return sprintf(buf, "%d\n", fan_state[level_index]);
}

/* Preserve the stock sysfs show callback ABI while the actual attribute table
 * is still pending reconstruction. Replace these anchors with that table. */
static ssize_t (*const fan_enable_show_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, char *) __used = fan_enable_show;
static ssize_t (*const fan_level_show_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, char *) __used = fan_level_show;
static irqreturn_t (*const fan_speed_irq_proc_kcfi_anchor)(int, void *)
	__used = fan_speed_irq_proc;
static void (*const nb_fan_remove_kcfi_anchor)(struct platform_device *)
	__used = nb_fan_remove;
static void (*const cleanup_module_kcfi_anchor)(void) __used = cleanup_module;
static int (*const init_module_kcfi_anchor)(void) __used = init_module;
static enum hrtimer_restart (*const fan_hrtimer_hander_kcfi_anchor)(
	struct hrtimer *) __used = fan_hrtimer_hander;

MODULE_LICENSE("GPL");
