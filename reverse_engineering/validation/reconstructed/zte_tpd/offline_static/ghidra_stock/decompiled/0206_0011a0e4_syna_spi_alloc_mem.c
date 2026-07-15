
undefined8 syna_spi_alloc_mem(uint param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  
  if (syna_spi_alloc_mem_xfer_count < param_1) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      if (p_device != 0) goto LAB_0011a144;
LAB_0011a270:
      puVar2 = &DAT_0013ccb3;
    }
    else {
      if (xfer != (void *)0x0) {
        devm_kfree(*(long *)(p_device + 0x70),xfer);
      }
      if (p_device == 0) goto LAB_0011a270;
LAB_0011a144:
      if (*(long *)(p_device + 0x70) == 0) goto LAB_0011a270;
      if (0 < (int)(param_1 * 0x88)) {
        xfer = (void *)devm_kmalloc(*(long *)(p_device + 0x70),(ulong)param_1 * 0x88,0xdc0);
        uVar1 = param_1;
        if (xfer == (void *)0x0) goto LAB_0011a2f4;
        goto LAB_0011a190;
      }
      puVar2 = &DAT_00138e98;
    }
    _printk(puVar2,"syna_pal_mem_alloc");
    xfer = (void *)0x0;
LAB_0011a2f4:
    _printk(&DAT_00135359,"syna_spi_alloc_mem");
    syna_spi_alloc_mem_xfer_count = 0;
    return 0xfffffff4;
  }
  memset(xfer,0,(ulong)(param_1 * 0x88));
  uVar1 = syna_spi_alloc_mem_xfer_count;
LAB_0011a190:
  syna_spi_alloc_mem_xfer_count = uVar1;
  if (param_2 <= buf_size) {
    return 0;
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
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
    puVar2 = &DAT_0013ccb3;
LAB_0011a318:
    _printk(puVar2,"syna_pal_mem_alloc");
    rx_buf = 0;
  }
  else {
    if ((int)param_2 < 1) {
      puVar2 = &DAT_00138e98;
      goto LAB_0011a318;
    }
    rx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
    if (rx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        tx_buf = 0;
      }
      else {
        tx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
        if (tx_buf != 0) {
          buf_size = param_2;
          return 0;
        }
      }
      puVar2 = &DAT_001340ad;
      goto LAB_0011a330;
    }
  }
  puVar2 = &DAT_0013ab5a;
LAB_0011a330:
  _printk(puVar2,"syna_spi_alloc_mem");
  buf_size = 0;
  return 0xfffffff4;
}

