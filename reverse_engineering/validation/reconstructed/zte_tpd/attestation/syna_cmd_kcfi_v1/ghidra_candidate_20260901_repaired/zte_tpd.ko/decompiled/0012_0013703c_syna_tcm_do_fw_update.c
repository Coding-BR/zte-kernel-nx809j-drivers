
void syna_tcm_do_fw_update(long param_1,long param_2,int param_3)

{
  long lVar1;
  undefined1 *puVar2;
  undefined1 auStack_378 [784];
  undefined8 local_68;
  
  lVar1 = sp_el0;
  local_68 = *(undefined8 *)(lVar1 + 0x710);
  if (param_1 == 0) {
    puVar2 = &DAT_00168a84;
  }
  else {
    if ((param_2 != 0) && (param_3 != 0)) {
      memset(auStack_378,0,0x310);
      _printk(&DAT_001698ec,"syna_tcm_do_fw_update");
      return;
    }
    puVar2 = &DAT_0016d75a;
  }
  _printk(puVar2,"syna_tcm_do_fw_update");
  return;
}

