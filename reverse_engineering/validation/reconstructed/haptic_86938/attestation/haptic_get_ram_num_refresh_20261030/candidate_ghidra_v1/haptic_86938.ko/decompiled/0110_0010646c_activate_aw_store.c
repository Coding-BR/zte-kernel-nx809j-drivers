
long activate_aw_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_0010803d,"haptic_hv",0x92d,"activate_aw_store",local_2c);
    if ((*(byte *)(lVar2 + -0xa2) & 1) == 0) {
      _printk(&DAT_00108ec2,"haptic_hv",0x92f,"activate_aw_store");
    }
    else {
      mutex_lock(lVar2 + 0x248);
      hrtimer_cancel(lVar2 + 0x288);
      *(undefined4 *)(lVar2 + -0x68) = local_2c;
      mutex_unlock(lVar2 + 0x248);
      queue_work_on(0x20,*(undefined8 *)(lVar2 + 0x3a0),lVar2 + 0x380);
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

