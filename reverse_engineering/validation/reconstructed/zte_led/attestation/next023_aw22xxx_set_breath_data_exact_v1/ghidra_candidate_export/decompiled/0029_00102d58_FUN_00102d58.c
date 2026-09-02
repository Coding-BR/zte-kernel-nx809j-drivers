
int FUN_00102d58(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x20;
  long unaff_x21;
  long unaff_x24;
  
  iVar1 = aw22xxx_read_chipid();
  if (-1 < iVar1) {
    if ((*(int *)(unaff_x20 + 0x2e4) < 0) || (*(byte *)(unaff_x20 + 0x2ec) != 0)) {
      *(byte *)(unaff_x20 + 0x2ec) = *(byte *)(unaff_x20 + 0x2ec) | 1;
    }
    else {
      aw22xxx_interrupt_setup();
      if (0xb < *(uint *)(unaff_x24 + 0x3a0)) {
        _printk(&DAT_00108d05);
      }
      gpio_to_desc(*(undefined4 *)(unaff_x20 + 0x2e4));
      gpiod_to_irq();
      iVar1 = devm_request_threaded_irq();
      if (iVar1 != 0) {
        gpio_to_desc(*(undefined4 *)(unaff_x20 + 0x2e4));
        gpiod_to_irq();
        _dev_err();
        goto LAB_00102adc;
      }
    }
    *(long *)(unaff_x21 + 0xb8) = unaff_x20;
    iVar1 = aw22xxx_parse_led_cdev();
    if ((-1 < iVar1) && (iVar1 = aw22xxx_alloc_name_array(), -1 < iVar1)) {
      aw22xxx_fw_name._0_7_ = 0x78787832327761;
      aw22xxx_fw_name._7_1_ = 0x5f;
      uRam000000000010ff80 = 0x6e69622e7766;
      aw22xxx_fw_init();
      _printk(&DAT_00108798,"aw22xxx_i2c_probe");
      uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x20 + 0x2e0));
      iVar1 = gpiod_direction_output_raw(uVar2,0);
      if (iVar1 != 0) {
        _printk(&DAT_00109b38);
      }
      lVar3 = zlog_register_client(zlog_aw22xxx_dev);
      *(long *)(unaff_x20 + 0x350) = lVar3;
      if (lVar3 == 0) {
        _printk(&DAT_00108f07);
      }
      _printk(&DAT_00108a25);
      aw22xxx_create_proc_entry();
      return 0;
    }
  }
  _dev_err();
LAB_00102adc:
  devm_pinctrl_put(*(undefined8 *)(unaff_x20 + 0x330));
  *(undefined8 *)(unaff_x20 + 0x330) = 0;
  devm_kfree();
  return iVar1;
}

