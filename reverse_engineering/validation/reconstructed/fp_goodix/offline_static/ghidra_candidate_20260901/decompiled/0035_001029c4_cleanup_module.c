
void cleanup_module(void)

{
  netlink_exit();
  platform_driver_unregister(gf_driver);
  class_destroy(gf_class);
  __unregister_chrdev(SPIDEV_MAJOR,0,0x100,gf_driver._40_8_);
  return;
}

