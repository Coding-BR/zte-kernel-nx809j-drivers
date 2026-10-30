
undefined8 FUN_00102950(undefined8 param_1)

{
  int iVar1;
  long unaff_x20;
  long unaff_x21;
  
  iVar1 = __platform_driver_register(param_1,&__this_module);
  if (iVar1 < 0) {
    class_destroy(*(undefined8 *)(unaff_x21 + 0xed8));
    __unregister_chrdev(*(undefined4 *)(unaff_x20 + 0xed0),0,0x100,gf_driver._40_8_);
    _printk(&DAT_00103235);
  }
  netlink_init();
  _printk(&DAT_001033c7,iVar1);
  return 0;
}

