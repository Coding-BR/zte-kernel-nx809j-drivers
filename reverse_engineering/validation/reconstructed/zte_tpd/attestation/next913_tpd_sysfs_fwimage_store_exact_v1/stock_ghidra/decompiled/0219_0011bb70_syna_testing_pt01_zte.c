
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt01_zte(undefined8 *param_1)

{
  uint uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  long lVar5;
  undefined4 *puVar6;
  ulong uVar7;
  long lVar8;
  undefined *puVar9;
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
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_98 = 0;
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_80 = 0;
  lVar5 = __kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
  if (lVar5 == 0) {
    _printk(&DAT_0013ceb5,"syna_testing_pt01_zte");
    uVar7 = 0xfffffff4;
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0100();
    if (puVar6 == (undefined4 *)0x0) {
      uVar7 = scnprintf(lVar5,0x1000,"Invalid testing item id:%d\n",0x100);
      uVar7 = uVar7 & 0xffffffff;
    }
    else {
      local_50 = local_50 & 0xffffffffffffff00;
      local_90 = 0;
      local_88 = 0;
      __mutex_init(&local_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(long **)(puVar6 + 0x36) = &local_90;
      *(undefined1 ***)(puVar6 + 0xe) = &local_a0;
      local_a0 = pt01_limits;
      local_98 = CONCAT44(local_98._4_4_,0x10);
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x11bc48);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*param_1,puVar6,0);
      if (iVar4 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt01_zte",*(undefined8 *)(puVar6 + 2));
        puVar9 = &DAT_00139699;
      }
      else {
        puVar9 = &DAT_0013a780;
        if (*(char *)(puVar6 + 4) == '\0') {
          puVar9 = &DAT_00139699;
        }
      }
      uVar7 = scnprintf(lVar5,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),*puVar6
                        ,puVar9);
      uVar7 = uVar7 & 0xffffffff;
      if (uStack_84 != 0) {
        uVar10 = 0;
        do {
          iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,"x%02X ",
                            *(undefined1 *)(local_90 + (int)uVar10));
          uVar10 = uVar10 + 1;
          uVar1 = iVar4 + (int)uVar7;
          uVar7 = (ulong)uVar1;
        } while (uVar10 < uStack_84);
        iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_00139994);
        uVar7 = (ulong)(iVar4 + uVar1);
      }
      tpd_copy_to_tp_firmware_data(lVar5);
      if ((char)local_50 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_90;
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar8,lVar2);
      }
      local_88 = 0;
      local_50 = local_50 & 0xffffffffffffff00;
      kfree(lVar5);
    }
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}

