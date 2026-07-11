static int __init zte_ir_init(void)
{
	int result;

	result = __register_chrdev(0, ZTE_IR_FIRST_MINOR, ZTE_IR_MINOR_COUNT,
				   ZTE_IR_DRIVER_NAME, &zte_ir_fops);
	if (result < 0)
		return result;
	zte_ir_major = result;

	zte_ir_class = class_create(ZTE_IR_CLASS_NAME);
	if (IS_ERR(zte_ir_class)) {
		result = PTR_ERR(zte_ir_class);
		zte_ir_class = NULL;
		goto out_unregister_chrdev;
	}

	result = spi_register_driver(&zte_ir_spi_driver);
	if (result)
		goto out_destroy_class;

	pr_info("zte_ir: registered major=%d\n", zte_ir_major);
	return 0;

out_destroy_class:
	class_destroy(zte_ir_class);
	zte_ir_class = NULL;
out_unregister_chrdev:
	__unregister_chrdev(zte_ir_major, ZTE_IR_FIRST_MINOR,
			     ZTE_IR_MINOR_COUNT, ZTE_IR_DRIVER_NAME);
	zte_ir_major = 0;
	return result;
}
