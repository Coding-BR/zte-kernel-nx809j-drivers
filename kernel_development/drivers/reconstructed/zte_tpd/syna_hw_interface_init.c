int syna_hw_interface_init(void)
{
  int result;

  printk(unk_348D8, "syna_hw_interface_init");
  result = platform_device_register(&syna_spi_device);
  if ( result < 0 )
  {
    printk(unk_336E1, "syna_hw_interface_init");
    return result;
  }

  p_device = (__int64)&syna_spi_device;
  result = _spi_register_driver(THIS_MODULE, &syna_spi_driver);
  if ( result >= 0 )
  {
    printk(unk_3C561, "syna_hw_interface_init");
    buf_size = 0;
    rx_buf = 0;
    tx_buf = 0;
    return result;
  }

  printk(unk_32A1D, "syna_hw_interface_init");
  return result;
}
