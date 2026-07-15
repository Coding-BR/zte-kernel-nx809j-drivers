
undefined8 charger_policy_status_rundischging(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  int iVar7;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  if (*(char *)(param_1 + 0x21c) == '\x01') {
    ktime_get_with_offset(1);
    lVar4 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_0010586a,"charger_policy_check_force_discharging",lVar4,
              *(long *)(param_1 + 0x208),lVar4 - *(long *)(param_1 + 0x208),
              *(undefined4 *)(param_1 + 0x1f8));
    }
    if ((long)(ulong)*(uint *)(param_1 + 0x1f8) < lVar4 - *(long *)(param_1 + 0x208)) {
      *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 3;
      _printk(&DAT_00104b03,"charger_policy_status_rundischging");
      goto LAB_00101030;
    }
  }
  local_3c = 0;
  iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
  if (iVar3 < 0) {
    _printk(&DAT_00103da1,"charger_policy_select_discharging_mode");
  }
  else {
    if ((*(char *)(param_1 + 0x21a) == '\x01') && (*(char *)(param_1 + 0x21b) == '\x01')) {
      iVar7 = *(int *)(param_1 + 0x198);
      iVar3 = iVar7;
      if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
        iVar3 = *(int *)(param_1 + 0x1a8) + iVar7;
      }
      iVar7 = *(int *)(param_1 + 0x19c) + iVar7;
      if (iVar7 < 0) {
        iVar7 = iVar7 + 1;
      }
      iVar7 = iVar7 >> 1;
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_001042f5,"charger_policy_select_discharging_mode",local_3c,iVar3,iVar7);
      }
    }
    else {
      iVar7 = 0;
      iVar3 = 0;
    }
    iVar2 = local_3c;
    if ((*(byte *)(param_1 + 0x219) & 1) != 0) {
      iVar7 = *(int *)(param_1 + 0x1a0);
      iVar3 = iVar7;
      if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
        iVar3 = *(int *)(param_1 + 0x1a8) + iVar7;
      }
      iVar7 = *(int *)(param_1 + 0x1a4) + iVar7;
      if (iVar7 < 0) {
        iVar7 = iVar7 + 1;
      }
      iVar7 = iVar7 >> 1;
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_001052ab,"charger_policy_select_discharging_mode",local_3c,iVar3,iVar7);
      }
    }
    if (iVar2 < iVar3) {
      if (iVar2 <= iVar7) {
        charger_policy_ctrl_charging_enable(param_1,0,1);
      }
    }
    else {
      uVar5 = charger_policy_ctrl_charging_enable(param_1,0,0);
      if ((uVar5 & 1) == 0) {
        _printk(&DAT_00104837,"charger_policy_select_discharging_mode");
        alarm_try_to_cancel(param_1 + 0x28);
      }
    }
  }
  uVar5 = charger_policy_check_soc_reach_min(param_1);
  if ((uVar5 & 1) != 0) {
    ktime_get_with_offset(1);
    uVar6 = ns_to_timespec64();
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    _printk(&DAT_001042a9,"charger_policy_status_rundischging");
    charger_policy_ctrl_charging_enable(param_1,1,1);
    *(undefined8 *)(param_1 + 0x208) = uVar6;
    _printk(&DAT_00104245,"charger_policy_status_rundischging",uVar6);
  }
LAB_00101030:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

