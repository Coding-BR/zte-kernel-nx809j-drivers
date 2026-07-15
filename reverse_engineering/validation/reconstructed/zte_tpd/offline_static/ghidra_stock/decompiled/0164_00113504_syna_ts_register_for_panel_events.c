
void syna_ts_register_for_panel_events(long param_1)

{
  long lVar1;
  
  lVar1 = panel_event_notifier_register(1,0,active_panel,syna_ts_panel_notifier_callback,param_1);
  if (lVar1 == 0) {
    _printk(&DAT_0013b0ff,"syna_ts_register_for_panel_events");
  }
  else {
    _printk(&DAT_0013b6f8,"syna_ts_register_for_panel_events",active_panel);
    *(long *)(param_1 + 0x550) = lVar1;
  }
  return;
}

