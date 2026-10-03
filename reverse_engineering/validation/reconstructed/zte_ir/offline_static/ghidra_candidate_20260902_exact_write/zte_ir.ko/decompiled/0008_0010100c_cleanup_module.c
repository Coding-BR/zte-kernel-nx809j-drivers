
void cleanup_module(void)

{
  driver_unregister(&PTR_s_zte_ir_001000b0);
  class_destroy(zte_ir_class);
  __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  return;
}

