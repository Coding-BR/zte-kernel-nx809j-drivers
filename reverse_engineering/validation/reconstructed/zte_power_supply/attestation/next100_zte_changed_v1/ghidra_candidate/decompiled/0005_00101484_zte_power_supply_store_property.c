
void zte_power_supply_store_property(long param_1,long param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  uVar4 = *(undefined8 *)(param_1 + 0x98);
  local_48 = 0;
  local_40 = 0;
  if ((*(int *)(param_2 + 0x28) < 1) ||
     (iVar2 = __sysfs_match_string(*(undefined8 *)(param_2 + 0x20),*(int *)(param_2 + 0x28),param_3)
     , iVar2 < 0)) {
    iVar2 = kstrtoll(param_3,10,&local_48);
    if (iVar2 < 0) {
      lVar3 = (long)iVar2;
      goto LAB_00101534;
    }
    iVar2 = (int)local_48;
  }
  local_40 = CONCAT44(local_40._4_4_,iVar2);
  iVar2 = zte_power_supply_set_property
                    (uVar4,(int)(param_2 - 0x100280U >> 3) * -0x45d1745d,&local_40);
  lVar3 = (long)iVar2;
  if (-1 < iVar2) {
    lVar3 = param_4;
  }
LAB_00101534:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(lVar3);
  }
  return;
}

