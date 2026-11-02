
void FUN_001029cc(void)

{
  long lVar1;
  undefined8 uVar2;
  long unaff_x19;
  long in_stack_00000008;
  
  _printk();
  _printk(&DAT_00108a19);
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_read();
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  if (*(uint *)(unaff_x19 + 0x2f0) < 0xd) {
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    _printk(&DAT_0010971f,"aw22xxx_led_init");
    aw22xxx_i2c_read();
    aw22xxx_i2c_write();
    usleep_range_state(2000,3000,2);
    _printk(&DAT_00108494,"aw22xxx_led_init");
    uVar2 = 0;
  }
  else {
    uVar2 = 0xffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

