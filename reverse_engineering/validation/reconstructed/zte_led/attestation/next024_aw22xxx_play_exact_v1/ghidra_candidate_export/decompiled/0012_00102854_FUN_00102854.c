
void FUN_00102854(void)

{
  long lVar1;
  undefined4 unaff_w21;
  long in_stack_00000008;
  
  _printk();
  msleep(1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(unaff_w21);
}

