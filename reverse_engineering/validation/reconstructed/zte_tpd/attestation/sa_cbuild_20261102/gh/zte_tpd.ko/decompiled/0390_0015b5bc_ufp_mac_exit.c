
void ufp_mac_exit(void)

{
  cancel_delayed_work_sync(&DAT_0015fae8);
  __flush_workqueue(DAT_0015fb50);
  destroy_workqueue(DAT_0015fb50);
  wakeup_source_remove(tp_wakeup);
  ufp_tp_ops = 0;
  return;
}

