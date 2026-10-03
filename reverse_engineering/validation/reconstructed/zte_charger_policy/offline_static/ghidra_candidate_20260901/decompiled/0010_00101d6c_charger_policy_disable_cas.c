
void charger_policy_disable_cas(long param_1,undefined4 param_2)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_30 = 0;
  _printk(&DAT_00104f36,"charger_policy_disable_cas",param_2);
  if (*(long *)(param_1 + 0x1d0) == 0) {
    _printk(&DAT_00104a0f,"charger_policy_disable_cas");
  }
  else {
    lVar2 = power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00104401,"charger_policy_disable_cas");
    }
    else {
      local_30 = CONCAT44(local_30._4_4_,param_2);
      iVar1 = power_supply_set_property(lVar2,5,&local_30);
      if (iVar1 < 0) {
        _printk(&DAT_00103f05,"charger_policy_disable_cas",iVar1);
        _printk(&DAT_0010432f,"charger_policy_disable_cas",iVar1);
      }
      else {
        power_supply_put(lVar2);
      }
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

