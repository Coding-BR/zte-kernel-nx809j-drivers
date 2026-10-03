
uint syna_spi_write(undefined8 *param_1,void *param_2,uint param_3)

{
  long ****pppplVar1;
  undefined8 *puVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
  ulong extraout_x9;
  long lVar8;
  long extraout_x10;
  long lVar9;
  long extraout_x11;
  undefined8 uVar10;
  undefined8 extraout_x12;
  long ****pppplVar11;
  long ****extraout_x13;
  long lVar12;
  long *plVar13;
  long ***local_b8;
  long ***local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 ***local_60;
  undefined8 ***local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar12 = sp_el0;
  local_48 = *(long *)(lVar12 + 0x710);
  plVar13 = (long *)*param_1;
  local_58 = (undefined8 ***)0x0;
  uStack_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 ***)0x0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = (long ***)0x0;
  local_b0 = (long ***)0x0;
  if (plVar13 == (long *)0x0) {
    puVar5 = &DAT_00181d7e;
  }
  else {
    lVar12 = *plVar13;
    if (lVar12 != 0) {
      mutex_lock(plVar13 + 0xe);
      if (((param_3 ^ 0xffffffff) & 0xffff) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00180698,"syna_spi_write",0xffff);
      }
      local_b8 = (long ***)&local_b8;
      uStack_50 = 0;
      local_68 = 0;
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      local_60 = &local_60;
      uVar3 = param_3;
      if (*(int *)((long)plVar13 + 100) == 0) {
        uVar3 = 1;
      }
      local_b0 = local_b8;
      local_58 = local_60;
      iVar4 = syna_spi_alloc_mem(uVar3,param_3);
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017fcbe,"syna_spi_write");
      }
      if ((param_2 == (void *)0x0) || (tx_buf == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001815a4,"syna_spi_write");
      }
      memcpy(tx_buf,param_2,(ulong)param_3);
      puVar2 = xfer;
      if (*(int *)((long)plVar13 + 100) == 0) {
        *xfer = tx_buf;
        pppplVar11 = (long ****)(puVar2 + 0xe);
        *(uint *)(puVar2 + 2) = param_3;
        if (((pppplVar11 == &local_b8) || ((long ****)local_b0 == pppplVar11)) ||
           ((long ****)*local_b0 != &local_b8)) {
          __list_add_valid_or_report(pppplVar11,local_b0,&local_b8);
        }
        else {
          puVar2[0xe] = &local_b8;
          puVar2[0xf] = local_b0;
          *local_b0 = (long **)pppplVar11;
          local_b0 = (long ***)pppplVar11;
        }
      }
      else if (param_3 != 0) {
        uVar7 = 0;
        lVar8 = 0x70;
        lVar9 = 0x15e000;
        uVar10 = 1;
        pppplVar11 = &local_b8;
        do {
          lVar6 = *(long *)(lVar9 + 0xd18);
          pppplVar1 = (long ****)(lVar6 + lVar8);
          *(int *)(pppplVar1 + -0xc) = (int)uVar10;
          pppplVar1[-0xe] = (long ***)((long)tx_buf + uVar7);
          if (((pppplVar1 == pppplVar11) || (pppplVar1 == (long ****)local_b0)) ||
             ((long ****)*local_b0 != pppplVar11)) {
            __list_add_valid_or_report(pppplVar1,local_b0,&local_b8);
            uVar7 = extraout_x9;
            lVar8 = extraout_x10;
            lVar9 = extraout_x11;
            uVar10 = extraout_x12;
            pppplVar11 = extraout_x13;
          }
          else {
            puVar2 = (undefined8 *)(lVar6 + lVar8);
            *puVar2 = pppplVar11;
            puVar2[1] = local_b0;
            *local_b0 = (long **)pppplVar1;
            local_b0 = (long ***)pppplVar1;
          }
          uVar7 = uVar7 + 1;
          lVar8 = lVar8 + 0x88;
        } while (param_3 != uVar7);
      }
      iVar4 = spi_sync(lVar12,&local_b8);
      if (iVar4 != 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181891,"syna_spi_write",iVar4);
      }
      mutex_unlock(plVar13 + 0xe);
      lVar12 = sp_el0;
      if (*(long *)(lVar12 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      return param_3;
    }
    puVar5 = &DAT_00181c7f;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_spi_write");
}

