
void syna_ts_panel_notifier_callback(undefined8 param_1,int *param_2)

{
  int iVar1;
  undefined *puVar2;
  
  if (param_2 == (int *)0x0) {
    puVar2 = &DAT_0013274c;
  }
  else {
    iVar1 = *param_2;
    if (2 < iVar1) {
      if (iVar1 == 3) {
        panel_enter_low_power = 1;
        ufp_notifier_cb(1);
        ufp_report_lcd_state();
        return;
      }
      if (iVar1 == 4) {
        return;
      }
LAB_00114990:
      _printk(&DAT_0013d340,iVar1);
      return;
    }
    if (iVar1 == 1) {
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = '\0';
        ufp_notifier_cb(0);
        _printk(&DAT_00136539);
      }
      if ((char)param_2[3] == '\x01') {
        change_tp_state(3);
        return;
      }
      puVar2 = &DAT_001338fb;
    }
    else {
      if (iVar1 != 2) goto LAB_00114990;
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = '\0';
        ufp_notifier_cb(0);
      }
      if ((char)param_2[3] != '\x01') {
        change_tp_state(2);
        return;
      }
      puVar2 = &DAT_00135230;
    }
  }
  _printk(puVar2);
  return;
}

