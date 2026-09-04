
int syna_tcm_testing_trx_trx_short(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  bool bVar2;
  byte bVar3;
  int iVar4;
  long lVar5;
  undefined *puVar6;
  undefined8 *puVar7;
  long local_80;
  undefined8 local_78;
  undefined4 uStack_74;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  iVar4 = -0xa1;
  if ((param_1 == 0) || (param_2 == 0)) goto LAB_0011db2c;
  local_48 = 0;
  local_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_80 = 0;
  __mutex_init(&uStack_70,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  iVar4 = syna_tcm_run_production_test(param_1,1,&local_80,0);
  if (iVar4 < 0) {
    _printk(&DAT_0013c073,"syna_tcm_testing_trx_trx_short",1);
    *(undefined1 *)(param_2 + 0x10) = 0;
    iVar4 = -0xa3;
LAB_0011dbd0:
    puVar6 = &DAT_00134181;
  }
  else {
    if (*(long *)(param_2 + 0xd8) != 0) {
      syna_tcm_buf_copy(*(long *)(param_2 + 0xd8),&local_80);
    }
    if ((param_3 & 1) == 0) {
      puVar7 = *(undefined8 **)(param_2 + 0x38);
      if (puVar7 == (undefined8 *)0x0) {
        *(undefined1 *)(param_2 + 0x10) = 0;
        iVar4 = -0xa2;
        goto LAB_0011dbd0;
      }
      bVar3 = syna_tcm_testing_check_array_data
                        (local_80,uStack_74,*puVar7,*(undefined4 *)(puVar7 + 1));
      bVar2 = (bVar3 & 1) == 0;
      if (bVar2) {
        iVar4 = -0xa2;
      }
      *(byte *)(param_2 + 0x10) = bVar3 & 1;
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
  _printk(&DAT_00133a8b,"syna_tcm_testing_trx_trx_short",puVar6);
  if ((char)local_40 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  lVar1 = local_80;
  lVar5 = syna_request_managed_device();
  if (lVar5 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (lVar1 != 0) {
    devm_kfree(lVar5,lVar1);
  }
LAB_0011db2c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar4;
}

