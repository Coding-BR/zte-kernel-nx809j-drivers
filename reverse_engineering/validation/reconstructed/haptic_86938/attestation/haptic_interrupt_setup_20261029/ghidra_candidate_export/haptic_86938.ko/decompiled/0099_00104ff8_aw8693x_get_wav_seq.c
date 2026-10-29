
void aw8693x_get_wav_seq(long param_1,uint param_2)

{
  long lVar1;
  uint uVar2;
  undefined8 local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  uVar2 = param_2;
  if (7 < param_2) {
    uVar2 = 8;
  }
  local_40 = 0;
  i2c_r_bytes(param_1,10,&local_40,(ulong)uVar2);
  if (param_2 != 0) {
    memcpy((void *)(param_1 + 0x1e),&local_40,(ulong)uVar2);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

