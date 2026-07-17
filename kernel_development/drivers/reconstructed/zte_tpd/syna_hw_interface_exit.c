void syna_hw_interface_exit(void)
{
  spi_unregister_driver(&syna_spi_driver);
  platform_device_unregister(&syna_spi_device);
}
