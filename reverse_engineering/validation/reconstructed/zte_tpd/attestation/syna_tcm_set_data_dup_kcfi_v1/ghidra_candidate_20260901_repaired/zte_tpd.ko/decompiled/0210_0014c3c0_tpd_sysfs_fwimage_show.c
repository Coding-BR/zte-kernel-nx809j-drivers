
size_t tpd_sysfs_fwimage_show(void)

{
  long lVar1;
  size_t sVar2;
  void *in_x3;
  size_t in_x5;
  long *plVar3;
  ulong uVar4;
  ulong uVar5;
  
  lVar1 = tpd_cdev;
  plVar3 = *(long **)(tpd_cdev + 0xc58);
  if ((plVar3 == (long *)0x0) || (plVar3[1] == 0)) {
    sVar2 = _printk(&DAT_001717e6);
    return sVar2;
  }
  if (*plVar3 == 0) {
    sVar2 = _printk(&DAT_0016f684);
    return sVar2;
  }
  mutex_lock(tpd_cdev + 0xc60);
  uVar4 = (ulong)*(uint *)(lVar1 + 0x448);
  uVar5 = **(ulong **)(lVar1 + 0xc58);
  if (uVar4 <= uVar5 && uVar5 - uVar4 != 0) {
    sVar2 = uVar5 - uVar4;
    if (uVar4 + in_x5 <= uVar5) {
      sVar2 = in_x5;
    }
    memcpy(in_x3,(void *)(*(long *)(*(long *)(lVar1 + 0xc58) + 8) + (ulong)*(uint *)(lVar1 + 0x448))
           ,sVar2);
    *(int *)(lVar1 + 0x448) = *(int *)(lVar1 + 0x448) + (int)sVar2;
    mutex_unlock(lVar1 + 0xc60);
    return sVar2;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  vfree((*(ulong **)(lVar1 + 0xc58))[1]);
  *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
  kfree(*(undefined8 *)(lVar1 + 0xc58));
  *(undefined8 *)(lVar1 + 0xc58) = 0;
  sVar2 = _printk(&DAT_0016a980);
  return sVar2;
}

