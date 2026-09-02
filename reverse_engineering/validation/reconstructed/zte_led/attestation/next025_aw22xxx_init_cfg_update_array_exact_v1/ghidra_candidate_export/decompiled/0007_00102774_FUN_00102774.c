
void FUN_00102774(long param_1,undefined8 *param_2,undefined1 param_3,undefined1 param_4)

{
  long lVar1;
  ulong uVar2;
  long unaff_x19;
  undefined8 uVar3;
  undefined1 uStack0000000000000004;
  undefined1 uStack0000000000000005;
  long lStack0000000000000008;
  
  lStack0000000000000008 = *(long *)(param_1 + 0x710);
  uVar3 = *param_2;
  uStack0000000000000004 = param_3;
  uStack0000000000000005 = param_4;
  uVar2 = i2c_transfer_buffer_flags(uVar3,&stack0x00000004,2,0);
  if ((int)uVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
    gpiod_get_raw_value();
    _printk(&DAT_001093e1,"aw22xxx_i2c_write");
    msleep(1);
    uVar2 = i2c_transfer_buffer_flags(uVar3,&stack0x00000004,2,0);
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
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack0000000000000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

