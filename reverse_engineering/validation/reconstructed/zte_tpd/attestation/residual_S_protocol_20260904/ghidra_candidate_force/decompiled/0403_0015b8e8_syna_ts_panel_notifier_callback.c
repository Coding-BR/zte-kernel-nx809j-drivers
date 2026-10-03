
void syna_ts_panel_notifier_callback(undefined8 param_1,int *param_2)

{
  int iVar1;
  undefined *puVar2;
  
  if (param_2 == (int *)0x0) {
    puVar2 = &DAT_001671a4;
LAB_0015b9c4:
                    /* WARNING: Subroutine does not return */
    _printk(puVar2);
  }
  iVar1 = *param_2;
  if (iVar1 < 3) {
    if (iVar1 == 1) {
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = 0;
        ufp_notifier_cb(0);
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016b074);
      }
      if ((char)param_2[3] != '\x01') {
        puVar2 = &DAT_00168390;
        goto LAB_0015b9c4;
      }
      change_tp_state(3);
    }
    else {
      if (iVar1 != 2) {
LAB_0015b964:
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172036,iVar1);
      }
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = '\0';
        ufp_notifier_cb(0);
      }
      if ((char)param_2[3] == '\x01') {
        puVar2 = &DAT_00169d26;
        goto LAB_0015b9c4;
      }
      change_tp_state(2);
    }
  }
  else if (iVar1 == 3) {
    panel_enter_low_power = '\x01';
    ufp_notifier_cb(1);
    ufp_report_lcd_state();
  }
  else if (iVar1 != 4) goto LAB_0015b964;
  return;
}

