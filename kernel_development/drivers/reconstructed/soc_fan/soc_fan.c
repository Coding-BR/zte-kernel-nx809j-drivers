#include <linux/atomic.h>
#include <linux/device.h>
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

MODULE_LICENSE("GPL");
