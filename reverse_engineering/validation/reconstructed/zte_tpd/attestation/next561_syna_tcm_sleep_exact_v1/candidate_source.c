int syna_tcm_sleep(struct tcm_dev *tcm, bool enable,
		   unsigned int delay_ms)
{
	u8 command;
	int retval;

	if (!tcm) {
		printk("\x01" "3[error] %s: Invalid tcm device handle\n",
		       "syna_tcm_sleep");
		return -241;
	}

	if (!delay_ms) {
		if (!(tcm->transport->flags & 0x01)) {
			delay_ms = tcm->command_delay_ms;
			printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
			       "syna_tcm_sleep");
		} else {
			delay_ms = 0;
		}
	}

	command = enable ? 0x2c : 0x2d;
	retval = tcm->write_message(tcm, command, NULL, 0, NULL, delay_ms);
	if (retval < 0) {
		printk("\x01" "3[error] %s: Fail to send command 0x%x\n",
		       "syna_tcm_sleep", command);
		return retval;
	}

	return 0;
}
