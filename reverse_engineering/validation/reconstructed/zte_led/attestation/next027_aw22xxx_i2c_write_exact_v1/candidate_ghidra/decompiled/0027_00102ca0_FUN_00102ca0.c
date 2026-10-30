
undefined8 FUN_00102ca0(void)

{
  long unaff_x20;
  
  _printk(&DAT_00109317);
  devm_pinctrl_put(*(undefined8 *)(unaff_x20 + 0x330));
  *(undefined8 *)(unaff_x20 + 0x330) = 0;
  devm_kfree();
  return 0xffffffea;
}

