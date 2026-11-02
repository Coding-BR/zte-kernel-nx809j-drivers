int syna_spi_enable_irq(struct tcm_hw_platform *platform, bool enable)
{
	struct syna_hw_interface *hw_if = platform->owner;
	struct syna_hw_attn_data *attn;
	int retval;

	if (!hw_if) {
		printk("\0013[error] %s: Invalid handle of hw_if\n", __func__);
		return -6;
	}

	attn = &hw_if->bdata_attn;
	if (!attn->irq_id)
		return -6;

	mutex_lock(&attn->irq_en_mutex);

	if (!enable)
		goto disable;
	if (__builtin_expect_with_probability(attn->irq_enabled & 1, 1, 0.55)) {
		retval = 0;
		printk("\0016[info ] %s: Interrupt already enabled\n", __func__);
		goto unlock;
	}
	goto enable;

disable:
	if (!__builtin_expect_with_probability(attn->irq_enabled, 1, 0.55))
		goto already_disabled;
	disable_irq_nosync(attn->irq_id);
	attn->irq_enabled = false;
	printk("\0016[info ] %s: Interrupt disabled\n", __func__);
	retval = 1;
	goto unlock;

enable:
	enable_irq(attn->irq_id);
	attn->irq_enabled = true;
	printk("\0016[info ] %s: Interrupt enabled\n", __func__);
	retval = 1;
	goto unlock;

already_disabled:
	retval = 0;
	printk("\0016[info ] %s: Interrupt already disabled\n", __func__);

unlock:
	mutex_unlock(&attn->irq_en_mutex);
	return retval;
}
