
undefined8 charger_policy_status_rundischging(long param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  uint uVar8;
  int local_4c;
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_4c = 0;
  if (*(char *)(param_1 + 0x21c) != '\0') {
    ktime_get_with_offset(0);
    lVar5 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) != '\0') {
      _printk(&DAT_00103e89,"charger_policy_status_rundischging",lVar5,*(long *)(param_1 + 0x208),
              lVar5 - *(long *)(param_1 + 0x208),*(undefined4 *)(param_1 + 0x1f8));
    }
    if ((ulong)*(uint *)(param_1 + 0x1f8) < (ulong)(lVar5 - *(long *)(param_1 + 0x208))) {
      *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 3;
      _printk(&DAT_0010470d,"charger_policy_status_rundischging");
      goto LAB_00102494;
    }
  }
  iVar4 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_4c);
  if (iVar4 < 0) {
    _printk(&DAT_00103b87,"charger_policy_status_rundischging");
  }
  else {
    if ((*(char *)(param_1 + 0x21a) == '\0') || (*(char *)(param_1 + 0x21b) == '\0')) {
      uVar8 = 0;
      iVar4 = 0;
    }
    else {
      iVar1 = *(int *)(param_1 + 0x198);
      iVar4 = iVar1;
      if (*(char *)(param_1 + 0x21c) == '\0') {
        iVar4 = *(int *)(param_1 + 0x1a8) + iVar1;
      }
      uVar8 = (uint)(*(int *)(param_1 + 0x19c) + iVar1) >> 1;
      if (*(char *)(param_1 + 0x21d) != '\0') {
        _printk(&DAT_00105412,"charger_policy_status_rundischging",local_4c,iVar4,uVar8);
      }
    }
    iVar1 = local_4c;
    if (*(char *)(param_1 + 0x219) == '\0') {
      if (iVar4 <= local_4c) goto LAB_00102474;
    }
    else {
      iVar2 = *(int *)(param_1 + 0x1a0);
      iVar4 = iVar2;
      if (*(char *)(param_1 + 0x21c) == '\0') {
        iVar4 = *(int *)(param_1 + 0x1a8) + iVar2;
      }
      iVar3 = *(int *)(param_1 + 0x1a4);
      if (*(char *)(param_1 + 0x21d) != '\0') {
        _printk(&DAT_001043d1,"charger_policy_status_rundischging",local_4c,iVar4);
      }
      if (iVar4 <= iVar1) {
LAB_00102474:
        iVar4 = charger_policy_ctrl_charging_enable(param_1,0,0);
        if (iVar4 == 0) {
          _printk(&DAT_00103d28,"charger_policy_status_rundischging");
          alarm_try_to_cancel(param_1 + 0x28);
        }
        goto LAB_00102488;
      }
      uVar8 = (uint)(iVar3 + iVar2) >> 1;
    }
    if (iVar1 <= (int)uVar8) {
      charger_policy_ctrl_charging_enable(param_1,0,1);
    }
  }
LAB_00102488:
  uVar6 = charger_policy_check_soc_reach_min(param_1);
  if ((uVar6 & 1) != 0) {
    ktime_get_with_offset(0);
    uVar7 = ns_to_timespec64();
    *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    _printk(&DAT_00103fcc,"charger_policy_status_rundischging");
    charger_policy_ctrl_charging_enable(param_1,1,1);
    *(undefined8 *)(param_1 + 0x208) = uVar7;
    _printk(&DAT_00104d91,"charger_policy_status_rundischging",uVar7);
  }
LAB_00102494:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

