
void charger_policy_get_prop_by_name(long param_1,undefined4 param_2,undefined4 *param_3)

{
  int iVar1;
  long lVar2;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_40 = 0;
  if (param_1 == 0) {
    _printk(&DAT_00103a97,"charger_policy_get_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00104de8,"charger_policy_get_prop_by_name",param_1);
      iVar1 = -0x16;
    }
    else {
      iVar1 = power_supply_get_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_0010578e,"charger_policy_get_prop_by_name",param_1,param_2,iVar1);
      }
      else {
        *param_3 = (undefined4)local_40;
        power_supply_put(lVar2);
        iVar1 = 0;
      }
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}

