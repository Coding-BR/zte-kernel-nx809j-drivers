
undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 extraout_x0;
  undefined8 extraout_x0_00;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    if (local_2c < 2) {
      if (local_2c != 1) {
        _printk("\x016aw22xxx: hw off\n");
        return extraout_x0_00;
      }
      aw22xxx_hw_reset(lVar2 + -0x10);
      lVar2 = sp_el0;
      if (*(long *)(lVar2 + 0x710) == local_28) {
        return param_4;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  }
  _printk("\x013aw22xxx: %s invalid value\n","aw22xxx_hwen_store");
  return extraout_x0;
}

