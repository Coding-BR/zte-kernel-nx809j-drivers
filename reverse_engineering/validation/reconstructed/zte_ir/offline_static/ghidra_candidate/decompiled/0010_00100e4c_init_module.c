
ulong init_module(void)

{
  ulong uVar1;
  ulong uVar2;
  
  uVar1 = __register_chrdev(0,0,1,"zte_ir",zte_ir_fops);
  uVar2 = uVar1 & 0xffffffff;
  if (-1 < (int)uVar1) {
    spidev_major = (int)uVar1;
    uVar2 = class_create("zte_ir_class");
    zte_ir_class = uVar2;
    if (uVar2 < 0xfffffffffffff001) {
      uVar1 = __spi_register_driver(&__this_module,&zte_ir_spi_driver);
      uVar2 = uVar1 & 0xffffffff;
      if ((int)uVar1 == 0) {
        _printk(&DAT_00101379,spidev_major);
        goto LAB_00100ef0;
      }
      class_destroy(zte_ir_class);
    }
    __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  }
LAB_00100ef0:
  return uVar2 & 0xffffffff;
}

