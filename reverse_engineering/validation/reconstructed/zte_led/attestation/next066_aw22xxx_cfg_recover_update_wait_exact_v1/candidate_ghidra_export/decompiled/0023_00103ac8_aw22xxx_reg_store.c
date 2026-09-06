
undefined8 aw22xxx_reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if ((iVar1 == 2) && ((uint)local_30 < 0x100)) {
    aw22xxx_i2c_write(lVar3 + -0x10,local_30 & 0xffffffff,local_30._4_4_);
    lVar3 = sp_el0;
    if (*(long *)(lVar3 + 0x710) == local_28) {
      return param_4;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  uVar2 = _printk(&DAT_00106b00,"aw22xxx_reg_store",0x78b);
  return uVar2;
}

