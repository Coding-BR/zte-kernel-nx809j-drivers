
void charger_policy_ctrl_charging_enable(long param_1,uint param_2,uint param_3)

{
  long lVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined8 uVar6;
  undefined *puVar7;
  uint local_54;
  uint local_50;
  int local_4c;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  iVar4 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0,&local_4c);
  iVar5 = local_4c;
  if (-1 < iVar4) {
    _printk(&DAT_00104f2b,"charger_policy_battery_is_charging",local_4c == 1 || local_4c == 4);
  }
  else {
    _printk(&DAT_00104cc5,"charger_policy_battery_is_charging");
  }
  _printk(&DAT_001055e3,"charger_policy_ctrl_charging_enable",
          -1 < iVar4 && (iVar5 == 1 || iVar5 == 4));
  iVar5 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,&local_54);
  uVar2 = local_54;
  if (iVar5 < 0) {
    puVar7 = &DAT_00103b28;
  }
  else {
    _printk(&DAT_00105605,"charger_policy_ctrl_charging_enable",local_54);
    iVar5 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,&local_50);
    uVar3 = local_50;
    if (iVar5 < 0) {
      puVar7 = &DAT_00103b6b;
    }
    else {
      _printk(&DAT_0010541a,"charger_policy_ctrl_charging_enable",local_50);
      param_3 = param_3 & 1;
      param_2 = param_2 & 1;
      if (uVar2 == param_3) {
        if (uVar3 != param_2) {
          _printk(&DAT_00105449,"charger_policy_ctrl_charging_enable",uVar2,uVar2,uVar3,param_2);
        }
      }
      else {
        _printk(&DAT_00105449,"charger_policy_ctrl_charging_enable",uVar2,param_3,uVar3,param_2);
        iVar5 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,param_3);
        if (iVar5 < 0) {
          puVar7 = &DAT_00103c5a;
          goto LAB_00101f0c;
        }
      }
      if ((uVar3 == param_2) ||
         (iVar5 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,param_2),
         -1 < iVar5)) {
        uVar6 = 1;
        goto LAB_00101f74;
      }
      puVar7 = &DAT_00104944;
    }
  }
LAB_00101f0c:
  _printk(puVar7,"charger_policy_ctrl_charging_enable");
  uVar6 = 0;
LAB_00101f74:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}

