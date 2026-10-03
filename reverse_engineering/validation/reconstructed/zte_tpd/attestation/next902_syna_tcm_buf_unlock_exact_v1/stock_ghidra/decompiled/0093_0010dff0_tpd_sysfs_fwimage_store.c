
size_t tpd_sysfs_fwimage_store(void)

{
  long lVar1;
  size_t sVar2;
  ulong uVar3;
  void *in_x3;
  size_t in_x5;
  ulong *puVar4;
  ulong uVar5;
  
  lVar1 = tpd_cdev;
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 == (ulong *)0x0) || (puVar4[1] == 0)) {
    _printk(&DAT_0013cb0c);
    sVar2 = 0xfffffffffffffff4;
  }
  else {
    uVar5 = *puVar4;
    if (uVar5 == 0) {
      _printk(&DAT_0013aa16);
    }
    else {
      uVar3 = (ulong)*(uint *)(tpd_cdev + 0x448);
      if (uVar3 <= uVar5 && uVar5 - uVar3 != 0) {
        sVar2 = uVar5 - uVar3;
        if (uVar3 + in_x5 <= uVar5) {
          sVar2 = in_x5;
        }
        _printk(&DAT_00135e78,uVar3,sVar2);
        mutex_lock(lVar1 + 0xc60);
        memcpy((void *)(*(long *)(*(long *)(lVar1 + 0xc58) + 8) + (ulong)*(uint *)(lVar1 + 0x448)),
               in_x3,sVar2);
        *(int *)(lVar1 + 0x448) = *(int *)(lVar1 + 0x448) + (int)sVar2;
        mutex_unlock(lVar1 + 0xc60);
        return sVar2;
      }
      *(undefined4 *)(tpd_cdev + 0x448) = 0;
    }
    sVar2 = 0xffffffffffffffea;
  }
  return sVar2;
}

