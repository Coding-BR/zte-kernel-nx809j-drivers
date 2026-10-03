
void syna_testing_pt0a_show(long param_1,undefined8 param_2,long param_3)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  long *plVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 uStack_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_b8 = 0;
  local_c8 = 0;
  plVar8 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  local_a0 = 0;
  if ((*(byte *)((long)plVar8 + 0x582) & 1) == 0) {
    iVar4 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0A00();
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[9] = *(undefined4 *)(*plVar8 + 0x20);
      local_b0 = 0;
      uStack_a8 = 0;
      puVar5[8] = *(undefined4 *)(*plVar8 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00166036);
      local_c0 = pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar5 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c3c0);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar5 + 6))(*plVar8,puVar5,0);
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172f30,"syna_testing_pt0a_show",*(undefined8 *)(puVar5 + 2));
      }
      puVar1 = &DAT_0016f3e4;
      if (*(char *)(puVar5 + 4) == '\0') {
        puVar1 = &DAT_0016e2b4;
      }
      uVar6 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar1);
      lVar2 = local_b0;
      uVar6 = uVar6 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar5[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar5[9] != 0) {
            uVar10 = 0;
            do {
              iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_00170d2c,
                                (long)*(short *)(lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*plVar8 +
                                                                                          0x20)) * 2
                                                ));
              uVar10 = uVar10 + 1;
              uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
            } while (uVar10 < (uint)puVar5[9]);
          }
          iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_0016e5bc);
          uVar9 = uVar9 + 1;
          uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
        } while (uVar9 < (uint)puVar5[8]);
      }
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171996,"syna_pal_mem_free");
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_0015c500;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0xa00);
  }
  uVar6 = (ulong)iVar4;
LAB_0015c500:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}

