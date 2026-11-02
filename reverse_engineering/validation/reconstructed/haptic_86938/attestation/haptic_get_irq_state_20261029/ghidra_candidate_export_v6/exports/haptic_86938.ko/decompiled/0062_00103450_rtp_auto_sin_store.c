
long rtp_auto_sin_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    _printk(&DAT_0010600a,"haptic_hv",0x8dd,"rtp_auto_sin_store");
    param_4 = (long)iVar1;
    goto LAB_00103508;
  }
  mutex_lock(lVar3 + 0x248);
  if (local_3c == 0) {
    uVar2 = 0;
    *(undefined4 *)(lVar3 + -0x68) = 0;
LAB_001034ec:
    i2c_w_bits(lVar3 + -0xa8,0x2d,0xffffffdf,uVar2);
  }
  else {
    if (local_3c < *(uint *)(lVar3 + 0x638)) {
      uVar2 = 0x20;
      *(undefined4 *)(lVar3 + -0x68) = 1;
      *(uint *)(lVar3 + -0x18) = local_3c;
      goto LAB_001034ec;
    }
    *(undefined4 *)(lVar3 + -0x68) = 0;
    _printk(&DAT_00105dcb,"haptic_hv",0x8ee,"rtp_auto_sin_store");
  }
  mutex_unlock(lVar3 + 0x248);
  queue_work_on(0x20,*(undefined8 *)(lVar3 + 0x3a0),lVar3 + 0x2f8);
LAB_00103508:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

