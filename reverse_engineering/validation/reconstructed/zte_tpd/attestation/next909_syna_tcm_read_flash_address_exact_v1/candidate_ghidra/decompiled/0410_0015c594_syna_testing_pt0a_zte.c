
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt0a_zte(long *param_1)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  long lVar5;
  undefined4 *puVar6;
  ulong uVar7;
  long lVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar5 = sp_el0;
  local_68 = *(long *)(lVar5 + 0x710);
  local_b8 = 0;
  local_c8 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar5 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar5 == 0) {
    uVar7 = _printk(&DAT_00171b9e,"syna_testing_pt0a_zte");
    return uVar7;
  }
  if ((*(byte *)((long)param_1 + 0x582) & 1) == 0) {
    uVar7 = scnprintf(lVar5,0x1000,"Device is NOT connected\n");
    uVar7 = uVar7 & 0xffffffff;
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0A00();
    if (puVar6 == (undefined4 *)0x0) {
      uVar7 = scnprintf(lVar5,0x1000,"Invalid testing item id:%d\n",0xa00);
      uVar7 = uVar7 & 0xffffffff;
    }
    else {
      local_b0 = 0;
      local_a8 = 0;
      puVar6[9] = *(undefined4 *)(*param_1 + 0x20);
      puVar6[8] = *(undefined4 *)(*param_1 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00166994);
      local_c0 = pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar6 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar6 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar6 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c6ac);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*param_1,puVar6,0);
      if (iVar4 < 0) {
        uVar7 = _printk(&DAT_00172f30,"syna_testing_pt0a_zte",*(undefined8 *)(puVar6 + 2));
        return uVar7;
      }
      puVar1 = &DAT_0016f3e4;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_0016e2b4;
      }
      uVar7 = scnprintf(lVar5,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),*puVar6
                        ,puVar1);
      lVar2 = local_b0;
      uVar7 = uVar7 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar6[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar6[9] != 0) {
            uVar10 = 0;
            do {
              iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_00170d2c,
                                (long)*(short *)(lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*param_1 
                                                  + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
            } while (uVar10 < (uint)puVar6[9]);
          }
          iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_0016e5bc);
          uVar9 = uVar9 + 1;
          uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
        } while (uVar9 < (uint)puVar6[8]);
      }
      tpd_copy_to_tp_firmware_data(lVar5);
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
        uVar7 = _printk(&DAT_00169d8a,"syna_tcm_buf_release");
        return uVar7;
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        uVar7 = _printk(&DAT_00171996,"syna_pal_mem_free");
        return uVar7;
      }
      if (lVar2 != 0) {
        devm_kfree(lVar8,lVar2);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      kfree(lVar5);
    }
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}

