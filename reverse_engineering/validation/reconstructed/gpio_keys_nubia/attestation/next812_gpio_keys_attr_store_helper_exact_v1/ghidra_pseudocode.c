
long gpio_keys_attr_store_helper(long *param_1,undefined8 param_2,uint param_3)

{
  ulong *puVar1;
  byte bVar2;
  ushort uVar3;
  code *pcVar4;
  int iVar5;
  ulong *puVar6;
  undefined1 uVar7;
  uint uVar8;
  ulong uVar9;
  long *plVar10;
  long lVar11;
  long lVar12;
  
  if ((param_3 & 0xfffffffb) != 1) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x800,0x102244);
    (*pcVar4)();
  }
  uVar8 = 0x300;
  if (param_3 != 1) {
    uVar8 = 0x11;
  }
  lVar12 = param_1[1];
  lVar11 = 0x30;
  if (param_3 != 1) {
    lVar11 = 200;
  }
  puVar6 = (ulong *)bitmap_zalloc(uVar8,0xcc0);
  if (puVar6 == (ulong *)0x0) {
    return -0xc;
  }
  iVar5 = bitmap_parselist(param_2,puVar6,uVar8);
  if (iVar5 != 0) {
    lVar11 = (long)iVar5;
    goto LAB_001020b8;
  }
  puVar1 = (ulong *)(lVar12 + lVar11);
  if (param_3 == 1) {
    if (((((((*puVar6 & (*puVar1 ^ 0xffffffffffffffff)) == 0) &&
           ((puVar6[1] & (puVar1[1] ^ 0xffffffffffffffff)) == 0)) &&
          ((puVar6[2] & (puVar1[2] ^ 0xffffffffffffffff)) == 0)) &&
         ((((puVar6[3] & (puVar1[3] ^ 0xffffffffffffffff)) == 0 &&
           ((puVar6[4] & (puVar1[4] ^ 0xffffffffffffffff)) == 0)) &&
          (((puVar6[5] & (puVar1[5] ^ 0xffffffffffffffff)) == 0 &&
           (((puVar6[6] & (puVar1[6] ^ 0xffffffffffffffff)) == 0 &&
            ((puVar6[7] & (puVar1[7] ^ 0xffffffffffffffff)) == 0)))))))) &&
        ((puVar6[8] & (puVar1[8] ^ 0xffffffffffffffff)) == 0)) &&
       ((((puVar6[9] & (puVar1[9] ^ 0xffffffffffffffff)) == 0 &&
         ((puVar6[10] & (puVar1[10] ^ 0xffffffffffffffff)) == 0)) &&
        ((puVar6[0xb] & (puVar1[0xb] ^ 0xffffffffffffffff)) == 0)))) {
      lVar11 = 0xc;
      goto LAB_00102088;
    }
LAB_001020b4:
    lVar11 = -0x16;
  }
  else {
    lVar11 = 0;
LAB_00102088:
    if ((uVar8 & 0x11) != 0) {
      uVar9 = 0x1ffff;
      if (param_3 == 1) {
        uVar9 = 0xffffffffffffffff;
      }
      if ((puVar6[lVar11] & uVar9 & (puVar1[lVar11] ^ 0xffffffffffffffff)) != 0) goto LAB_001020b4;
    }
    _printk(&DAT_00102d88,uVar8,param_3);
    uVar9 = (ulong)*(uint *)(*param_1 + 8);
    if (0 < (int)*(uint *)(*param_1 + 8)) {
      plVar10 = param_1 + 0xc;
      do {
        if (((*(uint *)(plVar10[-3] + 0x18) == param_3) &&
            ((*(ulong *)((long)puVar6 + ((ulong)(*(ushort *)*plVar10 >> 3) & 0x1ff8)) >>
              ((ulong)*(ushort *)*plVar10 & 0x3f) & 1) != 0)) &&
           (*(char *)(plVar10[-3] + 0x28) != '\x01')) goto LAB_001020b4;
        uVar9 = uVar9 - 1;
        plVar10 = plVar10 + 0x22;
      } while (uVar9 != 0);
    }
    mutex_lock(param_1 + 2);
    if (0 < *(int *)(*param_1 + 8)) {
      lVar12 = 0;
      lVar11 = 0;
      do {
        if (*(uint *)(*(long *)((long)param_1 + lVar12 + 0x48) + 0x18) == param_3) {
          uVar3 = **(ushort **)((long)param_1 + lVar12 + 0x60);
          bVar2 = *(byte *)((long)param_1 + lVar12 + 0x150);
          if ((*(ulong *)((long)puVar6 + ((ulong)(uVar3 >> 3) & 0x1ff8)) >> ((ulong)uVar3 & 0x3f) &
              1) == 0) {
            if (bVar2 != 0) {
              enable_irq(*(undefined4 *)((long)param_1 + lVar12 + 0x104));
              if (*(int *)((long)param_1 + lVar12 + 0x108) != 0) {
                enable_irq();
              }
              uVar7 = 0;
              goto LAB_00102188;
            }
          }
          else if ((bVar2 & 1) == 0) {
            disable_irq(*(undefined4 *)((long)param_1 + lVar12 + 0x104));
            if (*(int *)((long)param_1 + lVar12 + 0x108) != 0) {
              disable_irq();
            }
            if (*(long *)((long)param_1 + lVar12 + 0x58) == 0) {
              timer_delete_sync((long)param_1 + lVar12 + 0x68);
            }
            else {
              cancel_delayed_work_sync((long)param_1 + lVar12 + 0x98);
            }
            uVar7 = 1;
LAB_00102188:
            *(undefined1 *)((long)param_1 + lVar12 + 0x150) = uVar7;
          }
        }
        lVar11 = lVar11 + 1;
        lVar12 = lVar12 + 0x110;
      } while (lVar11 < *(int *)(*param_1 + 8));
    }
    mutex_unlock(param_1 + 2);
    lVar11 = 0;
  }
LAB_001020b8:
  bitmap_free(puVar6);
  return lVar11;
}

