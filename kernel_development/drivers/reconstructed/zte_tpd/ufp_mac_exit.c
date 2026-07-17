void ufp_mac_exit(void)
{
  cancel_delayed_work_sync(&qword_31430);
  _flush_workqueue(qword_31498);
  destroy_workqueue(qword_31498);
  wakeup_source_remove(&tp_wakeup);
  ufp_tp_ops.pdev = NULL;
}
