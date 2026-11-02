__poll_t syna_poll(struct file *file, struct poll_table_struct *wait)
{
	struct syna_tcm *tcm = file->private_data;

	poll_wait(file, &tcm->frame_wait, wait);

	return tcm->frame_available ? POLLIN | POLLRDNORM : 0;
}
