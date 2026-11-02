
void one_key_report(int param_1,int param_2,int param_3,uint param_4)

{
  ushort uVar1;
  long lVar2;
  code *pcVar3;
  char *pcVar4;
  char *local_40;
  undefined *puStack_38;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    if (9 < param_4) {
LAB_0014e3e4:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x14e3e8);
      (*pcVar3)();
    }
    if ((&one_key_report_one_key_finger)[param_4] != '\0') {
      (&one_key_report_one_key_finger)[param_4] = 0;
      pcVar4 = "fp_gesture_up=true";
      one_key_report_one_key_down = 0;
LAB_0014e3a0:
      puStack_38 = (&one_key_finger_id)[param_4];
      local_30 = 0;
      local_40 = pcVar4;
      kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
      _printk(&one_key_report_log_fmt,pcVar4);
      return;
    }
  }
  else {
    uVar1 = *(ushort *)(tpd_cdev + 0x22);
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) < param_2 &&
        param_2 < (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e))) {
      if (((int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1) < param_3) &&
         (param_3 < (int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1))) {
        if (9 < param_4) goto LAB_0014e3e4;
        if (((&one_key_report_one_key_finger)[param_4] == '\0') &&
           ((one_key_report_one_key_down & 1) == 0)) {
          (&one_key_report_one_key_finger)[param_4] = 1;
          pcVar4 = "fp_gesture_down=true";
          one_key_report_one_key_down = 1;
          goto LAB_0014e3a0;
        }
      }
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

