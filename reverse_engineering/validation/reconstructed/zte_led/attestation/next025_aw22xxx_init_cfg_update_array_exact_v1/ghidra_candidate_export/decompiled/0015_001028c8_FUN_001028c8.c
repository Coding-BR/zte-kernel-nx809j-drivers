
void FUN_001028c8(int param_1)

{
  long lVar1;
  undefined1 *unaff_x19;
  long in_stack_00000008;
  
  if (param_1 < 0) {
    *unaff_x19 = (char)param_1;
    _printk(&DAT_001094c6,"aw22xxx_i2c_read");
    msleep(1);
    i2c_transfer_buffer_flags();
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

