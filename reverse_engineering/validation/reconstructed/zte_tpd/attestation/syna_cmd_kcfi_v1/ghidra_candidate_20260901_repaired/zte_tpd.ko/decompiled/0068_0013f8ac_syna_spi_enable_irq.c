
undefined8 syna_spi_enable_irq(long *param_1,ulong param_2)

{
  undefined *puVar1;
  undefined8 uVar2;
  undefined1 uVar3;
  long lVar4;
  
  lVar4 = *param_1;
  if (lVar4 == 0) {
    uVar2 = _printk(&DAT_00181d7e,"syna_spi_enable_irq");
    return uVar2;
  }
  if (*(int *)(lVar4 + 0xb8) == 0) {
    return 0xfffffffa;
  }
  mutex_lock(lVar4 + 0xc0);
  if ((param_2 & 1) == 0) {
    if (*(byte *)(lVar4 + 0xbc) == 0) {
      puVar1 = &DAT_0017f34b;
      goto LAB_0013f968;
    }
    disable_irq_nosync(*(undefined4 *)(lVar4 + 0xb8));
    uVar3 = 0;
    puVar1 = &UNK_00182bb4;
  }
  else {
    if ((*(byte *)(lVar4 + 0xbc) & 1) != 0) {
      puVar1 = &DAT_0018030a;
      goto LAB_0013f968;
    }
    enable_irq(*(undefined4 *)(lVar4 + 0xb8));
    puVar1 = &DAT_00181fb2;
    uVar3 = 1;
  }
  *(undefined1 *)(lVar4 + 0xbc) = uVar3;
LAB_0013f968:
  uVar2 = _printk(puVar1,"syna_spi_enable_irq");
  return uVar2;
}

