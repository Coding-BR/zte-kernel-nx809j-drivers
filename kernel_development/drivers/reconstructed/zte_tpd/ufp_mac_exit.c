void ufp_mac_exit(void)
{
	cancel_delayed_work_sync(
		(struct delayed_work *)&ufp_tp_ops.single_tap_work);
	_flush_workqueue(ufp_tp_ops.single_tap_work.wq);
	destroy_workqueue(ufp_tp_ops.single_tap_work.wq);
	wakeup_source_remove(&tp_wakeup);
	ufp_tp_ops.pdev = NULL;
}
