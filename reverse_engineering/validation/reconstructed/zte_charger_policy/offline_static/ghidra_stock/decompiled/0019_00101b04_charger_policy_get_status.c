
void charger_policy_get_status(void)

{
  bool bVar1;
  int iVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  local_30 = 0;
  lVar3 = power_supply_get_by_name("policy");
  if (lVar3 == 0) {
    _printk(&DAT_00104de8,"charger_policy_get_prop_by_name","policy");
  }
  else {
    iVar2 = power_supply_get_property(lVar3,5,&local_30);
    if (-1 < iVar2) {
      iVar2 = (int)local_30;
      power_supply_put(lVar3);
      bVar1 = iVar2 != 0;
      goto LAB_00101b60;
    }
    _printk(&DAT_0010578e,"charger_policy_get_prop_by_name","policy",5,iVar2);
  }
  bVar1 = false;
LAB_00101b60:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar1);
}

