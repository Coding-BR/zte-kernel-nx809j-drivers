
void zte_power_supply_store_property(long param_1,long param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  uint uVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  ulong local_48;
  undefined8 local_40;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  uVar6 = *(undefined8 *)(param_1 + 0x98);
  local_40 = 0;
  if ((*(int *)(param_2 + 0x28) < 1) ||
     (uVar2 = __sysfs_match_string(*(undefined8 *)(param_2 + 0x20),*(int *)(param_2 + 0x28),param_3)
     , (int)uVar2 < 0)) {
    local_48 = 0;
    iVar3 = kstrtoll(param_3,10,&local_48);
    uVar5 = local_48;
    if (iVar3 < 0) {
      lVar4 = (long)iVar3;
      goto LAB_00103118;
    }
  }
  else {
    uVar5 = (ulong)uVar2;
  }
  local_40 = CONCAT44(local_40._4_4_,(int)uVar5);
  iVar3 = zte_power_supply_set_property
                    (uVar6,(int)(param_2 - 0x1002b0U >> 3) * -0x45d1745d,&local_40);
  lVar4 = (long)iVar3;
  if (-1 < iVar3) {
    lVar4 = param_4;
  }
LAB_00103118:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(lVar4);
  }
  return;
}

