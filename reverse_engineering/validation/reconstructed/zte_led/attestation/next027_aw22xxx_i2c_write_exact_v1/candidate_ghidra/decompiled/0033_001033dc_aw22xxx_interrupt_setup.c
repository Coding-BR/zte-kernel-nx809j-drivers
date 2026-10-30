
void aw22xxx_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_001094c0,"aw22xxx_interrupt_setup");
  _printk(&DAT_00109089);
  aw22xxx_i2c_read(param_1,10,local_2c);
  _printk(&DAT_00109273,local_2c[0]);
  aw22xxx_i2c_read(param_1,9,local_2c);
  aw22xxx_i2c_write();
  aw22xxx_i2c_read(param_1,9,local_2c);
  aw22xxx_i2c_write();
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

