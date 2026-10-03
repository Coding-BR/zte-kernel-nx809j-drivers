static int syna_tcm_run_application_fw(struct tcm_dev *tcm,
				       unsigned int delay_ms)
{
	int retval;

	if (tcm->firmware_mode == 0x01)
		return 0;

	if (!delay_ms &&
	    __builtin_expect_with_probability(
		    !(tcm->transport->flags & 0x01), 0, 0.51)) {
		delay_ms = tcm->timing_01e8;
		printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
		       __func__);
	}

	retval = tcm->write_message(tcm, 0x14, NULL, 0, NULL, delay_ms);
	if (retval < 0) {
		printk("\x01" "3[error] %s: Fail to send command 0x%02x\n",
		       __func__, 0x14);
	} else if (tcm->firmware_mode == 0x01) {
		printk("\x01" "6[info ] %s: Application Firmware (mode 0x%x) activated\n",
		       __func__, tcm->firmware_mode);
		return 0;
	} else {
		printk("\x01" "4[warn ] %s: Fail to enter application fw, mode: %x\n",
		       __func__, tcm->firmware_mode);
		retval = -242;
	}

	printk("\x01" "3[error] %s: Fail to switch to application mode\n",
	       "syna_tcm_switch_fw_mode");
	return retval;
}

static int syna_tcm_run_bootloader_fw(struct tcm_dev *tcm,
				      unsigned int delay_ms)
{
	int retval;

	if (tcm->firmware_mode == 0x0b)
		return 0;

	if (!delay_ms &&
	    __builtin_expect_with_probability(
		    !(tcm->transport->flags & 0x01), 0, 0.51)) {
		delay_ms = tcm->timing_01e8;
		printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
		       __func__);
	}

	retval = tcm->write_message(tcm, 0x1f, NULL, 0, NULL, delay_ms);
	if (retval < 0) {
		printk("\x01" "3[error] %s: Fail to send command 0x%02x\n",
		       __func__, 0x1f);
	} else if (tcm->firmware_mode == 0x0b) {
		printk("\x01" "6[info ] %s: Bootloader Firmware (mode 0x%x) activated\n",
		       __func__, tcm->firmware_mode);
		return 0;
	} else {
		printk("\x01" "3[error] %s: Fail to enter bootloader, mode: %x\n",
		       __func__, tcm->firmware_mode);
		retval = -242;
	}

	printk("\x01" "3[error] %s: Fail to switch to bootloader mode\n",
	       "syna_tcm_switch_fw_mode");
	return retval;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
			    unsigned int delay_ms)
{
	tcm_check_max_rw_size_fn check_max_rw_size;
	int retval;

	if (!tcm) {
		printk("\x01" "3[error] %s: Invalid tcm device handle\n",
		       __func__);
		return -241;
	}

	if (delay_ms) {
		if (delay_ms < tcm->timing_01e8)
			delay_ms = tcm->timing_01e8;
	} else if (tcm->transport->flags & 0x01) {
		delay_ms = 0;
	} else {
		delay_ms = tcm->timing_01e8;
		printk("\x01" "5[info ] %s: No support of ATTN, use polling mode instead\n",
		       __func__);
	}

	switch (mode) {
	case 0x01:
		retval = syna_tcm_run_application_fw(tcm, delay_ms);
		break;
	case 0x0b:
		retval = syna_tcm_run_bootloader_fw(tcm, delay_ms);
		break;
	default:
		printk("\x01" "3[error] %s: Invalid firmware mode requested\n",
		       __func__);
		return -241;
	}
	if (retval < 0)
		return retval;

	check_max_rw_size = tcm->check_max_rw_size;
	if (check_max_rw_size)
		check_max_rw_size(tcm);
	return 0;
}
