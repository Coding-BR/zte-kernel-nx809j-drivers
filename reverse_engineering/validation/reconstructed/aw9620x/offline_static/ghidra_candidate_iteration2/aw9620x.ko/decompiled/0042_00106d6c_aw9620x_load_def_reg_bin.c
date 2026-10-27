
void aw9620x_load_def_reg_bin(long param_1)

{
  ulong uVar1;
  void *__dest;
  undefined4 uVar2;
  short sVar3;
  ulong *puVar4;
  code *pcVar5;
  int iVar6;
  int iVar7;
  long lVar8;
  undefined8 uVar9;
  ulong uVar10;
  char *pcVar11;
  undefined8 uVar12;
  ulong uVar13;
  ulong uVar14;
  ulong uVar15;
  ulong uVar16;
  ulong uVar17;
  uint uVar18;
  ulong *local_70;
  long local_68;
  
  lVar8 = sp_el0;
  local_68 = *(long *)(lVar8 + 0x710);
  local_70 = (ulong *)0x0;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_load_def_reg_bin",0xc28);
  snprintf((char *)(param_1 + 0x2fb),0x1e,"aw9620x_reg_%u.bin",(ulong)*(uint *)(param_1 + 8));
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] name :%s\n",
              "aw9620x_load_def_reg_bin",0xc2d,param_1 + 0x2fb);
  iVar6 = request_firmware(&local_70,param_1 + 0x2fb,*(undefined8 *)(param_1 + 0x30));
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] ret = %d\n",
              "aw9620x_load_def_reg_bin",0xc2f,iVar6);
  uVar9 = *(undefined8 *)(param_1 + 0x30);
  if (iVar6 == 0) {
    _dev_printk(&DAT_0010d797,uVar9,"[%s:%d] parse %s ok!\n","aw9620x_load_def_reg_bin",0xc34,
                param_1 + 0x2fb);
    puVar4 = local_70;
    if (local_70 == (ulong *)0x0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] def_reg_bin request failed\n","aw9620x_parse_def_reg_bin",0xbe6);
LAB_00107328:
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] reg_bin %s load err!\n";
      uVar12 = 0xc38;
      goto LAB_0010734c;
    }
    _dev_printk(&DAT_0010d22b,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] def_reg_bin request successfully\n","aw9620x_parse_def_reg_bin",0xbe9);
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter, cont->size = %d\n",
                "aw9620x_parse_def_reg_bin",0xbeb,(int)*puVar4);
    uVar13 = *puVar4;
    uVar1 = uVar13 + 0x20e8;
    lVar8 = __kmalloc_noprof(uVar1,0xdc0);
    if (lVar8 == 0) {
      kfree(0);
      release_firmware(puVar4);
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to allcating memory!\n","aw9620x_parse_def_reg_bin",0xbf1);
      goto LAB_00107328;
    }
    uVar17 = uVar1 >> 2;
    if (((uVar17 < 0x839) || (uVar16 = uVar1 & 0xfffffffffffffffc, uVar16 == 0x20e4)) ||
       (uVar17 == 0x839)) goto LAB_001072b4;
    uVar10 = *puVar4;
    uVar14 = 0;
    if (0x20e7 < uVar1) {
      uVar14 = uVar13;
    }
    *(int *)(lVar8 + 0x20e4) = (int)uVar10;
    if (uVar14 < uVar10) {
      uVar9 = __fortify_panic(0x11);
      goto LAB_00107394;
    }
    __dest = (void *)(lVar8 + 0x20e8);
    memcpy(__dest,(void *)puVar4[1],uVar10);
    release_firmware(puVar4);
    iVar6 = aw_parsing_bin_file(lVar8);
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x parse bin fail! ret = %d\n","aw9620x_parse_def_reg_bin",0xbfc,
                  iVar6);
LAB_00107320:
      kfree(lVar8);
      goto LAB_00107328;
    }
    if ((uVar17 < 0x839) || ((uVar1 & 0xfffffffffffffffc) == 0x20e4)) {
LAB_001072b4:
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(1,0x1072b8);
      (*pcVar5)();
    }
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] reg chip name: %s, soc chip name: %s, len = %d\n",
                "aw9620x_parse_def_reg_bin",0xc01,param_1 + 0x2a1,lVar8 + 0x30,
                *(undefined4 *)(lVar8 + 0x20e4));
    iVar6 = strcmp((char *)(param_1 + 0x2a1),(char *)(lVar8 + 0x30));
    if (iVar6 != 0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] chip name(%s) incompatible with chip type(%s)\n",
                  "aw9620x_parse_def_reg_bin",0xc07,param_1 + 0x2a1,lVar8 + 0x30);
      goto LAB_00107320;
    }
    if (((uVar16 == 0x50) || (uVar1 < 0x50)) || ((uVar1 & 0xfffffffffffffffc) == 0x50))
    goto LAB_001072b4;
    if (*(int *)(lVar8 + 0x50) != 0) {
      if (((uVar16 == 0x54) || (uVar1 < 0x54)) || ((uVar1 & 0xfffffffffffffffc) == 0x54))
      goto LAB_001072b4;
      iVar6 = *(int *)(lVar8 + 0x54);
      uVar18 = 0;
      do {
        uVar13 = (ulong)(iVar6 + uVar18);
        if (((uVar1 <= uVar13 + 0x20e8) ||
            (uVar17 = (ulong)(iVar6 + uVar18 + 1), uVar1 <= uVar17 + 0x20e8)) ||
           ((uVar1 <= uVar13 + 0x20e8 || (uVar1 <= uVar17 + 0x20e8)))) goto LAB_001072b4;
        uVar16 = (ulong)(iVar6 + uVar18 + 2);
        if ((uVar1 <= uVar16 + 0x20e8) ||
           (uVar14 = (ulong)(iVar6 + uVar18 + 3), uVar1 <= uVar14 + 0x20e8)) goto LAB_001072b4;
        uVar10 = (ulong)(iVar6 + uVar18 + 4);
        if ((uVar1 <= uVar10 + 0x20e8) ||
           ((((uVar15 = (ulong)(iVar6 + uVar18 + 5), uVar1 <= uVar15 + 0x20e8 ||
              (uVar1 <= uVar14 + 0x20e8)) || (uVar1 <= uVar16 + 0x20e8)) ||
            ((uVar1 <= uVar10 + 0x20e8 || (uVar1 <= uVar15 + 0x20e8)))))) goto LAB_001072b4;
        sVar3 = CONCAT11(*(undefined1 *)((long)__dest + uVar17),
                         *(undefined1 *)((long)__dest + uVar13));
        uVar2 = CONCAT13(*(undefined1 *)((long)__dest + uVar15),
                         CONCAT12(*(undefined1 *)((long)__dest + uVar10),
                                  CONCAT11(*(undefined1 *)((long)__dest + uVar14),
                                           *(undefined1 *)((long)__dest + uVar16))));
        if (sVar3 == 0x4414) {
          *(undefined4 *)(param_1 + 0x14) = uVar2;
        }
        else {
          iVar7 = aw9620x_i2c_write(param_1,sVar3,uVar2);
          if (iVar7 < 0) {
            _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c write err\n",
                        "aw9620x_load_bin",0xbd4);
            uVar9 = *(undefined8 *)(param_1 + 0x30);
            pcVar11 = "[%s:%d] load_bin err\n";
            uVar12 = 0xc0d;
            goto LAB_0010731c;
          }
          _dev_printk(&DAT_0010d22b,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] reg_addr = 0x%04x, reg_data = 0x%08x\n","aw9620x_load_bin",0xbda,
                      sVar3,uVar2);
        }
        if ((uVar1 & 0xfffffffffffffffc) == 0x50) goto LAB_001072b4;
        uVar18 = uVar18 + 6;
      } while (uVar18 < *(uint *)(lVar8 + 0x50));
    }
    iVar6 = aw9620x_en_active(param_1);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] en_active err\n";
      uVar12 = 0xc13;
LAB_0010731c:
      _dev_printk(&DAT_0010c99c,uVar9,pcVar11,"aw9620x_parse_def_reg_bin",uVar12);
      goto LAB_00107320;
    }
    kfree(lVar8);
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] load_def_reg_bin ok!!!\n",
                "aw9620x_parse_def_reg_bin",0xc19);
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] reg_bin %s load ok!\n",
                "aw9620x_load_def_reg_bin",0xc3b,param_1 + 0x2fb);
    uVar9 = 0;
  }
  else {
    pcVar11 = "[%s:%d] parse %s err!\n";
    uVar12 = 0xc31;
LAB_0010734c:
    _dev_printk(&DAT_0010c99c,uVar9,pcVar11,"aw9620x_load_def_reg_bin",uVar12,param_1 + 0x2fb);
    uVar9 = 0xffffffff;
  }
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_68) {
    return;
  }
LAB_00107394:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar9);
}

