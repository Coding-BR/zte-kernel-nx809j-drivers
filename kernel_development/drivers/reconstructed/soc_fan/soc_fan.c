#include <linux/atomic.h>
#include <linux/device.h>
#include <linux/hrtimer.h>
#include <linux/gpio.h>
#include <linux/gpio/consumer.h>
#include <linux/of_gpio.h>
#include <linux/interrupt.h>
#include <linux/kernel.h>
#include <linux/kobject.h>
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/pwm.h>
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

static __used int nb_fan_gpio_proc(long *context)
{
	struct device_node *node;
	int gpio;
	int ret;

	if (context[1] == 0)
		return -ENODEV;

	node = *(struct device_node **)((u8 *)context[0] + 0x2e8);
	gpio = of_get_named_gpio(node, "fan,speed-gpio", 0);
	*(int *)(context[1] + 0x14) = gpio;
	ret = *(volatile int *)(context[1] + 0x14);
	if (ret < 0) {
		printk(KERN_DEBUG "[%s] [%s:%d] Find speed_gpio failed!\n",
		       "NB_FAN", "nb_fan_gpio_proc", 0x343);
		ret = *(int *)(context[1] + 0x14);
	} else {
		ret = gpio_request(ret, "fan_speed_gpio");
		if (ret == 0) {
			gpio = *(int *)(context[1] + 0x14);
			gpio = gpiod_to_irq(gpio_to_desc(gpio));
			*(int *)(context[1] + 0x1c) = gpio;
			ret = request_threaded_irq(
				*(int *)(context[1] + 0x1c),
				fan_speed_irq_proc, NULL, 0x00200002UL,
				"fan_speed_int", context);
			if (ret < 0) {
				printk(KERN_ERR
				       "failed to register speed IRQ handler\n");
			} else {
				disable_irq(*(int *)(context[1] + 0x1c));
				gpio = of_get_named_gpio(
					node, "fan,pwm-gpio", 0);
				*(int *)(context[1] + 0x10) = gpio;
				ret = *(volatile int *)(context[1] + 0x10);
				if (ret < 0) {
					printk(KERN_DEBUG
					       "[%s] [%s:%d] Find pwm_gpio failed!\n",
					       "NB_FAN", "nb_fan_gpio_proc",
					       0x355);
					ret = *(int *)(context[1] + 0x10);
				} else {
					gpio = gpiod_get_raw_value(
						gpio_to_desc(ret));
					printk(KERN_DEBUG
					       "[%s] [%s:%d] pwm gpio status is:%d.",
					       "NB_FAN", "nb_fan_gpio_proc",
					       0x358, gpio);
					ret = 0;
				}
			}
		} else {
			printk(KERN_DEBUG
			       "[%s] [%s:%d] Find speed_gpio=%d requst failed.\n",
			       "NB_FAN", "nb_fan_gpio_proc", 0x348,
			       *(int *)(context[1] + 0x14));
		}
	}
	return ret;
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
static __used ssize_t fan_pwm_store(struct kobject *kobj,
				    struct kobj_attribute *attr,
				    const char *buf, size_t count)
{
	struct pwm_state state;
	u32 pwm_value = 0;
	u8 pwm_pct;
	u8 *chip_base;
	struct pwm_device *pwm;
	struct pwm_chip *pwm_chip;
	const struct pwm_ops *ops;
	u64 state_tail;
	int ret;

	sscanf(buf, "%d", &pwm_value);
	if (pwm_value < 101) {
		mutex_lock((struct mutex *)((u8 *)chip + 0x18));
		chip_base = *(u8 * volatile *)&chip;
		pwm_pct = *(volatile u8 *)&pwm_value;
		pwm = *(struct pwm_device **)(*(u8 **)(chip_base + 0x08) + 0x68);
		pwm_chip = pwm->chip;
		state_tail = *(volatile u64 *)((u8 *)pwm + 0x40);
		ops = *(const struct pwm_ops * volatile *)((u8 *)pwm_chip + 0x390);
		*(u64 *)((u8 *)&state + 0x10) = state_tail;
		state.enabled = true;
		state.period = 40000;
		state.duty_cycle = (u64)pwm_pct * 400;
		ret = ops->apply(pwm_chip, pwm, &state);
		if (ret < 0) {
			printk(KERN_DEBUG
			       "[%s] [%s:%d] Apply PWM state for fan_pwm=%d failed, rc=%d\n",
			       "NB_FAN", "fan_pwm_set", 0xd5, pwm_pct, ret);
		} else if (ret == 0) {
			mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
			printk(KERN_DEBUG "[%s] [%s:%d] set fan_pwm=%d rc=%d.",
			       "NB_FAN", "fan_pwm_store", 0x18c, pwm_value, 0);
			goto return_count;
		}
		mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
		return ret;
	} else {
		printk(KERN_DEBUG
		       "[%s] [%s:%d] pwm=%d,it is a bad pwm,not in(%d-%d).\n",
		       "NB_FAN", "fan_pwm_store", 0x181, pwm_value, 0, 100);
		return -EINVAL;
	}

return_count:
	return count;
}

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
static ssize_t (*const fan_pwm_store_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, const char *, size_t)
	__used = fan_pwm_store;

MODULE_LICENSE("GPL");
