typedef int (*syna_tcm_irq_control_fn)(void *transport, int enable);

struct syna_tcm_transport_runtime {
	u8 reserved_0000[0x14];
	u8 flags;
	u8 reserved_0015[0x23];
	syna_tcm_irq_control_fn irq_control;
};

int syna_tcm_wait_for_report(struct tcm_dev *tcm, u8 report_code,
			     struct tcm_buffer *event_data,
			     int poll_interval_ms, unsigned int timeout_ms)
{
	struct syna_tcm_transport_runtime *transport;
	u8 received_code = 0;
	unsigned int elapsed = poll_interval_ms;
	int retval = -241;
	bool irq_was_enabled = true;

	if (!tcm) {
		printk("\0013[error] %s: Invalid tcm device handle\n",
		       "syna_tcm_wait_for_report");
		return -241;
	}

	if (!event_data) {
		printk("\0013[error] %s: Invalid event data buffer\n",
		       "syna_tcm_wait_for_report");
		return -241;
	}

	if (tcm->firmware_mode != 0x01) {
		printk("\0013[error] %s: Device is not in application fw mode, mode: %x\n",
		       "syna_tcm_wait_for_report", tcm->firmware_mode);
		return -241;
	}

	transport = (struct syna_tcm_transport_runtime *)tcm->transport;
	if (transport->flags == 0x01 && transport->irq_control) {
		mutex_lock((struct mutex *)tcm->reserved_0050);
		irq_was_enabled = transport->irq_control(transport, 0) < 1;
		mutex_unlock((struct mutex *)tcm->reserved_0050);
	}

	do {
		if (poll_interval_ms > 0)
			msleep((unsigned int)poll_interval_ms);

		retval = syna_tcm_get_event_data(tcm, &received_code, event_data);
		if (retval >= 0 && received_code == report_code &&
		    event_data->data_length)
			break;

		if (elapsed >= timeout_ms)
			break;

		elapsed += poll_interval_ms;
	} while (true);

	transport = (struct syna_tcm_transport_runtime *)tcm->transport;
	if (!irq_was_enabled && (transport->flags & 0x01) &&
	    transport->irq_control) {
		mutex_lock((struct mutex *)tcm->reserved_0050);
		transport->irq_control(transport, 1);
		mutex_unlock((struct mutex *)tcm->reserved_0050);
	}

	if (elapsed >= timeout_ms &&
	    (received_code != report_code || !event_data->data_length))
		return -244;

	return retval;
}
