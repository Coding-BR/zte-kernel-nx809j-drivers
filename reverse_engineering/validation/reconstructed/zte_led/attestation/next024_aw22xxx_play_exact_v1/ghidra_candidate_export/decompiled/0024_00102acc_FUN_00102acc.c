
void FUN_00102acc(void)

{
  long lVar1;
  long unaff_x19;
  long unaff_x20;
  long unaff_x21;
  undefined8 in_stack_00000000;
  long in_stack_00000008;
  
  aw22xxx_i2c_write(unaff_x19,0xb,*(byte *)(unaff_x21 + unaff_x20));
  _printk(&DAT_00109817,"aw22xxx_led_init");
  aw22xxx_i2c_read(unaff_x19,2,(undefined *)((long)&stack0x00000000 + 4));
  in_stack_00000000._4_1_ = in_stack_00000000._4_1_ & 0xfe;
  aw22xxx_i2c_write(unaff_x19,2,in_stack_00000000._4_1_);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_001084bc,"aw22xxx_led_init");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

