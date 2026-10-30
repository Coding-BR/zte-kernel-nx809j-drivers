
void FUN_00105400(void)

{
  long lVar1;
  long in_stack_00000008;
  
  _printk(&DAT_001080a3,"aw22xxx_cfg_recover_update_wait");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

