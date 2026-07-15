
void report_ufp_uevent(int param_1)

{
  byte bVar1;
  long lVar2;
  long lVar3;
  code *pcVar4;
  char *local_40;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar3 = tpd_cdev;
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  if ((param_1 == 0) || ((report_ufp_uevent_area_meet_down & 1) != 0)) {
    bVar1 = 0;
    if (param_1 == 0) {
      bVar1 = report_ufp_uevent_area_meet_down;
    }
    if (bVar1 == 1) {
      report_ufp_uevent_area_meet_down = 0;
      if (ufp_tp_ops == 0) {
        _printk(&DAT_00138864);
      }
      else {
        local_40 = "areameet_up=true";
        if (2 < current_lcd_state) goto LAB_00110be0;
        local_38 = (&tppower_to_str)[current_lcd_state];
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0013889c,"areameet_up=true",local_38);
      }
      if (*(int *)(lVar3 + 0x458) == 0) {
        if ((char)DAT_00131c40 != '\0') {
          complete(&DAT_00131c20);
          DAT_00131c40._0_1_ = '\0';
        }
      }
      else {
        if (((char)DAT_00131c40 != '\0') && ((DAT_00131c42 & 1) == 0)) {
          complete(&DAT_00131c20);
          DAT_00131c40._0_1_ = '\0';
        }
        if ((DAT_00131c40._1_1_ == '\x01') && ((DAT_00131c42 & 1) == 0)) {
          DAT_00131c40._1_1_ = '\0';
          _printk(&DAT_00138100);
        }
      }
    }
  }
  else {
    report_ufp_uevent_area_meet_down = 1;
    if (current_lcd_state == 0) {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_00138864);
      }
      else {
        local_40 = "areameet_down=true";
        local_38 = "TP_POWER_STATUS=2";
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0013889c,"areameet_down=true",local_38);
      }
      DAT_00131c40._1_1_ = '\x01';
    }
    else {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_00138864);
      }
      else {
        ufp_report_gesture_uevent("single_tap=true");
        local_40 = "aod_areameet_down=true";
        if (2 < current_lcd_state) {
LAB_00110be0:
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x110be4);
          (*pcVar4)();
        }
        local_38 = (&tppower_to_str)[current_lcd_state];
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0013889c,"aod_areameet_down=true",local_38);
      }
      DAT_00131c40._0_1_ = '\x01';
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

