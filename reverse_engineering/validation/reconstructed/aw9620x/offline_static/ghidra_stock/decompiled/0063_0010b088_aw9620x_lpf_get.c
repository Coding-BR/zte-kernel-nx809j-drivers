
long aw9620x_lpf_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a78,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

