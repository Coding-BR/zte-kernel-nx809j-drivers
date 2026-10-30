
void report_ufp_uevent(int param_1)

{
  byte bVar1;
  long lVar2;
  code *pcVar3;
  char *local_40;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  if ((param_1 == 0) || ((report_ufp_uevent_area_meet_down & 1) != 0)) {
    bVar1 = 0;
    if (param_1 == 0) {
      bVar1 = report_ufp_uevent_area_meet_down;
    }
    if (bVar1 != 1) {
      lVar2 = sp_el0;
      if (*(long *)(lVar2 + 0x710) == local_28) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    report_ufp_uevent_area_meet_down = 0;
    if (ufp_tp_ops == 0) {
      _printk(&DAT_0016d442);
      return;
    }
    local_40 = "areameet_up=true";
    if (current_lcd_state < 3) {
      local_38 = (&report_ufp_uevent_tppower_to_str)[current_lcd_state];
      uStack_30 = 0;
      kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
      _printk(&DAT_0016d47a,"areameet_up=true",local_38);
      return;
    }
  }
  else {
    report_ufp_uevent_area_meet_down = 1;
    if (current_lcd_state == 0) {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_0016d442);
        return;
      }
      local_40 = "areameet_down=true";
      if (true) {
        local_38 = "TP_POWER_STATUS=2";
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0016d47a,"areameet_down=true",local_38);
        return;
      }
    }
    else {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_0016d442);
        return;
      }
      ufp_report_gesture_uevent("single_tap=true");
      local_40 = "aod_areameet_down=true";
      if (current_lcd_state < 3) {
        local_38 = (&report_ufp_uevent_tppower_to_str)[current_lcd_state];
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0016d47a,"aod_areameet_down=true",local_38);
        return;
      }
    }
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x150bd8);
  (*pcVar3)();
}

