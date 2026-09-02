
void FUN_0010483c(void)

{
  long lVar1;
  long in_stack_00000008;
  
  aw22xxx_i2c_write();
  aw22xxx_i2c_write();
  _printk(&DAT_00108717,"aw22xxx_led_init");
  aw22xxx_i2c_read();
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  _printk(&DAT_00107fd4,"aw22xxx_led_init");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

