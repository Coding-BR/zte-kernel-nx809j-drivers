
long aw9620x_reg_get(long param_1,undefined8 param_2,long param_3)

{
  ushort uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  uint local_6c;
  long local_68;
  
  lVar4 = sp_el0;
  lVar5 = 0;
  local_68 = *(long *)(lVar4 + 0x710);
  lVar4 = 0;
  lVar3 = *(long *)(param_1 + 0x98);
  local_6c = 0;
  do {
    if (((&aw9620x_reg_access)[lVar5] & 1) != 0) {
      uVar1 = *(ushort *)((long)&DAT_001101f2 + lVar5);
      iVar2 = aw9620x_i2c_read(lVar3 + -0x38,(ulong)uVar1,&local_6c);
      if (iVar2 < 0) {
        iVar2 = snprintf((char *)(param_3 + lVar4),0x1000 - lVar4,"i2c read error ret = %d\n",
                         0xffffffff);
        lVar4 = lVar4 + iVar2;
      }
      iVar2 = snprintf((char *)(param_3 + lVar4),0x1000 - lVar4,"0x%04x,0x%08x\n",(ulong)uVar1,
                       (ulong)local_6c);
      lVar4 = lVar4 + iVar2;
    }
    lVar5 = lVar5 + 4;
  } while (lVar5 != 0x310);
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_68) {
    return lVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

