
undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    if (local_3c < 2) {
      if (local_3c != 1) {
        uVar2 = _printk(&DAT_00106edd,"aw22xxx_hw_off");
        return uVar2;
      }
      aw22xxx_hw_reset(lVar3 + -0x10);
      lVar3 = sp_el0;
      if (*(long *)(lVar3 + 0x710) == local_38) {
        return param_4;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  }
  uVar2 = _printk(&DAT_00106b08,"aw22xxx_hwen_store",0x7b9);
  return uVar2;
}

