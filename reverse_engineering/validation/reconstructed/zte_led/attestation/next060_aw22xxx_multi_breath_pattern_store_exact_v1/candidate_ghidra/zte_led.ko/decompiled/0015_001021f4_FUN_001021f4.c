
void FUN_001021f4(void)

{
  long lVar1;
  ulong uVar2;
  undefined1 *unaff_x19;
  long in_stack_00000008;
  
  uVar2 = i2c_transfer_buffer_flags();
  if ((int)uVar2 < 0) {
    *unaff_x19 = (char)uVar2;
    uVar2 = uVar2 & 0xffffffff;
    _printk(&DAT_00106daf,"aw22xxx_i2c_read",uVar2);
    msleep(1);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

