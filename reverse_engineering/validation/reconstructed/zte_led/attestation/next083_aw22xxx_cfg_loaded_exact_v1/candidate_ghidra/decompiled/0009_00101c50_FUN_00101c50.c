
void FUN_00101c50(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  int iVar2;
  undefined1 *unaff_x19;
  long in_stack_00000008;
  
  iVar2 = i2c_transfer_buffer_flags(param_1,param_2,1,1);
  if (iVar2 < 0) {
    *unaff_x19 = (char)iVar2;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0010688f,"aw22xxx_i2c_read",iVar2);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

