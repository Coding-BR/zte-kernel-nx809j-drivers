
void syna_hw_interface_exit(void)

{
  driver_unregister(0x100b68);
  platform_device_unregister(&syna_spi_device);
  return;
}

