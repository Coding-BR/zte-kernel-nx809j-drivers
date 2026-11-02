int syna_tcm_enable_report(struct tcm_dev *tcm, u8 report_code,
			   bool enable, unsigned int delay_ms)
{
	u8 command;
	u8 payload = report_code;
	int retval;

	if (!tcm) {
		printk("\x01" "3[error] %s: Invalid tcm device handle\n",
		       "syna_tcm_enable_report");
		return -241;
	}
	if (tcm->firmware_mode != 0x01) {
		printk("\x01" "3[error] %s: Device is not in application fw mode, mode: %x\n",
		       "syna_tcm_enable_report", tcm->firmware_mode);
		return -241;
	}

	if (!delay_ms) {
		if (!(tcm->transport->flags & 0x01)) {
			delay_ms = tcm->command_delay_ms;
			printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
			       "syna_tcm_enable_report");
		} else {
			delay_ms = 0;
		}
	}

	command = enable ? 0x05 : 0x06;
	retval = tcm->write_message(tcm, command, &payload, 1, NULL, delay_ms);
	if (retval < 0)
		printk("\x01" "3[error] %s: Fail to send command 0x%02x to %s 0x%02x report\n",
		       "syna_tcm_enable_report", command,
		       enable ? "enable" : "disable", payload);

	return retval;
}
