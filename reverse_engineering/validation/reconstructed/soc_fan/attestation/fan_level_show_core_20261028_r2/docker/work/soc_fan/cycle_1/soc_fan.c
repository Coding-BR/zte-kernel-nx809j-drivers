#include <linux/kernel.h>
#include <linux/kobject.h>
#include <linux/module.h>
#include <linux/types.h>

/* The stock ELF exports this module-global pointer as an 8-byte BSS object. */
void *chip;

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

/* Preserve the stock callback ABI while its containing attribute is pending. */
static ssize_t (*const fan_level_show_kcfi_anchor)(
	struct kobject *, struct kobj_attribute *, char *) __used = fan_level_show;

MODULE_LICENSE("GPL");
