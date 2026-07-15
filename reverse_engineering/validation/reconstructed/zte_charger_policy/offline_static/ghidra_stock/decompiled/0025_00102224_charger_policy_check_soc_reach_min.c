
void charger_policy_check_soc_reach_min(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined *puVar4;
  int iVar5;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
  if (iVar2 < 0) {
    _printk(&DAT_00103da1,"charger_policy_check_soc_reach_min");
    uVar3 = 0;
    goto LAB_001022f0;
  }
  if (*(char *)(param_1 + 0x21d) == '\x01') {
    _printk(&DAT_00104067,"charger_policy_check_soc_reach_min",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
            *(undefined1 *)(param_1 + 0x21c));
  }
  iVar2 = local_3c;
  if (*(char *)(param_1 + 0x219) == '\x01') {
    iVar5 = *(int *)(param_1 + 0x1a4);
    if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
      iVar5 = iVar5 - *(int *)(param_1 + 0x1a8);
    }
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_0010575e,"charger_policy_check_soc_reach_min",local_3c,iVar5);
    }
    if (iVar5 < iVar2) goto LAB_001022a8;
    puVar4 = &DAT_0010498b;
LAB_001023d4:
    _printk(puVar4,"charger_policy_check_soc_reach_min",iVar2,iVar5);
    uVar3 = 1;
  }
  else {
LAB_001022a8:
    iVar2 = local_3c;
    if ((*(char *)(param_1 + 0x21a) == '\x01') && (*(char *)(param_1 + 0x21b) == '\x01')) {
      iVar5 = *(int *)(param_1 + 0x19c);
      if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
        iVar5 = iVar5 - *(int *)(param_1 + 0x1a8);
      }
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_001040b0,"charger_policy_check_soc_reach_min",local_3c,iVar5);
      }
      if (iVar2 <= iVar5) {
        puVar4 = &DAT_0010455b;
        goto LAB_001023d4;
      }
    }
    uVar3 = 0;
  }
LAB_001022f0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

