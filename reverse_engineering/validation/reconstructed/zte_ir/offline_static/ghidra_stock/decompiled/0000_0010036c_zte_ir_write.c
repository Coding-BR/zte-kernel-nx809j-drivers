
void zte_ir_write(long param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  ulong uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  undefined1 auVar6 [16];
  code *pcVar7;
  bool bVar8;
  int iVar9;
  ulong uVar10;
  ulong uVar11;
  long lVar12;
  undefined2 *puVar13;
  uint uVar14;
  ulong uVar15;
  int iVar16;
  long lVar17;
  uint uVar18;
  long lVar19;
  undefined8 ***local_d0;
  undefined8 ***local_c8;
  undefined8 uStack_c0;
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
  
  lVar19 = sp_el0;
  local_48 = *(long *)(lVar19 + 0x710);
  local_c8 = (undefined8 ****)0x0;
  uStack_c0 = 0;
  local_d0 = (undefined8 ****)0x0;
  _printk(&DAT_0010125b,"zte_ir_write");
  lVar19 = *(long *)(param_1 + 0x20);
  mutex_lock(lVar19 + 0x138a8);
  uVar10 = memdup_user(param_2,param_3);
  if (uVar10 < 0xfffffffffffff001) {
    if (3 < param_3) {
      uVar11 = 0;
      uVar18 = 0;
      uVar14 = 0;
      do {
        if ((((long)uVar11 < 0) || (param_3 < uVar11 * 4)) || (param_3 + uVar11 * -4 < 4)) {
                    /* WARNING: Does not return */
          pcVar7 = (code *)SoftwareBreakpoint(1,0x100694);
          (*pcVar7)();
        }
        auVar6._8_8_ = 0;
        auVar6._0_8_ = (ulong)*(uint *)(uVar10 + uVar11 * 4) *
                       (ulong)(*(uint *)(lVar19 + 0x13888) >> 4) + 500000;
        iVar9 = SUB164(auVar6 * ZEXT816(0x10c6f7a0b5ed8d37),10);
        if (0x270 < uVar14 + iVar9 >> 6) {
          _printk(&DAT_001011be,"zte_ir_write",40000);
          param_3 = 0xffffffffffffffea;
          goto LAB_00100418;
        }
        lVar1 = 0x13884;
        if ((uVar18 & 1) != 0) {
          lVar1 = 0x13886;
        }
        if (iVar9 != 0) {
          uVar5 = *(undefined2 *)(lVar19 + lVar1);
          uVar3 = 0;
          if (uVar14 < 0x9c41) {
            uVar3 = 40000 - uVar14;
          }
          uVar11 = (ulong)(iVar9 - 1);
          if ((ulong)uVar3 <= (ulong)(iVar9 - 1)) {
            uVar11 = (ulong)uVar3;
          }
          uVar15 = (ulong)uVar14;
          if (uVar11 < 2) {
            lVar12 = 0;
          }
          else {
            lVar1 = uVar15 * 2;
            uVar2 = uVar11 + 1 & 1;
            uVar4 = 2;
            if (uVar2 != 0) {
              uVar4 = uVar2;
            }
            lVar12 = (uVar11 + 1) - uVar4;
            lVar17 = ~uVar11 + uVar4;
            uVar15 = lVar12 + uVar15;
            puVar13 = (undefined2 *)(lVar19 + 6 + lVar1);
            do {
              lVar17 = lVar17 + 2;
              puVar13[-1] = uVar5;
              *puVar13 = uVar5;
              puVar13 = puVar13 + 2;
            } while (lVar17 != 0);
          }
          if (39999 < uVar14) {
            uVar14 = 40000;
          }
          iVar9 = (int)lVar12 - iVar9;
          iVar16 = (int)lVar12 + -40000 + uVar14;
          uVar14 = (uint)uVar15;
          puVar13 = (undefined2 *)(lVar19 + 4 + uVar15 * 2);
          do {
            if (iVar16 == 0) {
                    /* WARNING: Does not return */
              pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x100690);
              (*pcVar7)();
            }
            bVar8 = iVar9 != -1;
            iVar9 = iVar9 + 1;
            uVar14 = uVar14 + 1;
            iVar16 = iVar16 + 1;
            *puVar13 = uVar5;
            puVar13 = puVar13 + 1;
          } while (bVar8);
        }
        uVar18 = uVar18 + 1;
        uVar11 = (ulong)(int)uVar18;
      } while (uVar11 < param_3 >> 2);
    }
    local_c8 = (undefined8 ***)0x0;
    uStack_c0 = 0;
    local_d0 = (undefined8 ***)0x0;
    _printk(&DAT_0010119c,"zte_ir_write");
    local_d0 = &local_b8;
    local_60 = &local_60;
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
    local_b8 = &local_d0;
    local_c8 = local_d0;
    local_b0 = local_b8;
    local_58 = local_60;
    iVar9 = spi_sync(*(undefined8 *)(lVar19 + 0x13890),&local_b8);
    if (iVar9 != 0) {
      _dev_err(*(undefined8 *)(lVar19 + 0x13890),"unable to deliver the signal,ret = %d\n",iVar9);
    }
    _printk(&DAT_0010118e,"zte_ir_write",iVar9);
  }
  else {
    iVar9 = (int)uVar10;
  }
  mutex_unlock(lVar19 + 0x138a8);
  if (iVar9 != 0) {
    param_3 = (long)iVar9;
  }
LAB_00100418:
  lVar19 = sp_el0;
  if (*(long *)(lVar19 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(param_3);
  }
  return;
}

