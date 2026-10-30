/* SPDX-License-Identifier: GPL-2.0-only */

#define TCM_MODE_APPLICATION_FIRMWARE 1
#define TCM_CMD_REZERO 0x27
#define TCM_STATUS_INVALID -241

int syna_tcm_rezero(struct tcm_dev *tcm, unsigned int delay_ms)
{
	int result;

	if (!tcm) {
		printk("\x01" "3[error] %s: Invalid tcm device handle\n",
		       "syna_tcm_rezero");
		return TCM_STATUS_INVALID;
	}
	if (tcm->firmware_mode != TCM_MODE_APPLICATION_FIRMWARE) {
		printk("\x01" "3[error] %s: Device is not in application fw mode, mode: %x\n",
		       "syna_tcm_rezero", tcm->firmware_mode);
		return TCM_STATUS_INVALID;
	}

	if (!delay_ms) {
		if (!(tcm->transport->flags & BIT(0))) {
			delay_ms = tcm->command_delay_ms;
			printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
			       "syna_tcm_rezero");
		} else {
			delay_ms = 0;
		}
	}

	result = tcm->write_message(tcm, TCM_CMD_REZERO, NULL, 0, NULL,
				    delay_ms);
	if (result < 0) {
		printk("\x01" "3[error] %s: Fail to send command 0x%02x\n",
		       "syna_tcm_rezero", TCM_CMD_REZERO);
		return result;
	}

	return 0;
}
