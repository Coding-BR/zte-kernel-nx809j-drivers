
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
aw22xxx_para_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  undefined4 *puVar1;
  ulong uVar2;
  uint uVar3;
  ulong uVar4;
  ulong uVar5;
  undefined4 uVar6;
  int iVar7;
  code *pcVar8;
  int iVar9;
  long lVar10;
  ulong uVar11;
  ulong uVar12;
  long lVar13;
  long lVar14;
  undefined4 *puVar15;
  undefined4 *puVar16;
  
  _printk(&DAT_001096ee,"aw22xxx_para_store");
  lVar10 = __kmalloc_cache_noprof(_sscanf,0xcc0,100);
  if (lVar10 == 0) {
    _printk(&DAT_001089d7,"aw22xxx_para_store");
    param_4 = 0xfffffffffffffff2;
  }
  else {
    iVar9 = sscanf(param_3,
                   "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d",
                   lVar10,lVar10 + 4,lVar10 + 8,lVar10 + 0xc,lVar10 + 0x10,lVar10 + 0x14,
                   lVar10 + 0x18,lVar10 + 0x1c,lVar10 + 0x20,lVar10 + 0x24,lVar10 + 0x28,
                   lVar10 + 0x2c,lVar10 + 0x30,lVar10 + 0x34,lVar10 + 0x38,lVar10 + 0x3c,
                   lVar10 + 0x40,lVar10 + 0x44,lVar10 + 0x48,lVar10 + 0x4c,lVar10 + 0x50,
                   lVar10 + 0x54,lVar10 + 0x58,lVar10 + 0x5c,lVar10 + 0x60);
    iVar7 = write_idx;
    if (iVar9 == 0x19) {
      if (write_idx < 1000) {
        lVar13 = 0;
        uVar11 = (ulong)(uint)(write_idx * 0x19);
        uVar3 = 0;
        if ((uint)(write_idx * 0x19) < 0x61a9) {
          uVar3 = write_idx * -0x19 + 25000;
        }
        uVar12 = (ulong)uVar3;
        uVar2 = 0;
        if (uVar11 * 4 < 0x186a1) {
          uVar2 = uVar11 * -4 + 100000;
        }
        uVar4 = uVar2 >> 2;
        if (uVar12 <= uVar2 >> 2) {
          uVar4 = uVar12;
        }
        if (1 < uVar4) {
          if (0x17 < uVar4) {
            uVar4 = 0x18;
          }
          puVar15 = &DAT_00110098 + uVar11;
          uVar2 = uVar4 + 1 & 1;
          uVar5 = 2;
          if (uVar2 != 0) {
            uVar5 = uVar2;
          }
          lVar13 = (uVar4 + 1) - uVar5;
          puVar16 = (undefined4 *)(lVar10 + 4);
          lVar14 = ~uVar4 + uVar5;
          do {
            puVar1 = puVar16 + -1;
            uVar6 = *puVar16;
            lVar14 = lVar14 + 2;
            puVar16 = puVar16 + 2;
            puVar15[-1] = *puVar1;
            *puVar15 = uVar6;
            puVar15 = puVar15 + 2;
          } while (lVar14 != 0);
        }
        uVar11 = (lVar13 + uVar11) * 4;
        lVar14 = -lVar13;
        puVar15 = (undefined4 *)(lVar10 + lVar13 * 4);
        do {
          if (-lVar14 == uVar12) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x5512,0x105484);
            (*pcVar8)();
          }
          if (0xc34 < uVar11 >> 5) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(1,0x105488);
            (*pcVar8)();
          }
          lVar14 = lVar14 + -1;
          *(undefined4 *)((long)&user_para_data + uVar11) = *puVar15;
          uVar11 = uVar11 + 4;
          puVar15 = puVar15 + 1;
        } while (lVar14 != -0x19);
        write_idx = iVar7 + 1;
        _printk(&DAT_00108c7d,"aw22xxx_para_store");
      }
      else {
        _printk(&DAT_00108e5a,"aw22xxx_para_store");
        param_4 = 0xffffffffffffffe4;
      }
    }
    else {
      _printk(&DAT_00108759,"aw22xxx_para_store");
      param_4 = 0xffffffffffffffea;
    }
    kfree(lVar10);
  }
  return param_4;
}

