
uint syna_spi_read(undefined8 *param_1,void *param_2,uint param_3)

{
  undefined8 ****ppppuVar1;
  undefined8 *puVar2;
  void *pvVar3;
  uint uVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
  ulong extraout_x9;
  ulong uVar8;
  ulong extraout_x10;
  long lVar9;
  long extraout_x11;
  long lVar10;
  long extraout_x12;
  undefined8 uVar11;
  undefined8 extraout_x13;
  undefined8 ****ppppuVar12;
  undefined8 ****extraout_x14;
  long lVar13;
  long *plVar14;
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
  
  lVar13 = sp_el0;
  local_48 = *(long *)(lVar13 + 0x710);
  plVar14 = (long *)*param_1;
  local_58 = (undefined8 ****)0x0;
  uStack_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 ****)0x0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = (undefined8 ****)0x0;
  local_b0 = (undefined8 ****)0x0;
  if (plVar14 == (long *)0x0) {
    puVar5 = &DAT_0013b1b1;
  }
  else {
    lVar13 = *plVar14;
    if (lVar13 != 0) {
      mutex_lock(plVar14 + 0xe);
      if (((param_3 ^ 0xffffffff) & 0xffff) == 0) {
        _printk(&DAT_00132e16,"syna_spi_read",0xffff);
LAB_00119ac8:
        uVar4 = 0xffffffea;
      }
      else {
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
        uVar4 = param_3;
        if (*(int *)((long)plVar14 + 100) == 0) {
          uVar4 = 1;
        }
        local_b0 = local_b8;
        local_58 = local_60;
        uVar4 = syna_spi_alloc_mem(uVar4,param_3);
        if ((int)uVar4 < 0) {
          _printk(&DAT_0013ce60,"syna_spi_read");
        }
        else {
          if (*(int *)((long)plVar14 + 100) == 0) {
            memset(tx_buf,0xff,(ulong)param_3);
            puVar2 = xfer;
            *xfer = tx_buf;
            pvVar3 = rx_buf;
            ppppuVar12 = (undefined8 ****)(puVar2 + 0xe);
            *(uint *)(puVar2 + 2) = param_3;
            puVar2[1] = pvVar3;
            if (((ppppuVar12 == &local_b8) || ((undefined8 ****)local_b0 == ppppuVar12)) ||
               ((undefined8 ****)*local_b0 != &local_b8)) {
              __list_add_valid_or_report(ppppuVar12,local_b0,&local_b8);
            }
            else {
              puVar2[0xe] = &local_b8;
              puVar2[0xf] = local_b0;
              *local_b0 = ppppuVar12;
              local_b0 = ppppuVar12;
            }
          }
          else {
            *(undefined1 *)tx_buf = 0xff;
            if (param_3 != 0) {
              uVar7 = 0;
              uVar8 = (ulong)param_3;
              lVar9 = 0x70;
              lVar10 = 0x131000;
              uVar11 = 1;
              ppppuVar12 = &local_b8;
              do {
                lVar6 = *(long *)(lVar10 + 0xec0);
                ppppuVar1 = (undefined8 ****)(lVar6 + lVar9);
                *(int *)(ppppuVar1 + -0xc) = (int)uVar11;
                ppppuVar1[-0xe] = tx_buf;
                ppppuVar1[-0xd] = (undefined8 ***)((long)rx_buf + uVar7);
                if (((ppppuVar1 == ppppuVar12) || (ppppuVar1 == (undefined8 ****)local_b0)) ||
                   ((undefined8 ****)*local_b0 != ppppuVar12)) {
                  __list_add_valid_or_report(ppppuVar1,local_b0,&local_b8);
                  uVar7 = extraout_x9;
                  uVar8 = extraout_x10;
                  lVar9 = extraout_x11;
                  lVar10 = extraout_x12;
                  uVar11 = extraout_x13;
                  ppppuVar12 = extraout_x14;
                }
                else {
                  puVar2 = (undefined8 *)(lVar6 + lVar9);
                  *puVar2 = ppppuVar12;
                  puVar2[1] = local_b0;
                  *local_b0 = ppppuVar1;
                  local_b0 = ppppuVar1;
                }
                uVar7 = uVar7 + 1;
                lVar9 = lVar9 + 0x88;
              } while (uVar8 != uVar7);
            }
          }
          uVar4 = spi_sync(lVar13,&local_b8);
          if (uVar4 == 0) {
            if ((param_2 == (void *)0x0) || (rx_buf == (void *)0x0)) {
              _printk(&DAT_0013b8ba,"syna_spi_read");
              goto LAB_00119ac8;
            }
            memcpy(param_2,rx_buf,(ulong)param_3);
            uVar4 = param_3;
          }
          else {
            _printk(&DAT_001360a6,"syna_spi_read",uVar4);
          }
        }
      }
      mutex_unlock(plVar14 + 0xe);
      goto LAB_001199f8;
    }
    puVar5 = &DAT_0013ab35;
  }
  _printk(puVar5,"syna_spi_read");
  uVar4 = 0xfffffffa;
LAB_001199f8:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar4;
}

