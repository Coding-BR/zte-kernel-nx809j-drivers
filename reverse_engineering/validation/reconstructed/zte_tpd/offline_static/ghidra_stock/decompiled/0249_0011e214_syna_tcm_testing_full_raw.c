
int syna_tcm_testing_full_raw(long param_1,long param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  long lVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 *puVar9;
  long local_90;
  undefined8 local_88;
  undefined4 uStack_84;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  iVar6 = -0xa1;
  if ((param_1 != 0) && (param_2 != 0)) {
    local_58 = 0;
    local_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_90 = 0;
    __mutex_init(&uStack_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
    uVar1 = *(undefined4 *)(param_1 + 0x1c);
    uVar2 = *(undefined4 *)(param_1 + 0x20);
    iVar6 = syna_tcm_run_production_test(param_1,5,&local_90,0);
    if (iVar6 < 0) {
      _printk(&DAT_0013c073,"syna_tcm_testing_full_raw",5);
      *(undefined1 *)(param_2 + 0x10) = 0;
      iVar6 = -0xa3;
      puVar8 = &DAT_00134181;
    }
    else {
      if (*(long *)(param_2 + 0xd8) != 0) {
        syna_tcm_buf_copy(*(long *)(param_2 + 0xd8),&local_90);
      }
      if ((param_3 & 1) == 0) {
        puVar9 = *(undefined8 **)(param_2 + 0x38);
        if (puVar9 == (undefined8 *)0x0) {
          bVar4 = 0;
        }
        else {
          bVar4 = syna_tcm_testing_check_frame_data
                            (local_90,uStack_84,uVar1,uVar2,syna_tcm_testing_0500_check_upper_bound,
                             *puVar9,*(undefined4 *)(puVar9 + 1));
        }
        puVar9 = *(undefined8 **)(param_2 + 0x40);
        if (puVar9 == (undefined8 *)0x0) {
          bVar5 = 0;
        }
        else {
          bVar5 = syna_tcm_testing_check_frame_data
                            (local_90,uStack_84,uVar1,uVar2,syna_tcm_testing_0500_check_lower_bound,
                             *puVar9,*(undefined4 *)(puVar9 + 1));
        }
        bVar4 = bVar4 & bVar5 & 1;
        *(byte *)(param_2 + 0x10) = bVar4;
        puVar8 = &DAT_001396de;
        if (bVar4 == 0) {
          iVar6 = -0xa2;
          puVar8 = &DAT_00134181;
        }
      }
      else {
        *(undefined1 *)(param_2 + 0x10) = 1;
        puVar8 = &DAT_001396de;
      }
    }
    _printk(&DAT_00133a8b,"syna_tcm_testing_full_raw",puVar8);
    if ((char)local_50 != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = local_90;
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar7,lVar3);
    }
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return iVar6;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

