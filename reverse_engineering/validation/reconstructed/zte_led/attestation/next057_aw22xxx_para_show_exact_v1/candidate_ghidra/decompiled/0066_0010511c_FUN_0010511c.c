
void FUN_0010511c(undefined4 param_1)

{
  long lVar1;
  long in_stack_00000008;
  
  _printk(&DAT_0010800d,"aw22xxx_cfg_recover_update_wait",param_1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

