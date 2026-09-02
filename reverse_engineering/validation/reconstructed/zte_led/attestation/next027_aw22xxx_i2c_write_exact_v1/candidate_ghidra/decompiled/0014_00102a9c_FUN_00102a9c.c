
void FUN_00102a9c(void)

{
  long lVar1;
  long in_stack_00000008;
  
  _printk(&DAT_0010971f,"aw22xxx_led_init");
  aw22xxx_i2c_read();
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  _printk(&DAT_00108494,"aw22xxx_led_init");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

