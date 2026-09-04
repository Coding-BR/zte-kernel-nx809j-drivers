
void syna_testing_check_config_id_show(long param_1,undefined8 param_2,long param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  long lVar6;
  undefined *puVar7;
  ulong uVar8;
  undefined8 *puVar9;
  char *local_90;
  undefined8 local_88;
  long local_80;
  undefined8 uStack_78;
  int iStack_74;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  ulong local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48 = 0;
  local_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_88 = 0;
  local_70 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar3 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0002();
    if (puVar5 != (undefined4 *)0x0) {
      local_40 = local_40 & 0xffffffffffffff00;
      local_80 = 0;
      uStack_78 = 0;
      __mutex_init(&local_70,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_90 = "Default";
      *(long **)(puVar5 + 0x36) = &local_80;
      local_88 = CONCAT44(local_88._4_4_,0x10);
      *(char ***)(puVar5 + 0xe) = &local_90;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11c2bc);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar5 + 6))(*puVar9,puVar5,0);
      if (iVar3 < 0) {
        _printk(&DAT_0013e202,"syna_testing_check_config_id_show",*(undefined8 *)(puVar5 + 2));
        puVar7 = &DAT_00139699;
      }
      else {
        puVar7 = &DAT_0013a780;
        if (*(char *)(puVar5 + 4) == '\0') {
          puVar7 = &DAT_00139699;
        }
      }
      uVar4 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar7);
      uVar8 = (ulong)uVar4;
      if (iStack_74 != 0) {
        iVar3 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"\nConfig ID: %s\n",local_80);
        uVar8 = (ulong)(iVar3 + uVar4);
      }
      if ((char)local_40 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_80;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar6,lVar1);
      }
      goto LAB_0011c388;
    }
    iVar3 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",2);
  }
  uVar8 = (ulong)iVar3;
LAB_0011c388:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}

