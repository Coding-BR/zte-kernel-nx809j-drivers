
void haptic_i2c_write_bits(undefined8 param_1,ulong param_2,uint param_3,uint param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ushort local_3c [2];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,param_2,local_3c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
  }
  else {
    iVar2 = haptic_i2c_write(param_1,param_2 & 0xffffffff,
                             local_3c[0] & param_3 | param_4 & (param_3 ^ 0xffffffff));
    if (-1 < iVar2) goto LAB_001032e0;
    puVar3 = &DAT_00104524;
    uVar4 = 0xb8;
  }
  _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
LAB_001032e0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

