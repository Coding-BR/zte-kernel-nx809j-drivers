
void tpd_report_uevent(char param_1)

{
  long lVar1;
  long lVar2;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_38 = (char *)0x0;
  uStack_30 = 0;
  if (param_1 == '\x02') {
    _printk(&DAT_00138cbd,"tpd_report_uevent");
    local_38 = "pen_capacity_low=true";
  }
  else if (param_1 == '\x01') {
    _printk(&DAT_001398ee,"tpd_report_uevent");
    local_38 = "double_tap=true";
  }
  else {
    if (param_1 != '\0') {
      _printk(&DAT_0013a3f7,"tpd_report_uevent",param_1);
      goto LAB_00108384;
    }
    _printk(&DAT_00139e4f,"tpd_report_uevent");
    local_38 = "single_tap=true";
  }
  kobject_uevent_env(*(long *)(lVar2 + 0xdd0) + 0x10,2,&local_38);
LAB_00108384:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

