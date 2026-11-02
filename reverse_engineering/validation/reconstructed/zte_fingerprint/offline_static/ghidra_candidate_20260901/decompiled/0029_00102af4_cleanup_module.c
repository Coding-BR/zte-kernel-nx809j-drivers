
void cleanup_module(void)

{
  netlink_exit();
  platform_driver_unregister(gf_driver);
  class_destroy(gf_class);
  __unregister_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi");
  return;
}

