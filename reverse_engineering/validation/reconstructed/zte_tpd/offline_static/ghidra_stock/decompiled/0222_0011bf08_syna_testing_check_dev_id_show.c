
void syna_testing_check_dev_id_show(long param_1,undefined8 param_2,long param_3)

{
  code *pcVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  long lVar5;
  long lVar6;
  undefined *puVar7;
  ulong uVar8;
  undefined8 *puVar9;
  undefined *local_f8;
  undefined8 local_f0;
  undefined4 *local_e8;
  undefined8 local_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  ulong local_a8;
  long local_a0;
  undefined8 local_98;
  int iStack_94;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  ulong local_60;
  long local_58;
  
  lVar5 = sp_el0;
  local_58 = *(long *)(lVar5 + 0x710);
  local_68 = 0;
  local_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  local_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_f0 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar2 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar4 = (undefined4 *)syna_tcm_get_testing_0001();
    if (puVar4 != (undefined4 *)0x0) {
      local_a8 = local_a8 & 0xffffffffffffff00;
      local_e8 = (undefined4 *)0x0;
      local_e0 = 0;
      __mutex_init(&local_d8,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 ***)(puVar4 + 0x36) = &local_e8;
      local_60 = local_60 & 0xffffffffffffff00;
      local_a0 = 0;
      local_98 = 0;
      __mutex_init(&uStack_90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(long **)(puVar4 + 0x38) = &local_a0;
      local_f8 = &DAT_0013ced9;
      local_f0 = CONCAT44(local_f0._4_4_,4);
      *(undefined8 *)(puVar4 + 0xe) = 0;
      *(undefined ***)(puVar4 + 0x10) = &local_f8;
      if (*(int *)(*(code **)(puVar4 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x11c010);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(puVar4 + 6))(*puVar9,puVar4,0);
      if (iVar2 < 0) {
        _printk(&DAT_0013e202,"syna_testing_check_dev_id_show",*(undefined8 *)(puVar4 + 2));
        puVar7 = &DAT_00139699;
      }
      else {
        puVar7 = &DAT_0013a780;
        if (*(char *)(puVar4 + 4) == '\0') {
          puVar7 = &DAT_00139699;
        }
      }
      uVar3 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar4 + 2),
                        *puVar4,puVar7);
      uVar8 = (ulong)uVar3;
      if (local_e0._4_4_ != 0) {
        iVar2 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"Build ID: %d\n",*local_e8);
        uVar8 = (ulong)(iVar2 + uVar3);
      }
      if (iStack_94 != 0) {
        iVar2 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"Device ID: %s\n",local_a0);
        uVar8 = (ulong)(uint)(iVar2 + (int)uVar8);
      }
      if ((char)local_a8 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      puVar4 = local_e8;
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (puVar4 != (undefined4 *)0x0) {
        devm_kfree(lVar5,puVar4);
      }
      local_e0 = 0;
      local_a8 = local_a8 & 0xffffffffffffff00;
      if ((char)local_60 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar5 = local_a0;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar5 != 0) {
        devm_kfree(lVar6,lVar5);
      }
      goto LAB_0011c134;
    }
    iVar2 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",1);
  }
  uVar8 = (ulong)iVar2;
LAB_0011c134:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}

