
void syna_work_charger_detect_work(long param_1)

{
  bool bVar1;
  long *plVar2;
  long lVar3;
  int iVar4;
  code *pcVar5;
  undefined4 uVar6;
  byte bVar7;
  undefined8 local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  plVar2 = (long *)(param_1 + -0x620);
  if (plVar2 == (long *)0x0) goto LAB_0012b900;
  if ((*(int *)(*(long *)(param_1 + -0x3b0) + 0xb8) == 0) ||
     ((*(byte *)(*(long *)(param_1 + -0x3b0) + 0xbc) & 1) == 0)) {
    uVar6 = *(undefined4 *)(*plVar2 + 0x20c);
  }
  else {
    uVar6 = 0;
  }
  _printk(&DAT_00135caf,"syna_work_charger_detect_work");
  local_50 = 0;
  if ((syna_get_charger_status_batt_psy == (long *)0x0) &&
     (syna_get_charger_status_batt_psy = (long *)power_supply_get_by_name("battery"),
     syna_get_charger_status_batt_psy == (long *)0x0)) {
    _printk(&DAT_0013b3ce,"syna_get_charger_status",0);
    syna_usb_detect_flag = false;
LAB_0012ba4c:
    if ((*(int *)(param_1 + -0xa4) != 1) || ((syna_work_charger_detect_work_status & 1) == 0)) {
      bVar7 = 0;
      if (*(int *)(param_1 + -0xa4) != 1) {
        bVar7 = syna_work_charger_detect_work_status;
      }
      if ((bVar7 & 1) != 0) {
        syna_work_charger_detect_work_status = 0;
      }
      goto LAB_0012b900;
    }
    bVar7 = 0;
  }
  else {
    if (*(int *)(*(code **)(*syna_get_charger_status_batt_psy + 0x28) + -4) != -0x1766f32d) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x12b9e8);
      (*pcVar5)();
    }
    (**(code **)(*syna_get_charger_status_batt_psy + 0x28))
              (syna_get_charger_status_batt_psy,0,&local_50);
    iVar4 = (int)local_50;
    bVar1 = (int)local_50 == 1 || (int)local_50 == 4;
    _printk(&DAT_0013b3ce,"syna_get_charger_status",bVar1);
    syna_usb_detect_flag = bVar1;
    if ((iVar4 != 4) && (iVar4 != 1)) goto LAB_0012ba4c;
    if ((*(int *)(param_1 + -0xa4) != 1) || ((syna_work_charger_detect_work_status & 1) != 0)) {
      bVar7 = syna_work_charger_detect_work_status;
      if (*(int *)(param_1 + -0xa4) == 1) {
        bVar7 = 1;
      }
      if ((bVar7 & 1) == 0) {
        syna_work_charger_detect_work_status = 1;
      }
      goto LAB_0012b900;
    }
    bVar7 = 1;
  }
  syna_dev_set_charger_mode(plVar2,bVar7,uVar6);
  syna_work_charger_detect_work_status = bVar7;
LAB_0012b900:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

