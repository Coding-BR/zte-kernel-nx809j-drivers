
undefined8 aw22xxx_reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",(long)&local_30 + 4,&local_30);
  if ((iVar1 == 2) && (local_30._4_4_ < 0x100)) {
    aw22xxx_i2c_write(lVar2 + -0x10,(byte)((ulong)local_30 >> 0x20),(byte)local_30);
  }
  else {
    _printk(&DAT_001093b9,"aw22xxx_reg_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

