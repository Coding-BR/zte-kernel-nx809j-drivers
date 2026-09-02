
void FUN_00105050(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  long unaff_x19;
  long in_stack_00000008;
  
  aw22xxx_i2c_write(param_1,param_2,0);
  aw22xxx_i2c_write();
  *(int *)(unaff_x19 + 0x2f8) = *(int *)(unaff_x19 + 0x2f8) + 1;
  _printk(&DAT_00108054,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_0010897e,*(undefined4 *)(unaff_x19 + 0x2f8));
  msleep(0x14);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

