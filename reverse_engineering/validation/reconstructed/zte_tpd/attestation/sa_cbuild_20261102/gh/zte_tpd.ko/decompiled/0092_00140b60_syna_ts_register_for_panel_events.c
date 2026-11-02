
void syna_ts_register_for_panel_events(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = panel_event_notifier_register(1,0,active_panel,syna_ts_panel_notifier_callback,param_1);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181e05,"syna_ts_register_for_panel_events");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0018205d,"syna_ts_register_for_panel_events",active_panel);
}

