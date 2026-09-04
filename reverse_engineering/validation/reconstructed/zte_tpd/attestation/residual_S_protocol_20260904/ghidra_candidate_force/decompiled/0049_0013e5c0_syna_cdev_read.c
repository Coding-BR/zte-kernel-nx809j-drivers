
ulong syna_cdev_read(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if (param_3 == 0) {
    uVar1 = 0;
  }
  else {
    uVar2 = *(undefined8 *)(g_cdev_data + 0xa8);
    mutex_lock(&DAT_0015eb00);
    uVar2 = syna_cdev_ioctl_raw_read(uVar2,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
    uVar1 = (ulong)(int)uVar2;
    if (uVar1 != param_3) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00180ff3,"syna_cdev_read",param_3 & 0xffffffff,uVar2);
    }
    mutex_unlock(&DAT_0015eb00);
  }
  return uVar1;
}

