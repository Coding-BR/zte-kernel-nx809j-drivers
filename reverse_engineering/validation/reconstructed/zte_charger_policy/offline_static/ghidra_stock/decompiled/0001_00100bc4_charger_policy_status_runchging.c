
undefined8 charger_policy_status_runchging(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  long lVar3;
  undefined *puVar4;
  char *pcVar5;
  int iVar6;
  int local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  if (*(char *)(param_1 + 0x21c) == '\x01') {
    ktime_get_with_offset(1);
    lVar3 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_0010586a,"charger_policy_check_force_discharging",lVar3,
              *(long *)(param_1 + 0x208),lVar3 - *(long *)(param_1 + 0x208),
              *(undefined4 *)(param_1 + 0x1f8));
    }
    if (lVar3 - *(long *)(param_1 + 0x208) <= (long)(ulong)*(uint *)(param_1 + 0x1f8))
    goto LAB_00100c24;
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    puVar4 = &DAT_00104b03;
    *(undefined4 *)(param_1 + 0x1ec) = 3;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
LAB_00100e1c:
    pcVar5 = "charger_policy_status_runchging";
  }
  else {
LAB_00100c24:
    charger_policy_ctrl_charging_enable(param_1,1,1);
    local_3c = 0;
    iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
    if (-1 < iVar2) {
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_00104067,"charger_policy_check_soc_reach_max",*(undefined1 *)(param_1 + 0x219),
                *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
                *(undefined1 *)(param_1 + 0x21c));
      }
      iVar2 = local_3c;
      if (*(char *)(param_1 + 0x219) == '\x01') {
        if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
          iVar6 = *(int *)(param_1 + 0x1a8) + *(int *)(param_1 + 0x1a0);
        }
        else {
          iVar6 = *(int *)(param_1 + 0x1a0);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            iVar6 = *(int *)(param_1 + 0x1a4) + iVar6;
            if (iVar6 < 0) {
              iVar6 = iVar6 + 1;
            }
            iVar6 = iVar6 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) == '\x01') {
          _printk(&DAT_00103933,"charger_policy_check_soc_reach_max",local_3c,iVar6);
        }
        if (iVar2 < iVar6) goto LAB_00100cb4;
        puVar4 = &DAT_0010438a;
      }
      else {
LAB_00100cb4:
        iVar2 = local_3c;
        if ((*(char *)(param_1 + 0x21a) != '\x01') || (*(char *)(param_1 + 0x21b) != '\x01'))
        goto LAB_00100e28;
        if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
          iVar6 = *(int *)(param_1 + 0x1a8) + *(int *)(param_1 + 0x198);
        }
        else {
          iVar6 = *(int *)(param_1 + 0x198);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            iVar6 = *(int *)(param_1 + 0x19c) + iVar6;
            if (iVar6 < 0) {
              iVar6 = iVar6 + 1;
            }
            iVar6 = iVar6 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) == '\x01') {
          _printk(&DAT_0010518e,"charger_policy_check_soc_reach_max",local_3c,iVar6);
        }
        if (iVar2 < iVar6) goto LAB_00100e28;
        puVar4 = &DAT_00104701;
      }
      _printk(puVar4,"charger_policy_check_soc_reach_max",iVar2,iVar6);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 2;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
      charger_policy_ctrl_charging_enable(param_1,0,0);
      puVar4 = &DAT_00103adb;
      goto LAB_00100e1c;
    }
    puVar4 = &DAT_00103da1;
    pcVar5 = "charger_policy_check_soc_reach_max";
  }
  _printk(puVar4,pcVar5);
LAB_00100e28:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

