
undefined8 syna_spi_enable_irq(long *param_1)

{
  long lVar1;
  
  lVar1 = *param_1;
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181dbe,"syna_spi_enable_irq");
  }
  if (*(int *)(lVar1 + 0xb8) == 0) {
    return 0xfffffffa;
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(lVar1 + 0xc0);
}

