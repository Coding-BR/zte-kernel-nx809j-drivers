
void FUN_001027d4(void)

{
  long lVar1;
  ulong uVar2;
  undefined8 uVar3;
  long unaff_x19;
  long in_stack_00000008;
  
  gpiod_get_raw_value();
  _printk(&DAT_001093e1,"aw22xxx_i2c_write");
  msleep(1);
  uVar2 = i2c_transfer_buffer_flags();
  if ((int)uVar2 < 0) {
    uVar2 = uVar2 & 0xffffffff;
    gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
    gpiod_get_raw_value();
    _printk(&DAT_001090a2,"aw22xxx_i2c_write");
    uVar3 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
    gpiod_direction_output_raw(uVar3,1);
    _printk(&DAT_00108cea,"aw22xxx_i2c_write");
    msleep(1);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

