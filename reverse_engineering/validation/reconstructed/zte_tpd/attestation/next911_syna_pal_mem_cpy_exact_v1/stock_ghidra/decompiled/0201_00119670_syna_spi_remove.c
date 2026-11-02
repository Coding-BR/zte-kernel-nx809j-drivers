
void syna_spi_remove(void)

{
  if (0 < DAT_00100cc8) {
    gpio_free();
  }
  if (0 < DAT_00100d10) {
    gpio_free();
  }
  if (0 < DAT_00100cc0) {
    gpio_free();
  }
  if (rx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    rx_buf = 0;
  }
  if (tx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    tx_buf = 0;
  }
  if (xfer != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    xfer = 0;
  }
  if (DAT_00100d48 == 1) {
    if (DAT_00100d58 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_00100d48) && (0 < DAT_00100d60)) {
    gpio_free();
  }
  if (DAT_00100d20 == 1) {
    if (DAT_00100d30 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_00100d20) && (0 < DAT_00100d38)) {
    gpio_free();
  }
  return;
}

