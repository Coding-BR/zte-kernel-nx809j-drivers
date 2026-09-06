
int zte_charger_policy_set_prop_by_name(long param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  long lVar2;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_40 = 0;
  if (param_1 == 0) {
    _printk(&DAT_001040ec,"zte_charger_policy_set_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = zte_power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00105126,"zte_charger_policy_set_prop_by_name",param_1);
      iVar1 = -0x13;
    }
    else {
      local_40 = CONCAT44(local_40._4_4_,param_3);
      iVar1 = zte_power_supply_set_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_00104130,"zte_charger_policy_set_prop_by_name",param_2,param_1);
      }
      zte_power_supply_put(lVar2);
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return iVar1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

