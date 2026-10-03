
void syna_testing_check_config_id_show(long param_1,undefined8 param_2,long param_3)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  uint uVar5;
  undefined4 *puVar6;
  long lVar7;
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
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
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
    iVar4 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0002();
    if (puVar6 != (undefined4 *)0x0) {
      local_40 = local_40 & 0xffffffffffffff00;
      local_80 = 0;
      uStack_78 = 0;
      __mutex_init(&local_70,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_90 = "Default";
      *(long **)(puVar6 + 0x36) = &local_80;
      local_88 = CONCAT44(local_88._4_4_,0x10);
      *(char ***)(puVar6 + 0xe) = &local_90;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x158694);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*puVar9,puVar6,0);
      if (iVar4 < 0) {
        _printk(&DAT_001830c0,"syna_testing_check_config_id_show",*(undefined8 *)(puVar6 + 2));
        return;
      }
      puVar1 = &DAT_00181922;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_001810b6;
      }
      uVar5 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),
                        *puVar6,puVar1);
      uVar8 = (ulong)uVar5;
      if (iStack_74 != 0) {
        iVar4 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"\nConfig ID: %s\n",local_80);
        uVar8 = (ulong)(iVar4 + uVar5);
      }
      lVar2 = local_80;
      if ((char)local_40 != '\0') {
        _printk(&DAT_0017f281,"syna_tcm_buf_release");
        return;
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_001828ba,"syna_pal_mem_free");
        return;
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_00158760;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",2);
  }
  uVar8 = (ulong)iVar4;
LAB_00158760:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}

