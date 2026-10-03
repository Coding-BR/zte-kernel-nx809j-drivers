
undefined8 syna_tcm_testing_config_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  undefined8 *puVar5;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if ((param_1 != 0) && (param_2 != 0)) {
    local_48 = 0;
    uStack_40 = 0;
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    iVar3 = syna_tcm_get_app_info(param_1,&local_68,0);
    if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e627,"syna_tcm_testing_config_id");
    }
    if ((*(long *)(param_2 + 0xd8) != 0) &&
       (iVar3 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8)), -1 < iVar3)) {
      syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                       *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_58);
      *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 0x10;
    }
    if ((param_3 & 1) == 0) {
      puVar5 = *(undefined8 **)(param_2 + 0x38);
      if ((puVar5 != (undefined8 *)0x0) && (*(int *)(puVar5 + 1) != 0)) {
        bVar2 = syna_tcm_testing_0002_check_config_id(&local_58,*puVar5);
        *(byte *)(param_2 + 0x10) = bVar2 & 1;
      }
      puVar4 = &DAT_001811bb;
      if (*(char *)(param_2 + 0x10) == '\0') {
        puVar4 = &DAT_0017ebda;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar4 = &DAT_001811bb;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e97b,"syna_tcm_testing_config_id",puVar4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

