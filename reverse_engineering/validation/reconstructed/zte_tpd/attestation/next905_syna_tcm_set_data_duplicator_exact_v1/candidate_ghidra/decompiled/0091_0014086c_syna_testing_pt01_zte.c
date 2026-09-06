
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt01_zte(undefined8 *param_1)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  long lVar6;
  undefined4 *puVar7;
  ulong uVar8;
  long lVar9;
  uint uVar10;
  undefined1 *local_a0;
  undefined8 local_98;
  long local_90;
  undefined8 local_88;
  uint uStack_84;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  ulong local_50;
  long local_48;
  
  lVar6 = sp_el0;
  local_48 = *(long *)(lVar6 + 0x710);
  local_98 = 0;
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_80 = 0;
  lVar6 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar6 == 0) {
    uVar8 = _printk(&DAT_00182942,"syna_testing_pt01_zte");
    return uVar8;
  }
  puVar7 = (undefined4 *)syna_tcm_get_testing_0100();
  if (puVar7 == (undefined4 *)0x0) {
    uVar8 = scnprintf(lVar6,0x1000,"Invalid testing item id:%d\n",0x100);
    uVar8 = uVar8 & 0xffffffff;
  }
  else {
    local_50 = local_50 & 0xffffffffffffff00;
    local_90 = 0;
    local_88 = 0;
    __mutex_init(&local_80,"(struct mutex *)ptr",&syna_testing_pt01_zte___key);
    *(long **)(puVar7 + 0x36) = &local_90;
    *(undefined1 ***)(puVar7 + 0xe) = &local_a0;
    local_a0 = pt01_limits;
    local_98 = CONCAT44(local_98._4_4_,0x10);
    if (*(int *)(*(code **)(puVar7 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x140944);
      (*pcVar4)();
    }
    iVar5 = (**(code **)(puVar7 + 6))(*param_1,puVar7,0);
    if (iVar5 < 0) {
      uVar8 = _printk(&DAT_001830c0,"syna_testing_pt01_zte",*(undefined8 *)(puVar7 + 2));
      return uVar8;
    }
    puVar2 = &DAT_00181922;
    if (*(char *)(puVar7 + 4) == '\0') {
      puVar2 = &DAT_001810b6;
    }
    uVar8 = scnprintf(lVar6,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar7 + 2),*puVar7,
                      puVar2);
    uVar8 = uVar8 & 0xffffffff;
    if (uStack_84 != 0) {
      uVar10 = 0;
      do {
        iVar5 = scnprintf(lVar6 + uVar8,0x1000 - uVar8,"x%02X ",
                          *(undefined1 *)(local_90 + (int)uVar10));
        uVar10 = uVar10 + 1;
        uVar1 = iVar5 + (int)uVar8;
        uVar8 = (ulong)uVar1;
      } while (uVar10 < uStack_84);
      iVar5 = scnprintf(lVar6 + uVar8,0x1000 - uVar8,&DAT_00181367);
      uVar8 = (ulong)(iVar5 + uVar1);
    }
    tpd_copy_to_tp_firmware_data(lVar6);
    lVar3 = local_90;
    if ((char)local_50 != '\0') {
      uVar8 = _printk(&DAT_0017f281,"syna_tcm_buf_release");
      return uVar8;
    }
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
      uVar8 = _printk(&DAT_001828ba,"syna_pal_mem_free");
      return uVar8;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar9,lVar3);
    }
    local_88 = 0;
    local_50 = local_50 & 0xffffffffffffff00;
    kfree(lVar6);
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_48) {
    return uVar8;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

