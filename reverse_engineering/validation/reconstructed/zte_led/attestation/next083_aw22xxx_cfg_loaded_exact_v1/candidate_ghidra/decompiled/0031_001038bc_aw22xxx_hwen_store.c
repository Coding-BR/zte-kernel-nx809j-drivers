
undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    if (local_3c < 2) {
      if (local_3c != 1) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00106a55,"aw22xxx_hw_off");
      }
      FUN_00102520(lVar2 + -0x10);
      lVar2 = sp_el0;
      if (*(long *)(lVar2 + 0x710) == local_38) {
        return param_4;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00106680,"aw22xxx_hwen_store",0x7b9);
}

