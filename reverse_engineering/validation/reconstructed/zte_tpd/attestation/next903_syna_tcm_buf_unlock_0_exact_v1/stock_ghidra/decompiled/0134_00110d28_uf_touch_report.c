
void uf_touch_report(int param_1,int param_2,int param_3,uint param_4)

{
  ushort uVar1;
  long lVar2;
  code *pcVar3;
  char *pcVar4;
  char *local_30;
  undefined *local_28;
  undefined8 uStack_20;
  long local_18;
  
  lVar2 = sp_el0;
  local_18 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    if (9 < param_4) {
LAB_00110ed8:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x110edc);
      (*pcVar3)();
    }
    if (*(int *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) == 0) goto LAB_00110e30;
    *(undefined4 *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) = 0;
    uf_touch_report_area_meet_down = 0;
    if (ufp_tp_ops == 0) {
LAB_00110e6c:
      _printk(&DAT_00138864);
      goto LAB_00110e30;
    }
    local_30 = "areameet_up=true";
    if (2 < current_lcd_state) goto LAB_00110ed8;
    local_28 = (&tppower_to_str)[current_lcd_state];
    uStack_20 = 0;
    kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
    pcVar4 = "areameet_up=true";
  }
  else {
    uVar1 = *(ushort *)(tpd_cdev + 0x22);
    if (param_2 <= (int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) ||
        (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e)) <= param_2) goto LAB_00110e30;
    if ((param_3 <= (int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1)) ||
       ((int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1) <= param_3)) goto LAB_00110e30;
    if (9 < param_4) goto LAB_00110ed8;
    if ((*(int *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) != 0) ||
       ((uf_touch_report_area_meet_down & 1) != 0)) goto LAB_00110e30;
    *(undefined4 *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) = 1;
    uf_touch_report_area_meet_down = 1;
    if (ufp_tp_ops == 0) goto LAB_00110e6c;
    local_30 = "areameet_down=true";
    if (2 < current_lcd_state) goto LAB_00110ed8;
    local_28 = (&tppower_to_str)[current_lcd_state];
    uStack_20 = 0;
    kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
    pcVar4 = "areameet_down=true";
  }
  _printk(&DAT_0013889c,pcVar4,local_28);
LAB_00110e30:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

