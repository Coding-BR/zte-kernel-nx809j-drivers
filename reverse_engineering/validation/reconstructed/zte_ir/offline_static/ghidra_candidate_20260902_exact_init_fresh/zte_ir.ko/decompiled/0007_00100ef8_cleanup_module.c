
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void cleanup_module(void)

{
  driver_unregister(0x100060);
  class_destroy(_zte_ir_write);
  __unregister_chrdev(_zte_ir_probe__alloc_tag,0,0x100,0xa901ffffa902ffff);
  return;
}

