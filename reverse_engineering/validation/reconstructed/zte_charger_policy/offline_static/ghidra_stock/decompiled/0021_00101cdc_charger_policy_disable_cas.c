
void charger_policy_disable_cas(long param_1,uint param_2)

{
  int iVar1;
  long lVar2;
  long lVar3;
  undefined8 local_40;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_001053fa,"charger_policy_disable_cas",param_2 & 1);
  lVar3 = *(long *)(param_1 + 0x1d0);
  local_40 = 0;
  if (lVar3 == 0) {
    _printk(&DAT_00103a97,"charger_policy_set_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = power_supply_get_by_name(lVar3);
    if (lVar2 == 0) {
      _printk(&DAT_00104de8,"charger_policy_set_prop_by_name",lVar3);
      iVar1 = -0x16;
    }
    else {
      local_40 = CONCAT44(local_40._4_4_,param_2) & 0xffffffff00000001;
      iVar1 = power_supply_set_property(lVar2,5,&local_40);
      if (-1 < iVar1) {
        power_supply_put(lVar2);
        goto LAB_00101d58;
      }
      _printk(&DAT_00104ef7,"charger_policy_set_prop_by_name",lVar3,5,iVar1);
    }
  }
  _printk(&DAT_00104218,"charger_policy_disable_cas",iVar1);
LAB_00101d58:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

