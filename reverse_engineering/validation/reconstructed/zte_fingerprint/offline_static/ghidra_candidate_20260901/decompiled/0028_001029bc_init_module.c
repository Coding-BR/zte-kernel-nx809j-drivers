
int init_module(void)

{
  int iVar1;
  
  SPIDEV_MAJOR = __register_chrdev(0,0,0x100,"goodix_fp_spi",&gf_fops);
  if (SPIDEV_MAJOR < 0) {
    _printk(&DAT_00103842,"zte_fp_init");
    iVar1 = SPIDEV_MAJOR;
  }
  else {
    gf_class = class_create("goodix_fp");
    if (gf_class < 0xfffffffffffff001) {
      iVar1 = __platform_driver_register(gf_driver,&__this_module);
      if (iVar1 != 0) {
        _printk(&DAT_001036ae,"zte_fp_init");
        class_destroy(gf_class);
        __unregister_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi");
      }
      netlink_init();
      _printk(&DAT_001038ca,"zte_fp_init",iVar1);
      iVar1 = 0;
    }
    else {
      _printk(&DAT_001034a7,"zte_fp_init");
      iVar1 = (int)gf_class;
      __unregister_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi");
    }
  }
  return iVar1;
}

