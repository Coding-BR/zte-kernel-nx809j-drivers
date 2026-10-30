
undefined8 tp_single_game_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  undefined8 uVar4;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    bVar2 = local_2c != 0;
    local_2c = 0;
    if (bVar2) {
      local_2c = 5;
    }
    uVar4 = _printk(&DAT_0016cc56,"tp_single_game_write");
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

