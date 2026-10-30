
undefined8 aw22xxx_reg_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  long lVar1;
  int iVar2;
  undefined8 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_30 = 0;
  iVar2 = sscanf(param_3,"%x %x",(long)&local_30 + 4,&local_30);
  if ((iVar2 == 2) && (local_30._4_4_ < 0x100)) {
    aw22xxx_i2c_write();
  }
  else {
    _printk(&DAT_001092ef,"aw22xxx_reg_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

