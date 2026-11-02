
void FUN_00103768(undefined8 param_1)

{
  long lVar1;
  byte in_w8;
  byte bStack0000000000000004;
  long in_stack_00000008;
  
  bStack0000000000000004 = in_w8 & 0xfe;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_00108534);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

