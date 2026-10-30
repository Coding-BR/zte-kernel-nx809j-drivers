
int syna_hw_interface_init(void)

{
  int iVar1;
  undefined *puVar2;
  
  _printk(&DAT_00135327,"syna_hw_interface_init");
  iVar1 = platform_device_register(&syna_spi_device);
  if (iVar1 < 0) {
    puVar2 = &DAT_0013405d;
  }
  else {
    p_device = &syna_spi_device;
    iVar1 = __spi_register_driver(&__this_module,syna_spi_driver);
    if (-1 < iVar1) {
      _printk(&DAT_0013d3d1,"syna_hw_interface_init");
      buf_size = 0;
      rx_buf = 0;
      tx_buf = 0;
      return iVar1;
    }
    puVar2 = &DAT_001332dc;
  }
  _printk(puVar2,"syna_hw_interface_init");
  return iVar1;
}

