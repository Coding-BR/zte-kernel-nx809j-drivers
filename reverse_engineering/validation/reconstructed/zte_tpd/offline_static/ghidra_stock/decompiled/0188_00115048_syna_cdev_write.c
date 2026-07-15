
ulong syna_cdev_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if (param_3 == 0) {
    uVar2 = 0;
  }
  else {
    uVar3 = *(undefined8 *)(g_cdev_data + 0xa8);
    mutex_lock(&DAT_00131e20);
    iVar1 = syna_cdev_ioctl_raw_write(uVar3,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
    uVar2 = (ulong)iVar1;
    if (uVar2 != param_3) {
      _printk(&DAT_001395b4,"syna_cdev_write",param_3 & 0xffffffff,iVar1);
    }
    mutex_unlock(&DAT_00131e20);
  }
  return uVar2;
}

