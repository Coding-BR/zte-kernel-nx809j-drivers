
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt0a_zte(long *param_1)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  undefined *puVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined1 *local_c0;
  undefined4 local_b8;
  undefined4 local_b4;
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
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  local_c4 = 0;
  local_b4 = 0;
  lVar4 = __kmalloc_cache_noprof(_strchr,0xdc0,0x1000);
  if (lVar4 == 0) {
    _printk(&DAT_0016712e,"syna_testing_pt0a_zte");
    uVar6 = 0xfffffff4;
  }
  else {
    if ((*(byte *)((long)param_1 + 0x582) & 1) == 0) {
      uVar6 = scnprintf(lVar4,0x1000,"Device is NOT connected\n");
    }
    else {
      puVar5 = (undefined4 *)syna_tcm_get_testing_0A00();
      if (puVar5 != (undefined4 *)0x0) {
        local_b0 = 0;
        local_a8 = 0;
        puVar5[9] = *(undefined4 *)(*param_1 + 0x20);
        puVar5[8] = *(undefined4 *)(*param_1 + 0x1c);
        local_70 = local_70 & 0xffffffffffffff00;
        __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_testing_pt0a_zte___key);
        local_c0 = pt0a_hi_limits;
        local_b8 = 0xc80;
        local_d0 = pt0a_lo_limits;
        local_c8 = 0xc80;
        *(long **)(puVar5 + 0x36) = &local_b0;
        *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
        *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
        if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x157f50);
          (*pcVar2)();
        }
        iVar3 = (**(code **)(puVar5 + 6))(*param_1,puVar5,0);
        if (iVar3 < 0) {
          _printk(&DAT_00167934,"syna_testing_pt0a_zte",*(undefined8 *)(puVar5 + 2));
          puVar8 = &DAT_0016586b;
        }
        else {
          puVar8 = &DAT_0016607f;
          if (*(char *)(puVar5 + 4) == '\0') {
            puVar8 = &DAT_0016586b;
          }
        }
        uVar6 = scnprintf(lVar4,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                          *puVar5,puVar8);
        lVar1 = local_b0;
        uVar6 = uVar6 & 0xffffffff;
        if ((iStack_a4 != 0) && (puVar5[8] != 0)) {
          uVar9 = 0;
          do {
            if (puVar5[9] != 0) {
              uVar10 = 0;
              do {
                iVar3 = scnprintf(lVar4 + uVar6,0x1000 - uVar6,&DAT_00166b4a,
                                  (long)*(short *)(lVar1 + (ulong)(uVar10 + uVar9 * *(int *)(*
                                                  param_1 + 0x20)) * 2));
                uVar10 = uVar10 + 1;
                uVar6 = (ulong)(uint)(iVar3 + (int)uVar6);
              } while (uVar10 < (uint)puVar5[9]);
            }
            iVar3 = scnprintf(lVar4 + uVar6,0x1000 - uVar6,&DAT_001659e3);
            uVar9 = uVar9 + 1;
            uVar6 = (ulong)(uint)(iVar3 + (int)uVar6);
          } while (uVar9 < (uint)puVar5[8]);
        }
        tpd_copy_to_tp_firmware_data(lVar4);
        if ((char)local_70 != '\0') {
          _printk(&DAT_00163e2b,"syna_tcm_buf_release");
        }
        lVar1 = local_b0;
        lVar7 = syna_request_managed_device();
        if (lVar7 == 0) {
          _printk(&DAT_00167108,"syna_pal_mem_free");
        }
        else if (lVar1 != 0) {
          devm_kfree(lVar7,lVar1);
        }
        local_a8 = 0;
        local_70 = local_70 & 0xffffffffffffff00;
        kfree(lVar4);
        goto LAB_0015808c;
      }
      uVar6 = scnprintf(lVar4,0x1000,"Invalid testing item id:%d\n",0xa00);
    }
    uVar6 = uVar6 & 0xffffffff;
  }
LAB_0015808c:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar6;
}

