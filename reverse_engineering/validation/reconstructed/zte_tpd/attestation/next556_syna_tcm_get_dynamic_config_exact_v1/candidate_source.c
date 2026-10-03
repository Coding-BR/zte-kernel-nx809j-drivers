int syna_tcm_get_dynamic_config(struct tcm_dev *tcm, u8 config_id,
				u16 *value, unsigned int delay_ms)
{
	u8 payload;
	int retval;

	if (!tcm) {
		printk("\x01" "3[error] %s: Invalid tcm device handle\n",
		       "syna_tcm_get_dynamic_config");
		return -241;
	}
	if (tcm->firmware_mode != 0x01) {
		printk("\x01" "3[error] %s: Device is not in application fw mode, mode: %x\n",
		       "syna_tcm_get_dynamic_config", tcm->firmware_mode);
		return -241;
	}

	if (!delay_ms) {
		if (!(tcm->transport->flags & 0x01)) {
			delay_ms = tcm->command_delay_ms;
			printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
			       "syna_tcm_get_dynamic_config");
		} else {
			delay_ms = 0;
		}
	}

	payload = config_id;
	retval = tcm->write_message(tcm, 0x23, &payload, 1, NULL, delay_ms);
	if (retval < 0) {
		printk("\x01" "3[error] %s: Fail to send command 0x%02x to get dynamic field 0x%x\n",
		       "syna_tcm_get_dynamic_config", 0x23, config_id);
		return retval;
	}

	if (tcm->response.data_length < sizeof(*value)) {
		printk("\x01" "3[error] %s: Invalid resp data size, %d\n",
		       "syna_tcm_get_dynamic_config",
		       tcm->response.data_length);
		return retval;
	}

	*value = *(u16 *)tcm->response.data;
	return 0;
}
