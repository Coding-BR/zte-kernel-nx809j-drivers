
undefined8 charger_policy_status_runchging(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  long lVar3;
  undefined *puVar4;
  uint uVar5;
  int local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_3c = 0;
  if (*(char *)(param_1 + 0x21c) == '\0') {
LAB_0010205c:
    charger_policy_ctrl_charging_enable(param_1,1,1);
    iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
    if (-1 < iVar2) {
      if (*(char *)(param_1 + 0x21d) == '\0') {
        if (*(char *)(param_1 + 0x219) == '\0') goto LAB_001020d4;
LAB_00102090:
        iVar2 = local_3c;
        if (*(char *)(param_1 + 0x21c) == '\0') {
          uVar5 = *(int *)(param_1 + 0x1a0) + *(int *)(param_1 + 0x1a8);
        }
        else {
          uVar5 = *(uint *)(param_1 + 0x1a0);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            uVar5 = *(int *)(param_1 + 0x1a4) + uVar5 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) != '\0') {
          _printk(&DAT_001042c7,"charger_policy_status_runchging",local_3c,uVar5);
        }
        if (iVar2 < (int)uVar5) goto LAB_001020d4;
        puVar4 = &DAT_0010527c;
      }
      else {
        _printk(&DAT_00103e29,"charger_policy_status_runchging",*(undefined1 *)(param_1 + 0x219),
                *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
                *(undefined1 *)(param_1 + 0x21c));
        if (*(char *)(param_1 + 0x219) != '\0') goto LAB_00102090;
LAB_001020d4:
        iVar2 = local_3c;
        if ((*(char *)(param_1 + 0x21a) == '\0') || (*(char *)(param_1 + 0x21b) == '\0'))
        goto LAB_00102254;
        if (*(char *)(param_1 + 0x21c) == '\0') {
          uVar5 = *(int *)(param_1 + 0x198) + *(int *)(param_1 + 0x1a8);
        }
        else {
          uVar5 = *(uint *)(param_1 + 0x198);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            uVar5 = *(int *)(param_1 + 0x19c) + uVar5 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) != '\0') {
          _printk(&DAT_0010395d,"charger_policy_status_runchging",local_3c,uVar5);
        }
        if (iVar2 < (int)uVar5) goto LAB_00102254;
        puVar4 = &DAT_00103bb4;
      }
      _printk(puVar4,"charger_policy_status_runchging",iVar2,uVar5);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 2;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
      charger_policy_ctrl_charging_enable(param_1,0,0);
      goto LAB_00102254;
    }
    puVar4 = &DAT_00103b87;
  }
  else {
    ktime_get_with_offset(0);
    lVar3 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) != '\0') {
      _printk(&DAT_00103e89,"charger_policy_status_runchging",lVar3,*(long *)(param_1 + 0x208),
              lVar3 - *(long *)(param_1 + 0x208),*(undefined4 *)(param_1 + 0x1f8));
    }
    if ((ulong)(lVar3 - *(long *)(param_1 + 0x208)) <= (ulong)*(uint *)(param_1 + 0x1f8))
    goto LAB_0010205c;
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    puVar4 = &DAT_0010470d;
    *(undefined4 *)(param_1 + 0x1ec) = 3;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
  }
  _printk(puVar4,"charger_policy_status_runchging");
LAB_00102254:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return 0;
}

