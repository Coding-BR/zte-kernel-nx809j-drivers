
void aw22xxx_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  undefined1 local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010d681,"aw22xxx_interrupt_setup");
  local_44[0] = 0;
  _printk(&DAT_0010d681,"aw22xxx_interrupt_clear");
  aw22xxx_i2c_read(param_1,10,local_44);
  _printk(&DAT_0010d12b,"aw22xxx_interrupt_clear",local_44[0]);
  local_40[0] = 0;
  aw22xxx_i2c_read(param_1,9,local_40);
  local_40[0] = local_40[0] | 1;
  aw22xxx_i2c_write(param_1,9);
  local_3c[0] = 0;
  aw22xxx_i2c_read(param_1,9,local_3c);
  local_3c[0] = local_3c[0] | 0x10;
  aw22xxx_i2c_write(param_1,9);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

