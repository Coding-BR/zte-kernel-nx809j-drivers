
void zte_misc_get_design_capacity(char *param_1)

{
  int iVar1;
  long lVar2;
  uint uVar3;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_30 = 0;
  lVar2 = power_supply_get_by_name("battery");
  if (lVar2 == 0) {
    _printk(&DAT_00102604);
    uVar3 = 0;
  }
  else {
    iVar1 = power_supply_get_property(lVar2,0x16,&local_30);
    if (iVar1 != 0) {
      _printk(&DAT_001026dc,iVar1);
    }
    power_supply_put(lVar2);
    uVar3 = (uint)local_30 / 1000;
    if ((int)(uint)local_30 < 1000000) {
      uVar3 = (uint)local_30;
    }
  }
  _printk(&DAT_00102627,uVar3);
  iVar1 = snprintf(param_1,0x1000,"%d",(ulong)uVar3);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar1);
  }
  return;
}

