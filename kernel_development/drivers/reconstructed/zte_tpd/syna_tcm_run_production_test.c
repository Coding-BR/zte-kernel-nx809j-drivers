int syna_tcm_run_production_test(struct tcm_dev *tcm_dev,
				 unsigned char test_code,
				 struct tcm_buffer *test_data,
				 unsigned int response_mode)
{
	unsigned char payload[4] __attribute__((uninitialized));
	int retval;

	if (!tcm_dev) {
		printk("\0013[error] %s: Invalid tcm device handle\n", __func__);
		return -241;
	}

	if (tcm_dev->firmware_mode != 1) {
		printk("\0013[error] %s: Device is not in application fw mode, mode: %x\n",
		       __func__, tcm_dev->firmware_mode);
		return -241;
	}

	if (!response_mode) {
		if (tcm_dev->transport->flags & 1) {
			response_mode = 0;
		} else {
			response_mode = tcm_dev->command_delay_ms;
			printk("\0015[info ] %s: No support of IRQ control, use polling mode instead\n",
			       __func__);
		}
	}

	payload[0] = test_code;
	retval = tcm_dev->write_message(tcm_dev, 42, payload, 1, NULL,
					response_mode);
	if (retval < 0) {
		printk("\0013[error] %s: Fail to run production test PID%02X (command 0x%02X)\n",
		       __func__, payload[0], 42);
		return retval;
	}

	if (!test_data)
		return retval;

	retval = syna_tcm_buf_copy_2(test_data, &tcm_dev->resp_buf);
	if (retval < 0) {
		printk("\0013[error] %s: Fail to copy testing data\n", __func__);
		return retval;
	}

	return 0;
}
