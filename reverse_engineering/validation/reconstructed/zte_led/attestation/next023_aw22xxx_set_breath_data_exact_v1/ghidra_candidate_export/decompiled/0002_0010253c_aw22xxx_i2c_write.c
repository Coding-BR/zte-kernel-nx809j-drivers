
void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  ulong uVar2;
  undefined8 uVar3;
  undefined1 uStack_3c;
  undefined1 uStack_3b;
  long lStack_38;
  
  lVar1 = sp_el0;
  lStack_38 = *(long *)(lVar1 + 0x710);
  uVar3 = *param_1;
  uStack_3c = param_2;
  uStack_3b = param_3;
  uVar2 = i2c_transfer_buffer_flags(uVar3,&uStack_3c,2,0);
  if ((int)uVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    gpiod_get_raw_value();
    _printk(&DAT_00109517,"aw22xxx_i2c_write");
    msleep(1);
    uVar2 = i2c_transfer_buffer_flags(uVar3,&uStack_3c,2,0);
    if ((int)uVar2 < 0) {
      uVar2 = uVar2 & 0xffffffff;
      gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_get_raw_value();
      _printk(&DAT_001091af,"aw22xxx_i2c_write");
      uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_direction_output_raw(uVar3,1);
      _printk(&UNK_00108de2,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

