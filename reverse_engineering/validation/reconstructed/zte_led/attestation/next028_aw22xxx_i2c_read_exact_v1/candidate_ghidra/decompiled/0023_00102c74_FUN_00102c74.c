
void FUN_00102c74(void)

{
  long unaff_x20;
  
  _dev_err();
  *(undefined4 *)(unaff_x20 + 0x2e0) = 0xffffffff;
  devm_pinctrl_put(*(undefined8 *)(unaff_x20 + 0x330));
  *(undefined8 *)(unaff_x20 + 0x330) = 0;
  devm_kfree();
  FUN_00102b8c(0xffffffea);
  return;
}

