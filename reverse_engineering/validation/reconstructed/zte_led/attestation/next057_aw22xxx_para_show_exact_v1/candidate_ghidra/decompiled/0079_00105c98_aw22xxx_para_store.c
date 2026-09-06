
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
aw22xxx_para_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  undefined4 *puVar1;
  uint uVar2;
  ulong uVar3;
  ulong uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  code *pcVar8;
  int iVar9;
  long lVar10;
  ulong uVar11;
  ulong uVar12;
  undefined4 *puVar13;
  undefined4 *puVar14;
  long lVar15;
  
  _printk(&DAT_00108576,"aw22xxx_para_store");
  lVar10 = __kmalloc_cache_noprof(_sscanf,0xcc0,100);
  if (lVar10 == 0) {
    _printk(&DAT_001080c5,"aw22xxx_para_store");
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
        uVar6 = write_idx * 0x19;
        uVar2 = 0;
        if (uVar6 < 0x61a9) {
          uVar2 = write_idx * -0x19 + 25000;
        }
        uVar11 = (ulong)uVar2;
        if (uVar2 < 2) {
          uVar12 = 0;
        }
        else {
          uVar3 = uVar11;
          if (0x17 < uVar11) {
            uVar3 = 0x18;
          }
          uVar12 = uVar3 + 1 & 1;
          uVar4 = 2;
          if (uVar12 != 0) {
            uVar4 = uVar12;
          }
          puVar14 = (undefined4 *)(lVar10 + 4);
          uVar12 = (uVar3 + 1) - uVar4;
          puVar13 = (undefined4 *)(&DAT_001088d1 + (ulong)uVar6 * 4);
          lVar15 = ~uVar3 + uVar4;
          do {
            puVar1 = puVar14 + -1;
            uVar5 = *puVar14;
            lVar15 = lVar15 + 2;
            puVar14 = puVar14 + 2;
            puVar13[-1] = *puVar1;
            *puVar13 = uVar5;
            puVar13 = puVar13 + 2;
          } while (lVar15 != 0);
        }
        do {
          if (uVar11 == uVar12) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x5512,0x105f0c);
            (*pcVar8)();
          }
          *(undefined4 *)(&user_para_data + uVar12 * 4 + (ulong)uVar6 * 4) =
               *(undefined4 *)(lVar10 + uVar12 * 4);
          uVar12 = uVar12 + 1;
        } while (uVar12 != 0x19);
        write_idx = iVar7 + 1;
        _printk(&DAT_0010826a,"aw22xxx_para_store");
      }
      else {
        _printk(&DAT_00108331,"aw22xxx_para_store");
        param_4 = 0xffffffffffffffe4;
      }
    }
    else {
      _printk(&DAT_00107fe9,"aw22xxx_para_store");
      param_4 = 0xffffffffffffffea;
    }
    kfree(lVar10);
  }
  return param_4;
}

