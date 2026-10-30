
void FUN_00101ba8(long param_1)

{
  long in_stack_00000008;
  
  if (*(long *)(param_1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

