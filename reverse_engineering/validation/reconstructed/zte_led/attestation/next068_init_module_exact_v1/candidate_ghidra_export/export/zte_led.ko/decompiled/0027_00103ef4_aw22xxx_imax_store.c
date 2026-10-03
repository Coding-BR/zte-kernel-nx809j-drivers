
undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  byte bVar3;
  long lVar4;
  uint local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if ((iVar1 != 1) || (0xc < local_3c)) {
    uVar2 = _printk(&DAT_00106a98,"aw22xxx_imax_store",0x8a7);
    return uVar2;
  }
  *(uint *)(lVar4 + 0x2e0) = local_3c;
  bVar3 = aw22xxx_imax_code[local_3c];
  lVar4 = lVar4 + -0x10;
  if (0xe < bVar3) {
    bVar3 = 0xf;
  }
  aw22xxx_i2c_write(lVar4,0xff,0);
  aw22xxx_i2c_write(lVar4,0xb,bVar3);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

