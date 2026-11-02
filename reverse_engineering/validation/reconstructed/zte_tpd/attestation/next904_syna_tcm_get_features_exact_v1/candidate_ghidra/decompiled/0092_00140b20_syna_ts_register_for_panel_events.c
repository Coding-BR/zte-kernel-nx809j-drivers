
void syna_ts_register_for_panel_events(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = panel_event_notifier_register(1,0,active_panel,syna_ts_panel_notifier_callback,param_1);
  if (lVar1 == 0) {
    _printk(&DAT_00181dc5,"syna_ts_register_for_panel_events");
    return;
  }
  _printk(&DAT_0018201d,"syna_ts_register_for_panel_events",active_panel);
  return;
}

