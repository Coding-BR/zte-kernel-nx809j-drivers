
void syna_testing_pt01_show(long param_1,undefined8 param_2,long param_3)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  undefined4 *puVar6;
  ulong uVar7;
  long lVar8;
  undefined8 *puVar9;
  uint uVar10;
  undefined1 *local_a0;
  undefined8 local_98;
  long local_90;
  undefined8 uStack_88;
  uint uStack_84;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  ulong local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_98 = 0;
  local_80 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar5 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0100();
    if (puVar6 != (undefined4 *)0x0) {
      local_50 = local_50 & 0xffffffffffffff00;
      local_90 = 0;
      uStack_88 = 0;
      __mutex_init(&local_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_a0 = &pt01_limits;
      *(long **)(puVar6 + 0x36) = &local_90;
      local_98 = CONCAT44(local_98._4_4_,0x10);
      *(undefined1 ***)(puVar6 + 0xe) = &local_a0;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1588b4);
        (*pcVar4)();
      }
      iVar5 = (**(code **)(puVar6 + 6))(*puVar9,puVar6,0);
      if (iVar5 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001830c0,"syna_testing_pt01_show",*(undefined8 *)(puVar6 + 2));
      }
      puVar2 = &DAT_00181922;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar2 = &DAT_001810b6;
      }
      uVar7 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),
                        *puVar6,puVar2);
      uVar7 = uVar7 & 0xffffffff;
      if (uStack_84 != 0) {
        uVar10 = 0;
        do {
          iVar5 = scnprintf(param_3 + uVar7,0x1000 - uVar7,"x%02X ",
                            *(undefined1 *)(local_90 + (int)uVar10));
          uVar10 = uVar10 + 1;
          uVar1 = iVar5 + (int)uVar7;
          uVar7 = (ulong)uVar1;
        } while (uVar10 < uStack_84);
        iVar5 = scnprintf(param_3 + uVar7,0x1000 - uVar7,&DAT_00181367);
        uVar7 = (ulong)(iVar5 + uVar1);
      }
      lVar3 = local_90;
      if ((char)local_50 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f281,"syna_tcm_buf_release");
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828ba,"syna_pal_mem_free");
      }
      if (lVar3 != 0) {
        devm_kfree(lVar8,lVar3);
      }
      goto LAB_001589b8;
    }
    iVar5 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x100);
  }
  uVar7 = (ulong)iVar5;
LAB_001589b8:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar7);
  }
  return;
}

