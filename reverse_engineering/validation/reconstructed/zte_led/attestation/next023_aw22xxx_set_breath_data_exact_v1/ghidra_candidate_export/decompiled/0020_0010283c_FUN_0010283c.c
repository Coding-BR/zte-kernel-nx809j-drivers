
void FUN_0010283c(void)

{
  long lVar1;
  undefined8 uVar2;
  byte in_w8;
  long unaff_x19;
  byte bStack0000000000000004;
  long in_stack_00000008;
  
  bStack0000000000000004 = in_w8 | 1;
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  if (*(uint *)(unaff_x19 + 0x2f0) < 0xd) {
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    _printk(&DAT_0010996b,"aw22xxx_led_init");
    aw22xxx_i2c_read();
    bStack0000000000000004 = bStack0000000000000004 & 0xfe;
    aw22xxx_i2c_write();
    usleep_range_state(2000,3000,2);
    _printk(&DAT_001085b4,"aw22xxx_led_init");
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

