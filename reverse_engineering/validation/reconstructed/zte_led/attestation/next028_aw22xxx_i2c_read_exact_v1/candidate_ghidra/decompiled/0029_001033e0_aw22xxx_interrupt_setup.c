
void aw22xxx_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_00109461,"aw22xxx_interrupt_setup");
  _printk(&DAT_0010904f);
  aw22xxx_i2c_read(param_1,10,local_2c);
  _printk(&DAT_00109239,local_2c[0]);
  aw22xxx_i2c_read(param_1,9,local_2c);
  aw22xxx_i2c_write(param_1,9,local_2c[0] | 1);
  aw22xxx_i2c_read(param_1,9,local_2c);
  aw22xxx_i2c_write(param_1,9,local_2c[0] | 0x10);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

