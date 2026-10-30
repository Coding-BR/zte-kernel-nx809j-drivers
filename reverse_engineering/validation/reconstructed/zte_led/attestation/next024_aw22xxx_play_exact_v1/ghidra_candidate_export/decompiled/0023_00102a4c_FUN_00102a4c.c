
void FUN_00102a4c(long param_1,byte param_2,undefined *param_3)

{
  uint uVar1;
  long lVar2;
  undefined8 uVar3;
  long unaff_x19;
  undefined8 in_stack_00000000;
  long in_stack_00000008;
  
  aw22xxx_i2c_read(param_1,param_2,param_3);
  in_stack_00000000._4_1_ = in_stack_00000000._4_1_ | 1;
  aw22xxx_i2c_write(unaff_x19,2,in_stack_00000000._4_1_);
  usleep_range_state(2000,3000,2);
  uVar1 = *(uint *)(unaff_x19 + 0x2f0);
  if (uVar1 < 0xd) {
    aw22xxx_i2c_write(unaff_x19,0xff,0);
    aw22xxx_i2c_write(unaff_x19,0xb,(&aw22xxx_imax_code)[uVar1]);
    _printk(&DAT_00109817,"aw22xxx_led_init");
    aw22xxx_i2c_read(unaff_x19,2,(undefined *)((long)&stack0x00000000 + 4));
    in_stack_00000000._4_1_ = in_stack_00000000._4_1_ & 0xfe;
    aw22xxx_i2c_write(unaff_x19,2,in_stack_00000000._4_1_);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_001084bc,"aw22xxx_led_init");
    uVar3 = 0;
  }
  else {
    uVar3 = 0xffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

