
void syna_spi_remove(void)

{
  if (0 < DAT_0013103c) {
    gpio_free();
  }
  if (0 < DAT_00131084) {
    gpio_free();
  }
  if (0 < DAT_00131034) {
    gpio_free();
  }
  if (rx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828ba,"syna_pal_mem_free");
    }
    devm_kfree();
    rx_buf = 0;
  }
  if (tx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828ba,"syna_pal_mem_free");
    }
    devm_kfree();
    tx_buf = 0;
  }
  if (xfer != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828ba,"syna_pal_mem_free");
    }
    devm_kfree();
    xfer = 0;
  }
  if (DAT_001310bc == 1) {
    if (DAT_001310c8 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_001310bc) && (0 < DAT_001310d4)) {
    gpio_free();
  }
  if (DAT_00131094 == 1) {
    if (DAT_001310a0 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_00131094) && (0 < DAT_001310ac)) {
    gpio_free();
  }
  return;
}

