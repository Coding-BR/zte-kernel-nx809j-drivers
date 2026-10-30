
void charger_policy_check_soc_reach_min(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
  if (iVar3 < 0) {
    _printk(&DAT_00103b87,"charger_policy_check_soc_reach_min");
    uVar4 = 0;
    goto LAB_001026a4;
  }
  if (*(char *)(param_1 + 0x21d) == '\0') {
    if (*(char *)(param_1 + 0x219) == '\0') goto LAB_00102668;
LAB_00102640:
    iVar2 = local_3c;
    iVar3 = *(int *)(param_1 + 0x1a4);
    if (*(char *)(param_1 + 0x21c) == '\0') {
      iVar3 = iVar3 - *(int *)(param_1 + 0x1a8);
    }
    if (*(char *)(param_1 + 0x21d) != '\0') {
      _printk(&DAT_001043d1,"charger_policy_check_soc_reach_min",local_3c,iVar3);
    }
    if (iVar3 < iVar2) goto LAB_00102668;
    puVar5 = &DAT_00105462;
LAB_00102790:
    _printk(puVar5,"charger_policy_check_soc_reach_min",iVar2,iVar3);
    uVar4 = 1;
  }
  else {
    _printk(&DAT_00103e29,"charger_policy_check_soc_reach_min",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
            *(undefined1 *)(param_1 + 0x21c));
    if (*(char *)(param_1 + 0x219) != '\0') goto LAB_00102640;
LAB_00102668:
    iVar2 = local_3c;
    if ((*(char *)(param_1 + 0x21a) != '\0') && (*(char *)(param_1 + 0x21b) != '\0')) {
      iVar3 = *(int *)(param_1 + 0x19c);
      if (*(char *)(param_1 + 0x21c) == '\0') {
        iVar3 = iVar3 - *(int *)(param_1 + 0x1a8);
      }
      if (*(char *)(param_1 + 0x21d) != '\0') {
        _printk(&DAT_00103d66,"charger_policy_check_soc_reach_min",local_3c,iVar3);
      }
      if (iVar2 <= iVar3) {
        puVar5 = &DAT_00103d9a;
        goto LAB_00102790;
      }
    }
    uVar4 = 0;
  }
LAB_001026a4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

