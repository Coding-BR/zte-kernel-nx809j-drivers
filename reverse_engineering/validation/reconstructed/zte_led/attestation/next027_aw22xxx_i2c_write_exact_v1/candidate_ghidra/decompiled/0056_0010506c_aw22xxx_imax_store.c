
undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if ((iVar1 == 1) && (local_3c < 0xd)) {
    *(uint *)(lVar2 + 0x2e0) = local_3c;
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
  }
  else {
    _printk(&DAT_00108577,"aw22xxx_imax_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

