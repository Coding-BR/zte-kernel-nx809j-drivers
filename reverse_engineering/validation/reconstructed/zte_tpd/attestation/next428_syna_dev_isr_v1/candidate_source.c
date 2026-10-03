irqreturn_t syna_dev_isr(int irq, void *data)
{
	struct syna_tcm *tcm = data;
	struct syna_hw_interface *hw_if = tcm->hw_if;
	u8 event = 0;
	int retval;

	(void)irq;

	if (tcm->pm_resume_wait_bypass != 1 &&
	    tcm->pm_resume_wait_enabled == 1 &&
	    !(int)wait_for_completion_timeout(&tcm->pm_resume_completion, 175)) {
		printk("\0016[info ] "
		       "%s: Bus don't resume from pm(deep),timeout,skip irq",
		       __func__);
		return IRQ_HANDLED;
	}

	if (gpiod_get_raw_value(gpio_to_desc(hw_if->irq_gpio)) !=
	    hw_if->irq_on_state)
		return IRQ_HANDLED;

	tcm->isr_pid = current->pid;
	retval = syna_tcm_get_event_data(tcm->tcm_dev, &event,
					 (struct tcm_buffer *)&tcm->event_data);
	if (retval < 0)
		printk("\0013[error] %s: Fail to get event data\n", __func__);

	return IRQ_HANDLED;
}
