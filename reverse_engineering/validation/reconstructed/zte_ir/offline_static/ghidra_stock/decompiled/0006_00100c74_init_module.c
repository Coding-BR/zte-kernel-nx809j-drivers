
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00101286);
  spidev_major = __register_chrdev(0,0,1,&DAT_0010123d,zte_ir_fops);
  _printk(&DAT_001012b4,spidev_major);
  zte_ir_class = class_create("zte_ir_class");
  if (zte_ir_class < 0xfffffffffffff001) {
    iVar1 = __spi_register_driver(&__this_module,zte_ir_spi_driver);
    if (iVar1 < 0) {
      class_destroy(zte_ir_class);
      __unregister_chrdev(spidev_major,0,0x100,zte_ir_spi_driver._32_8_);
    }
    _printk(&DAT_001012d8,iVar1);
  }
  else {
    __unregister_chrdev(spidev_major,0,0x100,zte_ir_spi_driver._32_8_);
    iVar1 = (int)zte_ir_class;
  }
  return iVar1;
}

