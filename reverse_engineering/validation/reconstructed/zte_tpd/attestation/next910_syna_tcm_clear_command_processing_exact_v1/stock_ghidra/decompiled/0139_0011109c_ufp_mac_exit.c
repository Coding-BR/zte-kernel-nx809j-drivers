
void ufp_mac_exit(void)

{
  cancel_delayed_work_sync(&DAT_00131bb0);
  __flush_workqueue(DAT_00131c18);
  destroy_workqueue(DAT_00131c18);
  wakeup_source_remove(tp_wakeup);
  ufp_tp_ops = 0;
  return;
}

