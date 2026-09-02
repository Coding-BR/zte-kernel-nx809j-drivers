
void FUN_00101f94(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  undefined1 uStack0000000000000004;
  undefined1 uStack0000000000000005;
  long lStack0000000000000008;
  
  lVar1 = sp_el0;
  lStack0000000000000008 = *(long *)(lVar1 + 0x710);
  uStack0000000000000004 = param_2;
  uStack0000000000000005 = param_3;
  iVar2 = i2c_transfer_buffer_flags(*param_1,&stack0x00000004,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    uVar3 = gpiod_get_raw_value();
    _printk(&DAT_001068cb,"aw22xxx_i2c_write",0,iVar2,uVar3);
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(*param_1,&stack0x00000004,2,0);
    if (iVar2 < 0) {
      gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      uVar3 = gpiod_get_raw_value();
      _printk(&DAT_001068cb,"aw22xxx_i2c_write",1,iVar2,uVar3);
      uVar4 = gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_direction_output_raw(uVar4,1);
      _printk(&DAT_001067f3,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack0000000000000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

