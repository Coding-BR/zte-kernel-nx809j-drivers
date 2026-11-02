int syna_dev_set_screen_on_fp_mode(struct syna_tcm *tcm,
				   unsigned int enable)
{
	int retval;

	printk("\0016[info ] %s: enter", __func__);

	if (!tcm)
		return -EINVAL;

	retval = syna_tcm_set_dynamic_config(tcm->tcm_dev, 0xd4, 3, enable);
	if (retval < 0)
		printk("\0013[error] %s: Fail to set fingerprint gesture mode\n",
		       __func__);
	else
		retval = 0;

	return retval;
}
