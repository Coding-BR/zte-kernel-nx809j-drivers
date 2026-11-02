
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void aw22xxx_i2c_write(long param_1,byte param_2,byte param_3)

{
  long lVar1;
  ulong uVar2;
  undefined8 uVar3;
  byte bStack_3c;
  byte bStack_3b;
  long lStack_38;
  
  lVar1 = sp_el0;
  lStack_38 = *(long *)(lVar1 + 0x710);
  uVar3 = *(undefined8 *)param_1;
  bStack_3c = param_2;
  bStack_3b = param_3;
  uVar2 = i2c_transfer_buffer_flags(uVar3,&bStack_3c,2,0);
  if ((int)uVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x2e0));
    gpiod_get_raw_value();
    _printk(&DAT_001093e1,"aw22xxx_i2c_write");
    msleep(1);
    uVar2 = i2c_transfer_buffer_flags(uVar3,&bStack_3c,2,0);
    if ((int)uVar2 < 0) {
      uVar2 = uVar2 & 0xffffffff;
      gpio_to_desc(*(undefined4 *)(param_1 + 0x2e0));
      gpiod_get_raw_value();
      _printk(&DAT_001090a2,"aw22xxx_i2c_write");
      uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0x2e0));
      gpiod_direction_output_raw(uVar3,1);
      _printk(&DAT_00108cea,"aw22xxx_i2c_write");
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

