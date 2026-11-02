
undefined8 syna_spi_enable_irq(long *param_1,ulong param_2)

{
  undefined *puVar1;
  undefined1 uVar2;
  long lVar3;
  
  lVar3 = *param_1;
  if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d7e,"syna_spi_enable_irq");
  }
  if (*(int *)(lVar3 + 0xb8) == 0) {
    return 0xfffffffa;
  }
  mutex_lock(lVar3 + 0xc0);
  if ((param_2 & 1) == 0) {
    if (*(byte *)(lVar3 + 0xbc) == 0) {
      puVar1 = &DAT_0017f34b;
      goto LAB_0013f968;
    }
    disable_irq_nosync(*(undefined4 *)(lVar3 + 0xb8));
    uVar2 = 0;
    puVar1 = &UNK_00182bb4;
  }
  else {
    if ((*(byte *)(lVar3 + 0xbc) & 1) != 0) {
      puVar1 = &DAT_0018030a;
      goto LAB_0013f968;
    }
    enable_irq(*(undefined4 *)(lVar3 + 0xb8));
    puVar1 = &DAT_00181fb2;
    uVar2 = 1;
  }
  *(undefined1 *)(lVar3 + 0xbc) = uVar2;
LAB_0013f968:
                    /* WARNING: Subroutine does not return */
  _printk(puVar1,"syna_spi_enable_irq");
}

