
void syna_tcm_do_fw_update_ex(long param_1,int *param_2)

{
  long lVar1;
  undefined1 *puVar2;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  
  lVar1 = sp_el0;
  local_58 = *(undefined8 *)(lVar1 + 0x710);
  if (param_1 == 0) {
    puVar2 = &DAT_00168a84;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      local_68 = 0;
      uStack_60 = 0;
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      uStack_a0 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016931c,"syna_tcm_do_fw_update_ex");
    }
    puVar2 = &DAT_0016d75a;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_tcm_do_fw_update_ex");
}

