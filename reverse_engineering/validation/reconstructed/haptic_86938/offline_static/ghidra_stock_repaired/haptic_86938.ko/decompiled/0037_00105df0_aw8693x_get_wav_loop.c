
long aw8693x_get_wav_loop(long param_1,char *param_2)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined4 local_4c;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  local_4c = 0;
  i2c_r_bytes(param_1,0x12,&local_4c,4);
  *(byte *)(param_1 + 0x27) = (byte)local_4c & 0xf;
  *(byte *)(param_1 + 0x26) = (byte)local_4c >> 4;
  iVar2 = snprintf(param_2,0x1000,"seq%d loop: 0x%02x\n",1);
  lVar3 = (long)iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",2,
                   (ulong)*(byte *)(param_1 + 0x27));
  lVar3 = lVar3 + iVar2;
  *(byte *)(param_1 + 0x29) = local_4c._1_1_ & 0xf;
  *(byte *)(param_1 + 0x28) = local_4c._1_1_ >> 4;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",3);
  lVar3 = lVar3 + iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",4,
                   (ulong)*(byte *)(param_1 + 0x29));
  lVar3 = lVar3 + iVar2;
  *(byte *)(param_1 + 0x2b) = local_4c._2_1_ & 0xf;
  *(byte *)(param_1 + 0x2a) = local_4c._2_1_ >> 4;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",5);
  lVar3 = lVar3 + iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",6,
                   (ulong)*(byte *)(param_1 + 0x2b));
  lVar3 = lVar3 + iVar2;
  *(byte *)(param_1 + 0x2d) = local_4c._3_1_ & 0xf;
  *(byte *)(param_1 + 0x2c) = local_4c._3_1_ >> 4;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",7);
  lVar3 = lVar3 + iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",8,
                   (ulong)*(byte *)(param_1 + 0x2d));
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return lVar3 + iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

