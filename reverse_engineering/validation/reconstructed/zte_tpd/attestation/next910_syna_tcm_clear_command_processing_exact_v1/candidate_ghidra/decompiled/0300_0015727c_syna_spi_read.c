
ulong syna_spi_read(undefined8 *param_1,void *param_2,uint param_3)

{
  undefined8 ****ppppuVar1;
  undefined8 *puVar2;
  uint uVar3;
  void *pvVar4;
  int iVar5;
  undefined *puVar6;
  long lVar7;
  ulong uVar8;
  ulong extraout_x9;
  ulong uVar9;
  ulong extraout_x10;
  long lVar10;
  long extraout_x11;
  long lVar11;
  long extraout_x12;
  undefined8 uVar12;
  undefined8 extraout_x13;
  undefined8 ****ppppuVar13;
  undefined8 ****extraout_x14;
  long lVar14;
  long *plVar15;
  undefined8 ***local_b8;
  undefined8 ***local_b0;
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
  
  lVar14 = sp_el0;
  local_48 = *(long *)(lVar14 + 0x710);
  plVar15 = (long *)*param_1;
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
  local_b8 = (undefined8 ***)0x0;
  local_b0 = (undefined8 ***)0x0;
  if (plVar15 == (long *)0x0) {
    puVar6 = &DAT_00181d7e;
  }
  else {
    lVar14 = *plVar15;
    if (lVar14 != 0) {
      mutex_lock(plVar15 + 0xe);
      if (((param_3 ^ 0xffffffff) & 0xffff) == 0) {
        uVar8 = _printk(&DAT_0017e45b,"syna_spi_read",0xffff);
        return uVar8;
      }
      local_b8 = &local_b8;
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
      if (*(int *)((long)plVar15 + 100) == 0) {
        uVar3 = 1;
      }
      local_b0 = local_b8;
      local_58 = local_60;
      iVar5 = syna_spi_alloc_mem(uVar3,param_3);
      if (iVar5 < 0) {
        uVar8 = _printk(&DAT_00182ae9,"syna_spi_read");
        return uVar8;
      }
      if (*(int *)((long)plVar15 + 100) == 0) {
        memset(tx_buf,0xff,(ulong)param_3);
        puVar2 = xfer;
        *xfer = tx_buf;
        pvVar4 = rx_buf;
        ppppuVar13 = (undefined8 ****)(puVar2 + 0xe);
        *(uint *)(puVar2 + 2) = param_3;
        puVar2[1] = pvVar4;
        if (((ppppuVar13 == &local_b8) || ((undefined8 ****)local_b0 == ppppuVar13)) ||
           ((undefined8 ****)*local_b0 != &local_b8)) {
          __list_add_valid_or_report(ppppuVar13,local_b0,&local_b8);
        }
        else {
          puVar2[0xe] = &local_b8;
          puVar2[0xf] = local_b0;
          *local_b0 = ppppuVar13;
          local_b0 = ppppuVar13;
        }
      }
      else {
        *(undefined1 *)tx_buf = 0xff;
        if (param_3 != 0) {
          uVar8 = 0;
          uVar9 = (ulong)param_3;
          lVar10 = 0x70;
          lVar11 = 0x15e000;
          uVar12 = 1;
          ppppuVar13 = &local_b8;
          do {
            lVar7 = *(long *)(lVar11 + 0xd18);
            ppppuVar1 = (undefined8 ****)(lVar7 + lVar10);
            *(int *)(ppppuVar1 + -0xc) = (int)uVar12;
            ppppuVar1[-0xe] = tx_buf;
            ppppuVar1[-0xd] = (undefined8 ***)((long)rx_buf + uVar8);
            if (((ppppuVar1 == ppppuVar13) || (ppppuVar1 == (undefined8 ****)local_b0)) ||
               ((undefined8 ****)*local_b0 != ppppuVar13)) {
              __list_add_valid_or_report(ppppuVar1,local_b0,&local_b8);
              uVar8 = extraout_x9;
              uVar9 = extraout_x10;
              lVar10 = extraout_x11;
              lVar11 = extraout_x12;
              uVar12 = extraout_x13;
              ppppuVar13 = extraout_x14;
            }
            else {
              puVar2 = (undefined8 *)(lVar7 + lVar10);
              *puVar2 = ppppuVar13;
              puVar2[1] = local_b0;
              *local_b0 = ppppuVar1;
              local_b0 = ppppuVar1;
            }
            uVar8 = uVar8 + 1;
            lVar10 = lVar10 + 0x88;
          } while (uVar9 != uVar8);
        }
      }
      iVar5 = spi_sync(lVar14,&local_b8);
      if (iVar5 != 0) {
        uVar8 = _printk(&DAT_0017faa5,"syna_spi_read",iVar5);
        return uVar8;
      }
      if ((param_2 != (void *)0x0) && (rx_buf != (void *)0x0)) {
        memcpy(param_2,rx_buf,(ulong)param_3);
        mutex_unlock(plVar15 + 0xe);
        lVar14 = sp_el0;
        if (*(long *)(lVar14 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail();
        }
        return (ulong)param_3;
      }
      uVar8 = _printk(&DAT_00182283,"syna_spi_read");
      return uVar8;
    }
    puVar6 = &DAT_00181c7f;
  }
  uVar8 = _printk(puVar6,"syna_spi_read");
  return uVar8;
}

