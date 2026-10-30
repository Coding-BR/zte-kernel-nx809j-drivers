
undefined8 tp_palm_mode_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_00180744,"tp_palm_mode_write");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

