
size_t tpd_sysfs_fwimage_show(void)

{
  long lVar1;
  void *in_x3;
  size_t in_x5;
  long *plVar2;
  ulong uVar3;
  ulong uVar4;
  size_t __n;
  
  lVar1 = tpd_cdev;
  plVar2 = *(long **)(tpd_cdev + 0xc58);
  if ((plVar2 == (long *)0x0) || (plVar2[1] == 0)) {
    _printk(&DAT_0013cb0c);
    __n = 0xfffffffffffffff4;
  }
  else if (*plVar2 == 0) {
    _printk(&DAT_0013aa16);
    __n = 0xffffffffffffffea;
  }
  else {
    mutex_lock(tpd_cdev + 0xc60);
    uVar3 = (ulong)*(uint *)(lVar1 + 0x448);
    uVar4 = **(ulong **)(lVar1 + 0xc58);
    if (uVar4 < uVar3 || uVar4 - uVar3 == 0) {
      *(undefined4 *)(lVar1 + 0x448) = 0;
      vfree((*(ulong **)(lVar1 + 0xc58))[1]);
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      kfree(*(undefined8 *)(lVar1 + 0xc58));
      *(undefined8 *)(lVar1 + 0xc58) = 0;
      _printk(&DAT_00135e5e);
      mutex_unlock(lVar1 + 0xc60);
      __n = 0;
    }
    else {
      __n = uVar4 - uVar3;
      if (uVar3 + in_x5 <= uVar4) {
        __n = in_x5;
      }
      memcpy(in_x3,(void *)(*(long *)(*(long *)(lVar1 + 0xc58) + 8) +
                           (ulong)*(uint *)(lVar1 + 0x448)),__n);
      *(int *)(lVar1 + 0x448) = *(int *)(lVar1 + 0x448) + (int)__n;
      mutex_unlock(lVar1 + 0xc60);
    }
  }
  return __n;
}

