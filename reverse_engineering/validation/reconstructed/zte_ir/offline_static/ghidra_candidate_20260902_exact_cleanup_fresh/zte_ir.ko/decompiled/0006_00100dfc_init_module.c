
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00100a1e);
  _zte_ir_probe__alloc_tag = __register_chrdev(0,0,1,&DAT_001009d5,&PTR___this_module_00100c60);
  _printk(&DAT_00100a4c,_zte_ir_probe__alloc_tag);
  _zte_ir_write = class_create("zte_ir_class");
  if (_zte_ir_write < 0xfffffffffffff001) {
    iVar1 = __spi_register_driver(&__this_module,0x100040);
    if (iVar1 < 0) {
      class_destroy(0xd10503ffd503233f);
      __unregister_chrdev(_zte_ir_probe__alloc_tag,0,0x100,0xa901ffffa902ffff);
    }
    _printk(&DAT_00100a70,iVar1);
  }
  else {
    __unregister_chrdev(_zte_ir_probe__alloc_tag,0,0x100,0xa901ffffa902ffff);
    iVar1 = -0x2afcdcc1;
  }
  return iVar1;
}

