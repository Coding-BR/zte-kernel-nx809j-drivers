static void __exit zte_ir_exit(void)
{
	spi_unregister_driver(&zte_ir_spi_driver);
	class_destroy(zte_ir_class);
	zte_ir_class = NULL;
	__unregister_chrdev(zte_ir_major, ZTE_IR_FIRST_MINOR,
			     ZTE_IR_MINOR_COUNT, ZTE_IR_DRIVER_NAME);
	zte_ir_major = 0;
	pr_debug("zte_ir: unregistered\n");
}
