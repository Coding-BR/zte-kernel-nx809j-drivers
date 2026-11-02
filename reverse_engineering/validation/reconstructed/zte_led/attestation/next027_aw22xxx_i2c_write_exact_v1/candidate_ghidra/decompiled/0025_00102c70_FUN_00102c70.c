
undefined8 FUN_00102c70(void)

{
  long unaff_x20;
  
  _dev_err();
  *(undefined4 *)(unaff_x20 + 0x2e0) = 0xffffffff;
  devm_pinctrl_put(*(undefined8 *)(unaff_x20 + 0x330));
  *(undefined8 *)(unaff_x20 + 0x330) = 0;
  devm_kfree();
  return 0xffffffea;
}

