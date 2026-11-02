
undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  byte bVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if ((iVar1 != 1) || (0xc < local_3c)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00106680,"aw22xxx_imax_store",0x8a7);
  }
  *(uint *)(lVar3 + 0x2e0) = local_3c;
  bVar2 = aw22xxx_imax_code[local_3c];
  lVar3 = lVar3 + -0x10;
  if (0xe < bVar2) {
    bVar2 = 0xf;
  }
  FUN_00101b10(lVar3,0xff,0);
  FUN_00101b10(lVar3,0xb,bVar2);
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

