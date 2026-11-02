
undefined8 syna_spi_alloc_mem(uint param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  undefined1 *puVar3;
  undefined8 uVar4;
  
  if (param_1 <= syna_spi_alloc_mem_xfer_count) {
    memset(xfer,0,(ulong)(param_1 * 0x88));
    uVar1 = syna_spi_alloc_mem_xfer_count;
LAB_00157b30:
    syna_spi_alloc_mem_xfer_count = uVar1;
    if (param_2 <= buf_size) {
      return 0;
    }
    if (rx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
        uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar4;
      }
      devm_kfree();
      rx_buf = 0;
    }
    if (tx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
        uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar4;
      }
      devm_kfree();
      tx_buf = 0;
    }
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      puVar2 = &DAT_001828ba;
    }
    else {
      if (0 < (int)param_2) {
        rx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
        if (rx_buf == 0) {
          puVar3 = &DAT_00181cc6;
        }
        else {
          if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
            uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_alloc");
            return uVar4;
          }
          tx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
          if (tx_buf != 0) {
            buf_size = param_2;
            return 0;
          }
          puVar3 = &DAT_0017ed7f;
          tx_buf = 0;
        }
        uVar4 = _printk(puVar3,"syna_spi_alloc_mem");
        return uVar4;
      }
      puVar2 = &DAT_00180da7;
    }
    uVar4 = _printk(puVar2,"syna_pal_mem_alloc");
    return uVar4;
  }
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
    uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
    return uVar4;
  }
  if (xfer != (void *)0x0) {
    devm_kfree(*(long *)(p_device + 0x70),xfer);
  }
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
    puVar2 = &DAT_001828ba;
  }
  else {
    if (0 < (int)(param_1 * 0x88)) {
      xfer = (void *)devm_kmalloc(*(long *)(p_device + 0x70),(ulong)param_1 * 0x88,0xdc0);
      uVar1 = param_1;
      if (xfer == (void *)0x0) {
        uVar4 = _printk(&DAT_0017f5c4,"syna_spi_alloc_mem");
        return uVar4;
      }
      goto LAB_00157b30;
    }
    puVar2 = &DAT_00180da7;
  }
  uVar4 = _printk(puVar2,"syna_pal_mem_alloc");
  return uVar4;
}

