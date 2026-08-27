void ufp_single_tap_work(struct work_struct *work)
{
	(void)work;
	ufp_tp_ops.single_tap_pending = 0;
}
