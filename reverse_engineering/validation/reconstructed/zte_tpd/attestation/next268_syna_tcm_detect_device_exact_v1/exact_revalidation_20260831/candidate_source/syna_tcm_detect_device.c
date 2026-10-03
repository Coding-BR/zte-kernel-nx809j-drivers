extern int syna_tcm_v1_detect(struct tcm_dev *tcm_dev, bool quick_setup,
			      bool reinit);

int syna_tcm_detect_device(struct tcm_dev *tcm_dev, unsigned int protocol,
			   bool reinit)
{
	int retval;
	u8 *response;

	if (!tcm_dev) {
		printk("\0013[error] %s: Invalid tcm device handle\n", __func__);
		return -241;
	}

	tcm_dev->detection_state = 0;

	switch (protocol & 0x0f) {
	case 1:
		retval = syna_tcm_v1_detect(tcm_dev, (protocol >> 7) & 1,
					    reinit & 1);
		if (retval < 0) {
			if (tcm_dev->message_buf.buf_size) {
				response = tcm_dev->message_buf.data;
				printk("\0013[error] %s: Fail to detect TouchComm v1 device, %02x %02x %02x %02x ...\n",
				       __func__, response[0], response[1],
				       response[2], response[3]);
			}
			return -245;
		}

		if (!tcm_dev->write_message || !tcm_dev->read_message) {
			printk("\0013[error] %s: Invalid TouchCom R/W operations\n",
			       __func__);
			printk("\0013[error] %s: Fail to allocate the handler for TouchComm device\n",
			       __func__);
			return -245;
		}

		if (protocol & 0x80)
			return 1;

		if (tcm_dev->firmware_mode == 11)
			goto bootloader;
		if (tcm_dev->firmware_mode != 1)
			goto unknown_mode;

		printk("\0016[info ] %s: Device in Application FW, build id: %d, %s\n",
		       __func__, tcm_dev->build_id,
		       tcm_dev->identification_info.part_number);
		goto detected;

	bootloader:
		printk("\0016[info ] %s: Device in Bootloader\n", __func__);
		goto detected;

	unknown_mode:
		printk("\0014[warn ] %s: Found TouchCom device, but unknown mode:0x%02x detected\n",
		       __func__, tcm_dev->firmware_mode);

	detected:
		barrier();
		return tcm_dev->firmware_mode;

	case 2:
		printk("\0013[error] %s: Implementations of Touchcomm v%d is not built in\n",
		       __func__, 2);
		return -241;

	default:
		printk("\0013[error] %s: Invalid version of TouchComm protocol\n",
		       __func__);
		return -241;
	}
}
