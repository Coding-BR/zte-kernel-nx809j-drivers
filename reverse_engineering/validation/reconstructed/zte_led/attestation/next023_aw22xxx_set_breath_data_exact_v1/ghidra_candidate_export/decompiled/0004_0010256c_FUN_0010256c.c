
void FUN_0010256c(undefined8 param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  ulong uVar2;
  undefined8 uVar3;
  long unaff_x19;
  undefined1 uStack0000000000000004;
  undefined1 uStack0000000000000005;
  long in_stack_00000008;
  
  uStack0000000000000004 = param_2;
  uStack0000000000000005 = param_3;
  uVar2 = i2c_transfer_buffer_flags();
  if ((int)uVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
    gpiod_get_raw_value();
    _printk(&DAT_00109517,"aw22xxx_i2c_write");
    msleep(1);
    uVar2 = i2c_transfer_buffer_flags();
    if ((int)uVar2 < 0) {
      uVar2 = uVar2 & 0xffffffff;
      gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
      gpiod_get_raw_value();
      _printk(&DAT_001091af,"aw22xxx_i2c_write");
      uVar3 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
      gpiod_direction_output_raw(uVar3,1);
      _printk(&UNK_00108de2,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

