
void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 local_2c;
  undefined1 local_2b;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uVar3 = *param_1;
  local_2c = param_2;
  local_2b = param_3;
  iVar2 = i2c_transfer_buffer_flags(uVar3,&local_2c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    gpiod_get_raw_value();
    _printk(&DAT_001071b6,"aw22xxx_i2c_write");
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(uVar3,&local_2c,2,0);
    if (iVar2 < 0) {
      gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_get_raw_value();
      _printk(&DAT_00106da9,"aw22xxx_i2c_write");
      uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_direction_output_raw(uVar3,1);
      _printk(&DAT_0010690e,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

