
void FUN_001028f8(long param_1)

{
  long lVar1;
  int iVar2;
  undefined1 *unaff_x19;
  long in_stack_00000008;
  
  _printk(param_1 + 0xf95,"aw22xxx_i2c_read");
  msleep(1);
  iVar2 = i2c_transfer_buffer_flags();
  if ((-1 < iVar2) && (iVar2 = i2c_transfer_buffer_flags(), iVar2 < 0)) {
    *unaff_x19 = (char)iVar2;
    _printk(&DAT_001094c6,"aw22xxx_i2c_read");
    msleep(1);
    i2c_transfer_buffer_flags();
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != in_stack_00000008) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

