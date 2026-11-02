
void FUN_0010cccc(void)

{
  long lVar1;
  undefined4 unaff_w21;
  long unaff_x29;
  
  _printk();
  devm_kfree();
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(unaff_w21);
}

