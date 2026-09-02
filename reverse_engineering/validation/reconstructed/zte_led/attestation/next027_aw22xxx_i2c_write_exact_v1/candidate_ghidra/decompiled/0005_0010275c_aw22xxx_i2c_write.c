
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void aw22xxx_i2c_write(void)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined8 *in_x0;
  undefined8 uVar4;
  undefined1 auStack_3c [4];
  long lStack_38;
  
  lVar1 = sp_el0;
  lStack_38 = *(long *)(lVar1 + 0x710);
  iVar2 = i2c_transfer_buffer_flags(*in_x0,auStack_3c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(in_x0 + 0x5c));
    uVar3 = gpiod_get_raw_value();
    _printk(&DAT_00106d3b,"aw22xxx_i2c_write",0,iVar2,uVar3);
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(*in_x0,auStack_3c,2,0);
    if (iVar2 < 0) {
      gpio_to_desc(*(undefined4 *)(in_x0 + 0x5c));
      uVar3 = gpiod_get_raw_value();
      _printk(&DAT_00106d3b,"aw22xxx_i2c_write",1,iVar2,uVar3);
      uVar4 = gpio_to_desc(*(undefined4 *)(in_x0 + 0x5c));
      gpiod_direction_output_raw(uVar4,1);
      _printk(&DAT_00106c63,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

