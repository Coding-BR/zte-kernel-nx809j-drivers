
undefined8 tpd_sysfs_fwimage_store(void)

{
  long lVar1;
  undefined8 uVar2;
  ulong uVar3;
  long in_x5;
  ulong *puVar4;
  ulong uVar5;
  
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 == (ulong *)0x0) || (puVar4[1] == 0)) {
    uVar2 = _printk(&DAT_001717e6);
    return uVar2;
  }
  uVar5 = *puVar4;
  if (uVar5 == 0) {
    uVar2 = _printk(&DAT_0016f684);
    return uVar2;
  }
  uVar3 = (ulong)*(uint *)(tpd_cdev + 0x448);
  if (uVar5 < uVar3 || uVar5 - uVar3 == 0) {
    *(undefined4 *)(tpd_cdev + 0x448) = 0;
    return 0xffffffffffffffea;
  }
  lVar1 = uVar5 - uVar3;
  if (uVar3 + in_x5 <= uVar5) {
    lVar1 = in_x5;
  }
  uVar2 = _printk(&DAT_0016a99a,uVar3,lVar1);
  return uVar2;
}

