/* 0010041c zte_ir_write */

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
  _printk(&DAT_001014e7,"zte_ir_write");
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
          pcVar7 = (code *)SoftwareBreakpoint(1,0x100744);
          (*pcVar7)();
        }
        auVar6._8_8_ = 0;
        auVar6._0_8_ = (ulong)*(uint *)(uVar10 + uVar11 * 4) *
                       (ulong)(*(uint *)(lVar19 + 0x13888) >> 4) + 500000;
        iVar9 = SUB164(auVar6 * ZEXT816(0x10c6f7a0b5ed8d37),10);
        if (0x270 < uVar14 + iVar9 >> 6) {
          _printk(&DAT_0010144a,"zte_ir_write",40000);
          param_3 = 0xffffffffffffffea;
          goto LAB_001004c8;
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
              pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x100740);
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
    _printk(&DAT_00101428,"zte_ir_write");
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
    _printk(&DAT_0010141a,"zte_ir_write",iVar9);
  }
  else {
    iVar9 = (int)uVar10;
  }
  mutex_unlock(lVar19 + 0x138a8);
  if (iVar9 != 0) {
    param_3 = (long)iVar9;
  }
LAB_001004c8:
  lVar19 = sp_el0;
  if (*(long *)(lVar19 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(param_3);
  }
  return;
}



/* 0010074c zte_ir_ioctl */

undefined8 zte_ir_ioctl(long param_1,uint param_2,ulong param_3)

{
  int iVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  
  if ((param_2 >> 0x1e & 1) == 0) {
    uVar3 = 0xffffffffffffffe7;
    if (param_2 == 0x40046931) {
      _printk(&DAT_0010152e,"zte_ir_ioctl",0);
      uVar3 = 0xffffffffffffffea;
    }
  }
  else {
    puVar2 = (undefined8 *)sp_el0;
    lVar5 = *(long *)(param_1 + 0x20);
    if (((*(byte *)((long)puVar2 + 0x46) >> 5 & 1) != 0) ||
       (uVar4 = param_3, ((uint)*puVar2 >> 0x1a & 1) != 0)) {
      uVar4 = param_3 & (long)(param_3 << 8) >> 8;
    }
    uVar3 = 0xfffffffffffffff2;
    if (uVar4 < 0x7ffffffffd) {
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr1_el1 = puVar2[1] & 0xffff000000000000 | uVar4 & 0xffffffffffff;
      ttbr0_el1 = puVar2[1];
      InstructionSynchronizationBarrier();
      daif = uVar3;
      iVar1 = *(int *)(param_3 & 0xff7fffffffffffff);
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar4 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar3 = 0xffffffffffffffe7;
      if (param_2 == 0x40046931) {
        _printk(&DAT_0010152e,"zte_ir_ioctl",iVar1);
        uVar3 = 0xffffffffffffffea;
        if (iVar1 != 0) {
          uVar3 = 0;
          *(int *)(lVar5 + 0x13888) = iVar1 << 4;
        }
      }
    }
  }
  return uVar3;
}



/* 001008b4 zte_ir_open */

undefined4 zte_ir_open(long param_1,long param_2)

{
  undefined **ppuVar1;
  undefined4 uVar2;
  
  mutex_lock(&device_list_lock);
  ppuVar1 = &device_list;
  do {
    ppuVar1 = (undefined **)*ppuVar1;
    if (ppuVar1 == &device_list) {
      _printk(&DAT_00101475,*(uint *)(param_1 + 0x4c) & 0xfffff);
      uVar2 = 0xfffffffa;
      goto LAB_0010094c;
    }
  } while (*(int *)(ppuVar1 + -0x271b) != *(int *)(param_1 + 0x4c));
  _printk(&DAT_00101596);
  *(undefined ***)(param_2 + 0x20) = ppuVar1 + -0x271b;
  nonseekable_open(param_1,param_2);
  uVar2 = 0;
LAB_0010094c:
  mutex_unlock(&device_list_lock);
  return uVar2;
}



/* 00100974 zte_ir_release */

undefined8 zte_ir_release(undefined8 param_1,long param_2)

{
  mutex_lock(&device_list_lock);
  *(undefined8 *)(param_2 + 0x20) = 0;
  _printk(&DAT_001014f8);
  mutex_unlock(&device_list_lock);
  return 0;
}



/* 001009c8 zte_ir_write_safe */

/* WARNING: Type propagation algorithm not settling */

void zte_ir_write_safe(long param_1,long param_2,ulong param_3)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long local_158 [33];
  
  lVar4 = sp_el0;
  local_158[0x20] = *(long *)(lVar4 + 0x710);
  if ((param_1 == 0) || (lVar4 = *(long *)(param_1 + 0x20), lVar4 == 0)) {
    uVar2 = 0xffffffffffffffed;
  }
  else {
    uVar2 = 0xffffffffffffffea;
    if (((param_2 != 0) && (param_3 != 0)) && ((param_3 & 3) == 0)) {
      if (param_3 < 0x27101) {
        local_158[0x1e] = 0;
        local_158[0x1f] = 0;
        local_158[0x1c] = 0;
        local_158[0x1d] = 0;
        local_158[0x1a] = 0;
        local_158[0x1b] = 0;
        local_158[0x18] = 0;
        local_158[0x19] = 0;
        local_158[0x16] = 0;
        local_158[0x17] = 0;
        local_158[0x14] = 0;
        local_158[0x15] = 0;
        local_158[0x12] = 0;
        local_158[0x13] = 0;
        local_158[0x10] = 0;
        local_158[0x11] = 0;
        local_158[0xe] = 0;
        local_158[0xf] = 0;
        local_158[0xc] = 0;
        local_158[0xd] = 0;
        local_158[10] = 0;
        local_158[0xb] = 0;
        local_158[8] = 0;
        local_158[9] = 0;
        local_158[6] = 0;
        local_158[7] = 0;
        local_158[4] = 0;
        local_158[5] = 0;
        local_158[2] = 0;
        local_158[3] = 0;
        local_158[0] = 0;
        local_158[1] = 0;
        uVar3 = memdup_user(param_2,param_3);
        uVar2 = uVar3;
        if (uVar3 < 0xfffffffffffff001) {
          mutex_lock(lVar4 + 0x138a8);
          if ((*(byte *)(lVar4 + 0x138ec) & 1) == 0) {
            lVar5 = *(long *)(lVar4 + 0x13890);
            if (lVar5 == 0) {
              uVar2 = 0xffffffffffffffed;
            }
            else {
              iVar1 = zte_ir_encode_pulses
                                (lVar4,uVar3,param_3 >> 2,*(undefined4 *)(lVar4 + 0x13888),local_158
                                );
              if (iVar1 == 0) {
                uVar2 = param_3;
                if (local_158[0] != 0) {
                  local_158[0xf] = lVar4 + 4;
                  local_158[0x1e] = 0;
                  local_158[0x1f] = 0;
                  local_158[0x1c] = 0;
                  local_158[0x1d] = 0;
                  local_158[0x1b] = 0;
                  local_158[0x18] = 0;
                  local_158[0x19] = 0;
                  local_158[0x16] = 0;
                  local_158[0x17] = 0;
                  local_158[0x14] = 0;
                  local_158[0x15] = 0;
                  local_158[0x12] = 0;
                  local_158[0x13] = 0;
                  local_158[0x10] = 0;
                  local_158[0x11] = (long)(uint)((int)local_158[0] << 1);
                  local_158[0x1a] = (long)*(uint *)(lVar4 + 0x13888);
                  spi_message_init(local_158 + 1);
                  spi_message_add_tail(local_158 + 0xf,local_158 + 1);
                  iVar1 = spi_sync(lVar5,local_158 + 1);
                  if (iVar1 != 0) {
                    uVar2 = (ulong)iVar1;
                    _dev_err(lVar5,"unable to deliver the signal,ret = %d\n");
                  }
                }
              }
              else {
                uVar2 = (long)iVar1;
              }
            }
          }
          else {
            uVar2 = 0xffffffffffffff94;
          }
          mutex_unlock(lVar4 + 0x138a8);
          kfree(uVar3);
        }
      }
      else {
        uVar2 = 0xfffffffffffffff9;
      }
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_158[0x20]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00100bb8 zte_ir_ioctl_safe */

undefined8 zte_ir_ioctl_safe(long param_1,int param_2,ulong param_3)

{
  uint uVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  
  uVar3 = 0xffffffffffffffed;
  if (((param_1 != 0) && (lVar5 = *(long *)(param_1 + 0x20), lVar5 != 0)) &&
     (uVar3 = 0xffffffffffffffe7, param_2 == 0x40046931)) {
    puVar2 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar2 + 0x46) >> 5 & 1) != 0) ||
       (uVar4 = param_3, ((uint)*puVar2 >> 0x1a & 1) != 0)) {
      uVar4 = param_3 & (long)(param_3 << 8) >> 8;
    }
    uVar3 = 0xfffffffffffffff2;
    if (uVar4 < 0x7ffffffffd) {
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr1_el1 = puVar2[1] & 0xffff000000000000 | uVar4 & 0xffffffffffff;
      ttbr0_el1 = puVar2[1];
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar1 = *(uint *)(param_3 & 0xff7fffffffffffff);
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar4 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar3 = 0xffffffffffffffea;
      if ((0 < (int)uVar1) && (uVar1 < 0x4c4b5)) {
        mutex_lock(lVar5 + 0x138a8);
        if ((*(byte *)(lVar5 + 0x138ec) & 1) == 0) {
          uVar3 = 0;
          *(uint *)(lVar5 + 0x13888) = uVar1 << 4;
        }
        else {
          uVar3 = 0xffffffffffffff94;
        }
        mutex_unlock(lVar5 + 0x138a8);
      }
    }
  }
  return uVar3;
}



/* 00100d28 zte_ir_open_safe */

int zte_ir_open_safe(long param_1,long param_2)

{
  undefined **ppuVar1;
  int iVar2;
  undefined **ppuVar3;
  
  mutex_lock(&device_list_lock);
  ppuVar3 = &device_list;
  do {
    ppuVar3 = (undefined **)*ppuVar3;
    if (ppuVar3 == &device_list) goto LAB_00100d90;
    ppuVar1 = ppuVar3 + -0x271b;
  } while (*(int *)ppuVar1 != *(int *)(param_1 + 0x4c));
  if ((ppuVar1 == (undefined **)0x0) || ((*(byte *)((long)ppuVar3 + 0x14) & 1) != 0)) {
LAB_00100d90:
    iVar2 = -6;
  }
  else {
    *(int *)(ppuVar3 + 2) = *(int *)(ppuVar3 + 2) + 1;
    *(undefined ***)(param_2 + 0x20) = ppuVar1;
    iVar2 = nonseekable_open(param_1,param_2);
    if (iVar2 != 0) {
      *(int *)(ppuVar3 + 2) = *(int *)(ppuVar3 + 2) + -1;
      *(undefined8 *)(param_2 + 0x20) = 0;
    }
  }
  mutex_unlock(&device_list_lock);
  return iVar2;
}



/* 00100df4 zte_ir_release_safe */

undefined8 zte_ir_release_safe(undefined8 param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_2 + 0x20);
  if (lVar2 != 0) {
    mutex_lock(&device_list_lock);
    *(undefined8 *)(param_2 + 0x20) = 0;
    if (((*(int *)(lVar2 + 0x138e8) == 0) ||
        (iVar1 = *(int *)(lVar2 + 0x138e8) + -1, *(int *)(lVar2 + 0x138e8) = iVar1, iVar1 != 0)) ||
       ((*(byte *)(lVar2 + 0x138ec) & 1) == 0)) {
      mutex_unlock(&device_list_lock);
    }
    else {
      mutex_unlock(&device_list_lock);
      kfree(lVar2);
    }
    return 0;
  }
  return 0xffffffed;
}



/* 00100e88 zte_ir_encode_pulses */

undefined4 zte_ir_encode_pulses(long param_1,long param_2,ulong param_3,uint param_4,ulong *param_5)

{
  ulong uVar1;
  ulong uVar2;
  ulong uVar3;
  ulong uVar4;
  uint uVar5;
  undefined2 uVar6;
  code *pcVar7;
  bool bVar8;
  ulong uVar9;
  long lVar10;
  undefined4 uVar11;
  ulong uVar12;
  ulong uVar13;
  long lVar14;
  undefined2 *puVar15;
  long lVar16;
  
  if (param_5 == (ulong *)0x0) {
    uVar11 = 0xffffffea;
  }
  else {
    uVar11 = 0xffffffea;
    *param_5 = 0;
    if (((param_2 != 0) && (param_3 != 0)) && (0xffb3b4ce < param_4 - 0x4c4b41)) {
      uVar12 = 0;
      uVar13 = 0;
      do {
        uVar5 = *(uint *)(param_2 + uVar12 * 4);
        uVar9 = ((ulong)uVar5 * (ulong)(param_4 >> 4) + 500000) / 1000000;
        if (40000 - uVar13 <= uVar9) {
          return 0xfffffff9;
        }
        lVar14 = 0x13884;
        if ((uVar12 & 1) != 0) {
          lVar14 = 0x13886;
        }
        if (499999 < (ulong)uVar5 * (ulong)(param_4 >> 4)) {
          uVar6 = *(undefined2 *)(param_1 + lVar14);
          uVar1 = 0;
          if (uVar13 < 0x9c41) {
            uVar1 = 40000 - uVar13;
          }
          uVar4 = uVar9;
          if (uVar9 < 2) {
            uVar4 = 1;
          }
          uVar2 = uVar4 - 1;
          if (uVar1 <= uVar4 - 1) {
            uVar2 = uVar1;
          }
          lVar14 = 0;
          if (1 < uVar2) {
            uVar1 = uVar2 + 1 & 1;
            uVar3 = 2;
            if (uVar1 != 0) {
              uVar3 = uVar1;
            }
            lVar14 = (uVar2 + 1) - uVar3;
            lVar10 = ~uVar2 + uVar3;
            puVar15 = (undefined2 *)(param_1 + 6 + uVar13 * 2);
            do {
              lVar10 = lVar10 + 2;
              puVar15[-1] = uVar6;
              *puVar15 = uVar6;
              puVar15 = puVar15 + 2;
            } while (lVar10 != 0);
          }
          uVar1 = uVar13;
          if (39999 < uVar13) {
            uVar1 = 40000;
          }
          lVar10 = lVar14 - uVar4;
          lVar16 = lVar14 + -40000 + uVar1;
          puVar15 = (undefined2 *)(param_1 + 4 + (lVar14 + uVar13) * 2);
          do {
            if (lVar16 == 0) {
                    /* WARNING: Does not return */
              pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x100ffc);
              (*pcVar7)();
            }
            bVar8 = lVar10 != -1;
            lVar10 = lVar10 + 1;
            lVar16 = lVar16 + 1;
            *puVar15 = uVar6;
            puVar15 = puVar15 + 1;
          } while (bVar8);
        }
        uVar12 = uVar12 + 1;
        uVar13 = uVar9 + uVar13;
      } while (uVar12 != param_3);
      uVar11 = 0;
      *param_5 = uVar13;
    }
  }
  return uVar11;
}



/* 00100ffc spi_message_init */

void spi_message_init(long param_1)

{
  undefined8 *puVar1;
  
  *(undefined8 *)(param_1 + 0x60) = 0;
  *(undefined8 *)(param_1 + 0x68) = 0;
  *(undefined8 *)(param_1 + 0x48) = 0;
  *(undefined8 *)(param_1 + 0x50) = 0;
  *(undefined8 *)(param_1 + 0x38) = 0;
  *(undefined8 *)(param_1 + 0x40) = 0;
  *(undefined8 *)(param_1 + 0x28) = 0;
  *(undefined8 *)(param_1 + 0x30) = 0;
  *(undefined8 *)(param_1 + 0x18) = 0;
  *(undefined8 *)(param_1 + 0x20) = 0;
  *(undefined8 *)(param_1 + 0x10) = 0;
  puVar1 = (undefined8 *)(param_1 + 0x58);
  *puVar1 = 0;
  *(long *)param_1 = param_1;
  *(long *)(param_1 + 8) = param_1;
  *puVar1 = puVar1;
  *(undefined8 **)(param_1 + 0x60) = puVar1;
  return;
}



/* 00101030 spi_message_add_tail */

void spi_message_add_tail(long param_1,long param_2)

{
  long *plVar1;
  long *plVar2;
  
  plVar1 = (long *)(param_1 + 0x70);
  plVar2 = *(long **)(param_2 + 8);
  if (((plVar1 != (long *)param_2) && (plVar2 != plVar1)) && (*plVar2 == param_2)) {
    *(long **)(param_2 + 8) = plVar1;
    *(long *)(param_1 + 0x70) = param_2;
    *(long **)(param_1 + 0x78) = plVar2;
    *plVar2 = (long)plVar1;
    return;
  }
  __list_add_valid_or_report();
  return;
}



/* 00101088 __list_add */

void __list_add(long *param_1,long *param_2,long *param_3)

{
  if (((((long *)param_3[1] == param_2) && (param_1 != param_3)) && (param_1 != param_2)) &&
     ((long *)*param_2 == param_3)) {
    param_3[1] = (long)param_1;
    *param_1 = (long)param_3;
    param_1[1] = (long)param_2;
    *param_2 = (long)param_1;
    return;
  }
  __list_add_valid_or_report();
  return;
}



/* 001010e0 zte_ir_probe */

ulong zte_ir_probe(long param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  int *piVar5;
  ulong uVar6;
  
  piVar5 = (int *)__kmalloc_large_noprof(0x138f0,0xdc0);
  if (piVar5 == (int *)0x0) {
    uVar6 = 0xfffffff4;
  }
  else {
    piVar5[0x4e28] = 0;
    __mutex_init(piVar5 + 0x4e2a,"&runtime->stock.buf_lock",&zte_ir_probe___key);
    piVar1 = piVar5 + 0x4e36;
    *(int **)(piVar5 + 0x4e36) = piVar1;
    *(int **)(piVar5 + 0x4e38) = piVar1;
    piVar5[0x4e21] = 0x1f;
    piVar5[0x4e22] = 0x94700;
    *(long *)(piVar5 + 0x4e24) = param_1;
    piVar5[0x4e3a] = 0;
    *(undefined1 *)(piVar5 + 0x4e3b) = 0;
    mutex_lock(&device_list_lock);
    if ((minors & 1) == 0) {
      iVar2 = spidev_major << 0x14;
      uVar6 = device_create(zte_ir_class,param_1,iVar2,piVar5,"zte_ir");
      if ((uVar6 < 0xfffffffffffff001) || ((int)uVar6 == 0)) {
        *piVar5 = iVar2;
        Hint_Prefetch(0x101b68,2,0,1);
        do {
          cVar3 = '\x01';
          bVar4 = (bool)ExclusiveMonitorPass(0x101b68,0x10);
          if (bVar4) {
            cVar3 = ExclusiveMonitorsStatus();
            minors = minors | 1;
          }
        } while (cVar3 != '\0');
        __list_add(piVar1,&device_list,device_list);
        mutex_unlock(&device_list_lock);
        iVar2 = piVar5[0x4e22];
        *(int **)(param_1 + 0x98) = piVar5;
        _dev_printk(&DAT_00101634,param_1,"zte_ir->speed_hz=%d\n",iVar2);
        uVar6 = 0;
        goto LAB_0010126c;
      }
    }
    else {
      uVar6 = 0xffffffed;
    }
    mutex_unlock(&device_list_lock);
    kfree(piVar5);
  }
LAB_0010126c:
  return uVar6 & 0xffffffff;
}



/* 001012ac zte_ir_remove */

void zte_ir_remove(long param_1)

{
  long *plVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  long *plVar5;
  long lVar6;
  undefined4 *puVar7;
  
  puVar7 = *(undefined4 **)(param_1 + 0x98);
  if (puVar7 != (undefined4 *)0x0) {
    mutex_lock(puVar7 + 0x4e2a);
    mutex_lock(&device_list_lock);
    *(undefined1 *)(puVar7 + 0x4e3b) = 1;
    _raw_spin_lock_irq(puVar7 + 0x4e28);
    *(undefined8 *)(puVar7 + 0x4e24) = 0;
    _raw_spin_unlock_irq(puVar7 + 0x4e28);
    plVar5 = *(long **)(puVar7 + 0x4e38);
    plVar1 = (long *)(puVar7 + 0x4e36);
    if (((long *)*plVar5 == plVar1) && (lVar6 = *plVar1, *(long **)(lVar6 + 8) == plVar1)) {
      *(long **)(lVar6 + 8) = plVar5;
      *plVar5 = lVar6;
    }
    else {
      __list_del_entry_valid_or_report();
    }
    *(undefined8 *)(puVar7 + 0x4e36) = 0xdead000000000100;
    *(undefined8 *)(puVar7 + 0x4e38) = 0xdead000000000122;
    device_destroy(zte_ir_class,*puVar7);
    Hint_Prefetch(0x101b68,2,0,1);
    do {
      cVar3 = '\x01';
      bVar4 = (bool)ExclusiveMonitorPass(0x101b68,0x10);
      if (bVar4) {
        cVar3 = ExclusiveMonitorsStatus();
        minors = minors & 0xfffffffffffffffe;
      }
    } while (cVar3 != '\0');
    *(undefined8 *)(param_1 + 0x98) = 0;
    iVar2 = puVar7[0x4e3a];
    mutex_unlock(&device_list_lock);
    mutex_unlock(puVar7 + 0x4e2a);
    if (iVar2 == 0) {
      kfree(puVar7);
    }
  }
  return;
}



/* 00101684 init_module */

ulong init_module(void)

{
  ulong uVar1;
  ulong uVar2;
  
  uVar1 = __register_chrdev(0,0,1,"zte_ir",zte_ir_fops);
  uVar2 = uVar1 & 0xffffffff;
  if (-1 < (int)uVar1) {
    spidev_major = (int)uVar1;
    uVar2 = class_create("zte_ir_class");
    zte_ir_class = uVar2;
    if (uVar2 < 0xfffffffffffff001) {
      uVar1 = __spi_register_driver(&__this_module,&zte_ir_spi_driver);
      uVar2 = uVar1 & 0xffffffff;
      if ((int)uVar1 == 0) {
        _printk(&DAT_00101603,spidev_major);
        goto LAB_00101728;
      }
      class_destroy(zte_ir_class);
    }
    __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  }
LAB_00101728:
  return uVar2 & 0xffffffff;
}



/* 00101758 cleanup_module */

void cleanup_module(void)

{
  driver_unregister(&PTR_s_zte_ir_001000b0);
  class_destroy(zte_ir_class);
  __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  return;
}



