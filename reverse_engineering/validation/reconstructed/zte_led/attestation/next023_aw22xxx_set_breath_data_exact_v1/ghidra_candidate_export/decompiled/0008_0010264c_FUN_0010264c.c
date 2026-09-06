
void FUN_0010264c(void)

{
  long lVar1;
  long in_stack_00000008;
  
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

