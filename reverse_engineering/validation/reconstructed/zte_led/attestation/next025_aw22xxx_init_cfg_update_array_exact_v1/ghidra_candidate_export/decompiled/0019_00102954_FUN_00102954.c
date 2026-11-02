
void FUN_00102954(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  long in_stack_00000008;
  
  i2c_transfer_buffer_flags(param_1,param_2,1,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

