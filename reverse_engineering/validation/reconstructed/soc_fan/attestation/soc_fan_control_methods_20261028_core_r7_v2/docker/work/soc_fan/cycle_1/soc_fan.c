#include <linux/atomic.h>
#include <linux/device.h>
#include <linux/delay.h>
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
#include <linux/regulator/consumer.h>
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

static __used int fan_level_set(u8 *fan_state, u8 level);

/* Enable or disable the fan, then apply or defer the selected level. */
static __used ssize_t fan_enable_store(struct kobject *kobj,
				      struct kobj_attribute *attr,
				      const char *buf, size_t count)
{
	ssize_t result = count;
	int enable = 0;
	u8 *chip_base;
	u8 *fan_state;

	sscanf(buf, "%d", &enable);
	chip_base = (u8 *)chip;
	if (*(bool *)(*(u8 **)((u8 *)chip + 0x08) + 0x0c) ==
	    (enable != 0)) {
		printk(KERN_DEBUG "[%s] [%s:%d] fan have been enabled!",
		       "NB_FAN", "fan_enable_store", 0x13f);
		goto fan_enable_return;
	}

	*(bool *)(*(u8 **)((u8 *)chip + 0x08) + 0x0c) = enable != 0;
	printk(KERN_DEBUG "[%s] [%s:%d] fan_enable=%d\n",
	       "NB_FAN", "fan_enable_store", 0x143,
	       *(u8 *)(*(u8 **)(chip_base + 0x08) + 0x0c));
	mutex_lock((struct mutex *)((u8 *)chip + 0x18));
	fan_state = *(u8 **)((u8 *)chip + 0x08);
	if (__builtin_expect_with_probability((fan_state[0x0c] & 1) != 0,
					      1, 0.6)) {
		if (unlikely(fan_state[1] == 0))
			goto fan_enable_unlock;

		fan_level_set(fan_state, fan_state[1]);
		printk(KERN_DEBUG
		       "[%s] [%s:%d] fan enabled,back fan level:%d to run.\n",
		       "NB_FAN", "fan_enable_store", 0x14c,
		       *(u8 *)(*(u8 **)((u8 *)chip + 0x08) + 0x01));
		*(u8 *)(*(u8 **)((u8 *)chip + 0x08) + 0x01) = 0;
	} else {
		fan_state[1] = fan_state[0];
		fan_level_set(*(u8 **)((u8 *)chip + 0x08), 0);
	}

fan_enable_unlock:
	mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
fan_enable_return:
	return result;
}

/* Recover the PWM, GPIO and regulator side effects for a fan-level change. */
static __used int fan_level_set(u8 *fan_state, u8 level)
{
	struct regulator *vdd_fan = *(struct regulator **)((u8 *)chip + 0x48);
	struct pwm_state pwm_state;
	u64 state_tail;
	bool pwm_enabled;
	u32 pwm_duty;
	struct pwm_device *state_pwm;
	int gpio_num;
	u8 *chip_value;
	u8 *chip_state;
	register u64 pwm_period asm("x9");
	int gpio_value;
	int ret;

	if (fan_state[0] == level) {
		printk(KERN_DEBUG "[%s] [%s:%d] fan have in level=%d.\n",
		       "NB_FAN", "fan_level_set", 0x94, level);
		return 0;
	}

	if (level == 0) {
		if (vdd_fan && regulator_is_enabled(vdd_fan)) {
			ret = regulator_disable(vdd_fan);
			printk(KERN_DEBUG
			       "[%s] [%s:%d] NB_FAN: close fan power!ret=%d.\n",
			       "NB_FAN", "nb_fan_power_set", 0xe5, ret);
		}
	} else if (vdd_fan && !regulator_is_enabled(vdd_fan)) {
		ret = regulator_enable(vdd_fan);
		msleep(10);
		printk(KERN_DEBUG
		       "[%s] [%s:%d] NB_FAN: open fan power!ret=%d.\n",
		       "NB_FAN", "nb_fan_power_set", 0xed, ret);
	}

	/* Keep the stock Clang load/store schedule around the PWM state. */
	/* Empty barriers emit no instructions; the x9 immediate matches stock. */
	state_pwm = *(struct pwm_device **)(fan_state + 0x68);
	asm volatile("" : "+r" (state_pwm) : : "memory");
	pwm_duty = level * 8000;
	pwm_enabled = level != 0;
	asm volatile("" : : "r" (pwm_enabled));
	state_tail = *(u64 *)((u8 *)state_pwm + 0x40);
	pwm_state.duty_cycle = pwm_duty;
	*(u64 *)((u8 *)&pwm_state + 0x10) = state_tail;
	asm volatile("" : : : "memory");
	chip_value = (u8 *)chip;
	asm volatile("" : "+r" (chip_value) : : "memory");
	asm volatile("mov w9, #40000" : "=r" (pwm_period)
		     : "r" (chip_value));
	pwm_state.enabled = pwm_enabled;
	chip_state = *(u8 **)(chip_value + 0x08);
	*(volatile u64 *)((u8 *)&pwm_state) = pwm_period;
	gpio_num = *(int *)(chip_state + 0x10);
	gpio_value = gpiod_get_raw_value(gpio_to_desc(gpio_num));
	if (level == 5) {
		if (gpio_value == 1)
			gpiod_direction_output_raw(
				gpio_to_desc(*(int *)(*(u8 **)((u8 *)chip + 0x08) + 0x10)), 0);
		struct pwm_device *level_pwm =
			*(struct pwm_device **)(fan_state + 0x68);
		u64 idle_tail = *(volatile u64 *)((u8 *)level_pwm + 0x40);
		u32 idle_polarity = *(volatile u32 *)((u8 *)level_pwm + 0x28);
		u64 idle_period = *(volatile u64 *)((u8 *)level_pwm + 0x20);
		*(u64 *)((u8 *)&pwm_state + 0x08) = 0;
		*(u64 *)((u8 *)&pwm_state + 0x10) = idle_tail;
		pwm_state.polarity = idle_polarity;
		*(volatile u64 *)((u8 *)&pwm_state) = idle_period;
		*(u16 *)((u8 *)&pwm_state + 0x14) = 0;
	} else if (gpio_value == 0) {
		gpiod_direction_output_raw(
			gpio_to_desc(*(int *)(*(u8 **)((u8 *)chip + 0x08) + 0x10)), 1);
	}

	{
		struct pwm_device *pwm = *(
			struct pwm_device **)(fan_state + 0x68);
		struct pwm_chip *pwm_chip = pwm->chip;
		ret = pwm_chip->ops->apply(pwm_chip, pwm, &pwm_state);
	}
	if (ret < 0) {
		printk(KERN_DEBUG
		       "[%s] [%s:%d] Apply PWM state for fan_level=%d failed, rc=%d\n",
		       "NB_FAN", "fan_level_set", 0xbf, level, ret);
	} else {
		fan_state[0] = level;
	}
	return ret;
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

/*
 * A disabled fan stores the requested level for the next enable operation.
 * When enabled, the update is serialized with the chip mutex and delegated
 * to fan_level_set.
 */
static __used ssize_t fan_level_store(struct kobject *kobj,
				      struct kobj_attribute *attr,
				      const char *buf, size_t count)
{
	ssize_t result = count;
	u32 level = 0;
	u8 *fan_state;
	int ret;

	sscanf(buf, "%d", &level);
	if (level >= 6) {
		printk(KERN_DEBUG
		       "[%s] [%s:%d] level=%d,it is a bad level,not in(%d-%d).\n",
		       "NB_FAN", "fan_level_store", 0x165, level, 0, 5);
		result = -EINVAL;
	} else {
		fan_state = *(u8 **)((u8 *)chip + 0x08);
		if ((fan_state[0x0c] & 1) == 0) {
			fan_state[1] = (u8)level;
			printk(KERN_DEBUG
			       "[%s] [%s:%d] Fan is disabled, just run this level:%d after fan enabled.",
			       "NB_FAN", "fan_level_store", 0x16b, level);
		} else {
			mutex_lock((struct mutex *)((u8 *)chip + 0x18));
			ret = fan_level_set(
				*(u8 **)((u8 *)chip + 0x08), level);
			mutex_unlock((struct mutex *)((u8 *)chip + 0x18));
			if (ret == 0) {
				printk(KERN_DEBUG
				       "[%s] [%s:%d] set fan_level=%d rc=%d.",
				       "NB_FAN", "fan_level_store", 0x175,
				       level, 0);
			} else {
				result = ret;
			}
		}
	}
	return result;
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
static ssize_t (*const fan_level_store_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, const char *, size_t)
	__used = fan_level_store;
static ssize_t (*const fan_enable_store_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, const char *, size_t)
	__used = fan_enable_store;

MODULE_LICENSE("GPL");
