/* Stock KCFI tag 0x73fc0d79: int (struct ztp_device *). */
typedef int (*tpd_ghost_reset_callback_t)(struct ztp_device *cdev);

void tp_ghost_check_work(struct work_struct *work)
{
	char *cdev = (char *)(unsigned long)tpd_cdev;
	int ghost_rst_num;
	tpd_ghost_reset_callback_t reset_callback;

	(void)work;
	if (tp_ghost_check() & 1) {
		printk("\0015tpd: may be ghost point");
		ghost_rst_num = *(int *)(cdev + 0x4a8);
#ifdef __aarch64__
		if (ghost_rst_num > 2)
			goto ghost_reset_limit;
#else
		if (ghost_rst_num > 2)
			goto ghost_reset_limit;
#endif
		reset_callback = *(tpd_ghost_reset_callback_t *)(cdev + 0xff0);
		if (reset_callback)
			goto ghost_reset_callback;
		*(int *)(cdev + 0x4a8) = ghost_rst_num + 1;
		goto ghost_reset_done;

ghost_reset_limit:
		printk("\0015tpd: ghost_rst_num has already exceeded 3 times, skip");
		goto ghost_reset_done;

ghost_reset_callback:
		reset_callback((struct ztp_device *)cdev);
		printk("\0015tpd: ghost check reset, ghost_rst_num = %d",
		       *(int *)(cdev + 0x4a8) + 1);
		ghost_rst_num = *(int *)(cdev + 0x4a8);
		*(int *)(cdev + 0x4a8) = ghost_rst_num + 1;

ghost_reset_done:
		;
	}
	ghost_check_reset();
	*(u8 *)(cdev + 0x488) = 0;
}
