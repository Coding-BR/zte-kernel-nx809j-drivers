
undefined4 syna_spi_enable_irq(long *param_1,ulong param_2)

{
  undefined *puVar1;
  undefined1 uVar2;
  long lVar3;
  undefined4 uVar4;
  
  lVar3 = *param_1;
  if (lVar3 == 0) {
    _printk(&DAT_0013b1b1,"syna_spi_enable_irq");
    return 0xfffffffa;
  }
  if (*(int *)(lVar3 + 0xb8) == 0) {
    return 0xfffffffa;
  }
  mutex_lock(lVar3 + 0xc0);
  if ((param_2 & 1) == 0) {
    if (*(byte *)(lVar3 + 0xbc) == 0) {
      uVar4 = 0;
      puVar1 = &DAT_00135389;
      goto LAB_00119e5c;
    }
    disable_irq_nosync(*(undefined4 *)(lVar3 + 0xb8));
    uVar2 = 0;
    puVar1 = &UNK_0013d41a;
  }
  else {
    if ((*(byte *)(lVar3 + 0xbc) & 1) != 0) {
      uVar4 = 0;
      puVar1 = &DAT_001376bc;
      goto LAB_00119e5c;
    }
    enable_irq(*(undefined4 *)(lVar3 + 0xb8));
    puVar1 = &DAT_0013b8e8;
    uVar2 = 1;
  }
  uVar4 = 1;
  *(undefined1 *)(lVar3 + 0xbc) = uVar2;
LAB_00119e5c:
  _printk(puVar1,"syna_spi_enable_irq");
  mutex_unlock(lVar3 + 0xc0);
  return uVar4;
}

