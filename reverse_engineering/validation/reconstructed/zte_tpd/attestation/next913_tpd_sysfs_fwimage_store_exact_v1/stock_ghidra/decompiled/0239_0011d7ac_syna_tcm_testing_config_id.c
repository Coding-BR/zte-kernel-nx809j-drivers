
int syna_tcm_testing_config_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  bool bVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  undefined *puVar6;
  undefined8 *puVar7;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  iVar4 = -0xa1;
  if ((param_1 != 0) && (param_2 != 0)) {
    local_48 = 0;
    uStack_40 = 0;
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    iVar4 = syna_tcm_get_app_info(param_1,&local_68,0);
    if (iVar4 < 0) {
      _printk(&DAT_0013324a,"syna_tcm_testing_config_id");
      *(undefined1 *)(param_2 + 0x10) = 0;
      iVar4 = -0xa3;
      puVar6 = &DAT_00134181;
    }
    else {
      if (*(long *)(param_2 + 0xd8) != 0) {
        iVar5 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8));
        if (-1 < iVar5) {
          syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                           *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_58);
          *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 0x10;
        }
      }
      if ((param_3 & 1) == 0) {
        puVar7 = *(undefined8 **)(param_2 + 0x38);
        if ((puVar7 != (undefined8 *)0x0) && (*(int *)(puVar7 + 1) != 0)) {
          bVar3 = syna_tcm_testing_0002_check_config_id(&local_58,*puVar7);
          *(byte *)(param_2 + 0x10) = bVar3 & 1;
        }
        bVar2 = *(char *)(param_2 + 0x10) == '\0';
        if (bVar2) {
          iVar4 = -0xa2;
        }
        puVar6 = &DAT_001396de;
        if (bVar2) {
          puVar6 = &DAT_00134181;
        }
      }
      else {
        *(undefined1 *)(param_2 + 0x10) = 1;
        puVar6 = &DAT_001396de;
      }
    }
    _printk(&DAT_00133a8b,"syna_tcm_testing_config_id",puVar6);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar4;
}

