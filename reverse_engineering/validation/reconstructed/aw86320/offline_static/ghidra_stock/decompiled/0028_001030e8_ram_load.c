
void ram_load(ulong *param_1,undefined1 *param_2)

{
  int *piVar1;
  uint uVar2;
  char cVar3;
  undefined2 uVar4;
  undefined2 uVar5;
  ushort uVar6;
  code *pcVar7;
  int iVar8;
  uint *puVar9;
  undefined *puVar10;
  undefined8 uVar11;
  long lVar12;
  byte *pbVar13;
  int iVar14;
  ulong uVar15;
  ulong uVar16;
  int iVar17;
  ulong uVar18;
  ulong uVar19;
  ulong uVar20;
  ulong uVar21;
  ulong uVar22;
  undefined1 local_338 [4];
  byte local_334 [700];
  ushort local_78 [4];
  undefined1 *local_70;
  ushort local_68;
  undefined2 local_66;
  undefined2 local_64;
  undefined2 local_62;
  byte *local_60;
  long local_58;
  
  lVar12 = sp_el0;
  local_58 = *(long *)(lVar12 + 0x710);
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00104603,"aw86320",0x1ba,"ram_load","micop_ram.bin");
    release_firmware(0);
    goto LAB_00103a68;
  }
  _printk(&DAT_00104b63,"aw86320",0x1be,"ram_load","micop_ram.bin",*param_1);
  uVar18 = *param_1;
  piVar1 = (int *)param_1[1];
  uVar22 = (ulong)*(byte *)(piVar1 + 3);
  uVar21 = uVar22 + 0x15;
  if (uVar21 < uVar18) {
    uVar16 = (uVar18 - uVar22) - 0x15;
    if (uVar16 < 2) {
LAB_001031a8:
      iVar8 = 0;
      uVar15 = uVar21;
    }
    else {
      uVar15 = (uVar18 - uVar22) - 0x16;
      iVar8 = (int)uVar15;
      iVar14 = (int)uVar21;
      if (((iVar14 + iVar8 < iVar14) ||
          (iVar17 = *(byte *)(piVar1 + 3) + 0x16, iVar17 + iVar8 < iVar17)) || (uVar15 >> 0x20 != 0)
         ) goto LAB_001031a8;
      uVar19 = uVar16 & 0xfffffffffffffffe;
      iVar17 = 0;
      iVar8 = 0;
      uVar15 = uVar19 + uVar21;
      uVar21 = (ulong)(uint)(iVar14 + (int)uVar19);
      pbVar13 = (byte *)((long)piVar1 + uVar22 + 0x16);
      uVar20 = uVar19;
      do {
        uVar20 = uVar20 - 2;
        iVar17 = iVar17 + (uint)pbVar13[-1];
        iVar8 = iVar8 + (uint)*pbVar13;
        pbVar13 = pbVar13 + 2;
      } while (uVar20 != 0);
      iVar8 = iVar8 + iVar17;
      if (uVar16 == uVar19) goto LAB_001031d0;
    }
    iVar14 = (int)uVar21;
    do {
      iVar14 = iVar14 + 1;
      pbVar13 = (byte *)((long)piVar1 + uVar15);
      uVar15 = (ulong)iVar14;
      iVar8 = iVar8 + (uint)*pbVar13;
    } while (uVar15 < uVar18);
  }
  else {
    iVar8 = 0;
  }
LAB_001031d0:
  if (iVar8 != *piVar1) {
    _printk(&DAT_00104021,"aw86320",0x1c8,"ram_load",iVar8);
    release_firmware(param_1);
    goto LAB_00103a68;
  }
  _printk(&DAT_00104c9d,"aw86320",0x1cc,"ram_load",iVar8);
  *(int *)(param_2 + 0x334) = iVar8;
  *(undefined2 *)(param_2 + 0x350) = *(undefined2 *)(param_1[1] + 4);
  *(undefined2 *)(param_2 + 0x352) = *(undefined2 *)(param_1[1] + 6);
  *(undefined2 *)(param_2 + 0x354) = *(undefined2 *)(param_1[1] + 8);
  *(undefined2 *)(param_2 + 0x356) = *(undefined2 *)(param_1[1] + 10);
  cVar3 = *(char *)(param_1[1] + 0xc);
  param_2[0x358] = cVar3;
  if (cVar3 != '\0') {
    param_2[0x35a] = *(undefined1 *)(param_1[1] + 0xd);
    _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",cVar3,1);
    if (1 < (byte)param_2[0x358]) {
      param_2[0x35b] = *(undefined1 *)(param_1[1] + 0xe);
      _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],2);
      if (2 < (byte)param_2[0x358]) {
        param_2[0x35c] = *(undefined1 *)(param_1[1] + 0xf);
        _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],3);
        if (3 < (byte)param_2[0x358]) {
          param_2[0x35d] = *(undefined1 *)(param_1[1] + 0x10);
          _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],4);
          if (4 < (byte)param_2[0x358]) {
            param_2[0x35e] = *(undefined1 *)(param_1[1] + 0x11);
            _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],5);
            if (5 < (byte)param_2[0x358]) {
              param_2[0x35f] = *(undefined1 *)(param_1[1] + 0x12);
              _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],6);
              if (6 < (byte)param_2[0x358]) {
                param_2[0x360] = *(undefined1 *)(param_1[1] + 0x13);
                _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],7);
                if (7 < (byte)param_2[0x358]) {
                  param_2[0x361] = *(undefined1 *)(param_1[1] + 0x14);
                  _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],8);
                  if (8 < (byte)param_2[0x358]) {
                    param_2[0x362] = *(undefined1 *)(param_1[1] + 0x15);
                    _printk(&DAT_00104626,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],9
                           );
                    if (9 < (byte)param_2[0x358]) goto LAB_00103aa8;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  uVar21 = (ulong)*(ushort *)(param_2 + 0x356);
  puVar9 = (uint *)__kmalloc_noprof(uVar21 + 4,0xdc0);
  if (puVar9 == (uint *)0x0) {
    release_firmware(param_1);
    _printk(&DAT_0010431f,"aw86320",0x1d5,"ram_load");
    goto LAB_00103a68;
  }
  *puVar9 = (uint)*(ushort *)(param_2 + 0x356);
  _printk(&DAT_00104261,"aw86320",0x1da,"ram_load");
  if (uVar21 < (ulong)(long)(int)*puVar9) {
    __fortify_panic(0x11,uVar21);
    goto LAB_00103aa8;
  }
  memcpy(puVar9 + 1,(void *)(param_1[1] + uVar22 + 0x15),(long)(int)*puVar9);
  release_firmware(param_1);
  memset(local_334,0,700);
  mutex_lock(param_2 + 0x1f0);
  local_78[0] = 0;
  iVar8 = haptic_i2c_read(param_2,0x11,local_78);
  if (iVar8 < 0) {
    puVar10 = &DAT_00104ba2;
    uVar11 = 0xaf;
LAB_00103660:
    _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
  }
  else {
    iVar8 = haptic_i2c_write(param_2,0x11,local_78[0] | 0x10);
    if (iVar8 < 0) {
      puVar10 = &DAT_00104e12;
      uVar11 = 0xb8;
      goto LAB_00103660;
    }
  }
  usleep_range_state(1000,0x41a,2);
  uVar4 = *(undefined2 *)(param_2 + 0x354);
  uVar5 = *(undefined2 *)(param_2 + 0x352);
  *(undefined2 *)(param_2 + 0x338) = *(undefined2 *)(param_2 + 0x350);
  _printk(&DAT_00104a44,"aw86320",0x146,"aw86320_container_update",*(undefined2 *)(param_2 + 0x350),
          uVar4,uVar5);
  uVar6 = *(ushort *)(param_2 + 0x338);
  local_78[0] = 0;
  iVar8 = haptic_i2c_read(param_2,0x17,local_78);
  if (iVar8 < 0) {
    puVar10 = &DAT_00104ba2;
    uVar11 = 0xaf;
LAB_00103724:
    _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
  }
  else {
    iVar8 = haptic_i2c_write(param_2,0x17,local_78[0] & 0xfc00 | uVar6 & 0x3ff);
    if (iVar8 < 0) {
      puVar10 = &DAT_00104e12;
      uVar11 = 0xb8;
      goto LAB_00103724;
    }
  }
  haptic_i2c_write(param_2,0x18,uVar4);
  haptic_i2c_write(param_2,0x19,uVar5);
  _printk(&DAT_00104812,"aw86320",0x14e,"aw86320_container_update",*puVar9);
  haptic_i2c_writes(param_2,0x20,puVar9 + 1,*puVar9);
  __const_udelay(0x147aeb8);
  haptic_i2c_write(param_2,0x1f,0x200);
  local_338[0] = 0x20;
  local_78[0] = *(ushort *)(*(long *)(param_2 + 0x1e8) + 2);
  local_78[1] = 0;
  local_78[2] = 1;
  local_70 = local_338;
  local_66 = 1;
  local_60 = local_334;
  local_78[3] = 0;
  local_64 = (undefined2)*puVar9;
  local_62 = 0;
  local_68 = local_78[0];
  iVar8 = i2c_transfer(*(undefined8 *)(*(long *)(param_2 + 0x1e8) + 0x18),local_78,2);
  if (iVar8 < 0) {
    puVar10 = &DAT_001043f2;
    uVar11 = 0x4e;
LAB_0010383c:
    _printk(puVar10,"aw86320",uVar11,"haptic_i2c_reads");
  }
  else if (iVar8 != 2) {
    puVar10 = &DAT_00104833;
    uVar11 = 0x51;
    goto LAB_0010383c;
  }
  uVar2 = *puVar9;
  uVar21 = (ulong)uVar2;
  if ((int)uVar2 < 1) {
    iVar8 = 0;
  }
  else {
    if (uVar2 - 0x2bd < 0xfffffd44) {
LAB_00103aa8:
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x103aac);
      (*pcVar7)();
    }
    if (uVar2 == 1) {
      uVar22 = 0;
      iVar8 = 0;
    }
    else {
      uVar22 = uVar21 & 0x3fe;
      iVar14 = 0;
      iVar8 = 0;
      pbVar13 = local_334 + 1;
      uVar18 = uVar22;
      do {
        uVar18 = uVar18 - 2;
        iVar14 = iVar14 + (uint)pbVar13[-1];
        iVar8 = iVar8 + (uint)*pbVar13;
        pbVar13 = pbVar13 + 2;
      } while (uVar18 != 0);
      iVar8 = iVar8 + iVar14;
      if (uVar22 == uVar21) goto LAB_001038cc;
    }
    lVar12 = uVar21 - uVar22;
    pbVar13 = local_334 + uVar22;
    do {
      lVar12 = lVar12 + -1;
      iVar8 = iVar8 + (uint)*pbVar13;
      pbVar13 = pbVar13 + 1;
    } while (lVar12 != 0);
  }
LAB_001038cc:
  if (*(int *)(param_2 + 0x334) == iVar8) {
    _printk(&DAT_00104f25,"aw86320",0x15a,"aw86320_container_update");
    local_78[0] = 0;
    iVar8 = haptic_i2c_read(param_2,0x11,local_78);
    if (iVar8 < 0) {
      puVar10 = &DAT_00104ba2;
      uVar11 = 0xaf;
LAB_001039a8:
      _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
    }
    else {
      iVar8 = haptic_i2c_write(param_2,0x11,local_78[0] & 0xffef);
      if (iVar8 < 0) {
        puVar10 = &DAT_00104e12;
        uVar11 = 0xb8;
        goto LAB_001039a8;
      }
    }
    mutex_unlock(param_2 + 0x1f0);
    puVar10 = &DAT_0010494b;
    *param_2 = 1;
    uVar11 = 0x1e2;
  }
  else {
    local_78[0] = 0;
    iVar8 = haptic_i2c_read(param_2,0x11,local_78);
    if (iVar8 < 0) {
      puVar10 = &DAT_00104ba2;
      uVar11 = 0xaf;
LAB_00103a14:
      _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
    }
    else {
      iVar8 = haptic_i2c_write(param_2,0x11,local_78[0] & 0xffef);
      if (iVar8 < 0) {
        puVar10 = &DAT_00104e12;
        uVar11 = 0xb8;
        goto LAB_00103a14;
      }
    }
    mutex_unlock(param_2 + 0x1f0);
    _printk(&DAT_0010450f,"aw86320",0x15f,"aw86320_container_update");
    puVar10 = &DAT_00104c3e;
    uVar11 = 0x1df;
  }
  _printk(puVar10,"aw86320",uVar11,"ram_load");
  kfree(puVar9);
LAB_00103a68:
  lVar12 = sp_el0;
  if (*(long *)(lVar12 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

