
void syna_testing_pt01_show(long param_1,undefined8 param_2,long param_3)

{
  uint uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  undefined *puVar8;
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
  
  lVar2 = sp_el0;
  local_48 = *(long *)(lVar2 + 0x710);
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
    iVar4 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0100();
    if (puVar5 != (undefined4 *)0x0) {
      local_50 = local_50 & 0xffffffffffffff00;
      local_90 = 0;
      uStack_88 = 0;
      __mutex_init(&local_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_a0 = pt01_limits;
      *(long **)(puVar5 + 0x36) = &local_90;
      local_98 = CONCAT44(local_98._4_4_,0x10);
      *(undefined1 ***)(puVar5 + 0xe) = &local_a0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x11c4dc);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar5 + 6))(*puVar9,puVar5,0);
      if (iVar4 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt01_show",*(undefined8 *)(puVar5 + 2));
        puVar8 = &DAT_00139699;
      }
      else {
        puVar8 = &DAT_0013a780;
        if (*(char *)(puVar5 + 4) == '\0') {
          puVar8 = &DAT_00139699;
        }
      }
      uVar6 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar8);
      uVar6 = uVar6 & 0xffffffff;
      if (uStack_84 != 0) {
        uVar10 = 0;
        do {
          iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,"x%02X ",
                            *(undefined1 *)(local_90 + (int)uVar10));
          uVar10 = uVar10 + 1;
          uVar1 = iVar4 + (int)uVar6;
          uVar6 = (ulong)uVar1;
        } while (uVar10 < uStack_84);
        iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_00139994);
        uVar6 = (ulong)(iVar4 + uVar1);
      }
      if ((char)local_50 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_90;
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_0011c5e0;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x100);
  }
  uVar6 = (ulong)iVar4;
LAB_0011c5e0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}

