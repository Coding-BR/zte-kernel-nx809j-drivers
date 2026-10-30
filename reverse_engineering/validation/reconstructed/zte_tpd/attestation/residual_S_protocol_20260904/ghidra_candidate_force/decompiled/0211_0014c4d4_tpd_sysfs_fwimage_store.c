
undefined8 tpd_sysfs_fwimage_store(void)

{
  long lVar1;
  ulong uVar2;
  long in_x5;
  ulong *puVar3;
  ulong uVar4;
  
  puVar3 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar3 == (ulong *)0x0) || (puVar3[1] == 0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001717e6);
  }
  uVar4 = *puVar3;
  if (uVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f684);
  }
  uVar2 = (ulong)*(uint *)(tpd_cdev + 0x448);
  if (uVar4 < uVar2 || uVar4 - uVar2 == 0) {
    *(undefined4 *)(tpd_cdev + 0x448) = 0;
    return 0xffffffffffffffea;
  }
  lVar1 = uVar4 - uVar2;
  if (uVar2 + in_x5 <= uVar4) {
    lVar1 = in_x5;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016a99a,uVar2,lVar1);
}

