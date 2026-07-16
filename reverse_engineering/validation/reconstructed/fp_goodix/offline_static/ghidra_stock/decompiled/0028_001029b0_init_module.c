
ulong init_module(void)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  
  uVar2 = __register_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi",&gf_fops);
  uVar3 = uVar2 & 0xffffffff;
  if ((int)uVar2 < 0) {
    _printk(&DAT_00103de5);
  }
  else {
    SPIDEV_MAJOR = (int)uVar2;
    gf_class = class_create("goodix_fp");
    if (gf_class < 0xfffffffffffff001) {
      iVar1 = __platform_driver_register(gf_driver,&__this_module);
      if (iVar1 < 0) {
        class_destroy(gf_class);
        __unregister_chrdev(SPIDEV_MAJOR,0,0x100,gf_driver._40_8_);
        _printk(&DAT_00103339);
      }
      netlink_init();
      _printk(&DAT_001034cb,iVar1);
      uVar3 = 0;
    }
    else {
      __unregister_chrdev(SPIDEV_MAJOR,0,0x100,gf_driver._40_8_);
      _printk(&DAT_00103078);
      uVar3 = gf_class & 0xffffffff;
    }
  }
  return uVar3;
}

