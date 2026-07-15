
void cleanup_module(void)

{
  driver_unregister(0x1000b0);
  class_destroy(zte_ir_class);
  __unregister_chrdev(spidev_major,0,0x100,zte_ir_spi_driver._32_8_);
  return;
}

