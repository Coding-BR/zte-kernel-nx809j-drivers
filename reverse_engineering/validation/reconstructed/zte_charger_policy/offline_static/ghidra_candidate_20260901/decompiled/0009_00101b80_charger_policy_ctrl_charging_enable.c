
void charger_policy_ctrl_charging_enable(long param_1,int param_2,int param_3)

{
  long lVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined8 uVar5;
  undefined *puVar6;
  int local_54;
  int local_50;
  int local_4c;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  local_54 = 0;
  local_50 = 0;
  iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0,&local_4c);
  iVar4 = local_4c;
  if (-1 < iVar2) {
    _printk(&DAT_00104ef1,"charger_policy_ctrl_charging_enable",local_4c == 1 || local_4c == 4);
  }
  else {
    _printk(&DAT_001049b3,"charger_policy_ctrl_charging_enable");
  }
  _printk(&DAT_0010410a,"charger_policy_ctrl_charging_enable",
          -1 < iVar2 && (iVar4 == 1 || iVar4 == 4));
  iVar2 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,&local_50);
  iVar4 = local_50;
  if (iVar2 < 0) {
    puVar6 = &DAT_001037a0;
  }
  else {
    _printk(&DAT_00105493,"charger_policy_ctrl_charging_enable",local_50);
    iVar3 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,&local_54);
    iVar2 = local_54;
    if (-1 < iVar3) {
      _printk(&DAT_0010382e,"charger_policy_ctrl_charging_enable",local_54);
      if (iVar4 != param_3) {
        _printk(&DAT_001049df,"charger_policy_ctrl_charging_enable",param_3);
        iVar4 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,param_3);
        if (iVar4 < 0) {
          puVar6 = &DAT_00103991;
          goto LAB_00101c84;
        }
      }
      if (iVar2 != param_2) {
        _printk(&DAT_001042f7,"charger_policy_ctrl_charging_enable",param_2);
        iVar4 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,param_2);
        if (iVar4 < 0) {
          puVar6 = &DAT_00104257;
          goto LAB_00101c84;
        }
      }
      uVar5 = 1;
      goto LAB_00101cc8;
    }
    puVar6 = &DAT_001037e3;
  }
LAB_00101c84:
  _printk(puVar6,"charger_policy_ctrl_charging_enable");
  uVar5 = 0;
LAB_00101cc8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}

