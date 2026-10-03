
void FUN_00102688(undefined8 param_1,undefined1 param_2)

{
  long lVar1;
  int iVar2;
  undefined1 *unaff_x19;
  undefined1 uStack0000000000000004;
  long in_stack_00000008;
  
  uStack0000000000000004 = param_2;
  iVar2 = i2c_transfer_buffer_flags();
  if (iVar2 < 0) {
    _printk(&DAT_001090a2,"aw22xxx_i2c_read");
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags();
    if (iVar2 < 0) goto LAB_001026b4;
  }
  iVar2 = i2c_transfer_buffer_flags();
  if (iVar2 < 0) {
    *unaff_x19 = (char)iVar2;
    _printk(&DAT_001095fc,"aw22xxx_i2c_read");
    msleep(1);
    i2c_transfer_buffer_flags();
  }
LAB_001026b4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != in_stack_00000008) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

