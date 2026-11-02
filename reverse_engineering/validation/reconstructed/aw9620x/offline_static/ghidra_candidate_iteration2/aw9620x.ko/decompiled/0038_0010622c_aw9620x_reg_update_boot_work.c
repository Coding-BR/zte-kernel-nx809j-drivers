
void aw9620x_reg_update_boot_work(long param_1)

{
  ulong uVar1;
  ulong uVar2;
  uint uVar3;
  ulong *puVar4;
  code *pcVar5;
  int iVar6;
  long lVar7;
  undefined8 uVar8;
  ulong __n;
  char *pcVar9;
  undefined8 uVar10;
  ulong uVar11;
  ulong uVar12;
  ulong uVar13;
  ulong *local_90;
  undefined8 local_88;
  long lStack_80;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined8 *local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar7 = sp_el0;
  local_58 = *(long *)(lVar7 + 0x710);
  local_90 = (ulong *)0x0;
  _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_reg_update_boot_work",0xc7f);
  snprintf((char *)(param_1 + 0x2dd),0x1e,"aw9620x_bt_%u.bin",(ulong)*(uint *)(param_1 + 8));
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] name :%s\n",
              "aw9620x_reg_update_boot_work",0xc84,param_1 + 0x2dd);
  iVar6 = request_firmware(&local_90,param_1 + 0x2dd,*(undefined8 *)(param_1 + 0x30));
  uVar8 = *(undefined8 *)(param_1 + 0x30);
  if (iVar6 == 0) {
    _dev_printk(&DAT_0010d797,uVar8,"[%s:%d] parse %s ok!\n","aw9620x_reg_update_boot_work",0xc8b,
                param_1 + 0x2dd);
    puVar4 = local_90;
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "aw9620x_reg_parse_boot",0xc4e);
    if (puVar4 == (ulong *)0x0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] frimware request failed\n",
                  "aw9620x_reg_parse_boot",0xc51);
LAB_001066a0:
      uVar8 = *(undefined8 *)(param_1 + 0x30);
      pcVar9 = "[%s:%d] boot %s err!\n";
      uVar10 = 0xc8f;
      goto LAB_001066c4;
    }
    _dev_printk(&DAT_0010d22b,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] frimware request successfully\n","aw9620x_reg_parse_boot",0xc54);
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter, cont->size = %d\n",
                "aw9620x_reg_parse_boot",0xc56,(int)*puVar4);
    uVar11 = *puVar4;
    uVar1 = uVar11 + 0x20e8;
    lVar7 = __kmalloc_noprof(uVar1,0xdc0);
    if (lVar7 == 0) {
      kfree(0);
      release_firmware(puVar4);
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to allcating memory!\n","aw9620x_reg_parse_boot",0xc5c);
      goto LAB_001066a0;
    }
    uVar13 = uVar1 >> 2;
    if (((uVar13 < 0x839) || (uVar12 = uVar1 & 0xfffffffffffffffc, uVar12 == 0x20e4)) ||
       (uVar13 == 0x839)) goto LAB_00106700;
    __n = *puVar4;
    uVar2 = 0;
    if (0x20e7 < uVar1) {
      uVar2 = uVar11;
    }
    *(int *)(lVar7 + 0x20e4) = (int)__n;
    if (uVar2 < __n) {
      uVar8 = __fortify_panic(0x11);
      goto LAB_0010670c;
    }
    memcpy((void *)(lVar7 + 0x20e8),(void *)puVar4[1],__n);
    release_firmware(puVar4);
    iVar6 = aw_parsing_bin_file(lVar7);
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x parse bin fail! ret = %d\n","aw9620x_reg_parse_boot",0xc67,iVar6)
      ;
LAB_00106698:
      kfree(lVar7);
      goto LAB_001066a0;
    }
    if (((((uVar12 == 100) || (uVar13 < 0x839)) ||
         (((uVar1 & 0xfffffffffffffffc) == 0x20e4 ||
          (((uVar1 & 0xfffffffffffffffc) == 100 ||
           (_dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] chip name: %s, len = %d, version:0x%08x\n","aw9620x_reg_parse_boot"
                        ,0xc6d,lVar7 + 0x30,*(undefined4 *)(lVar7 + 0x20e4),
                        *(undefined4 *)(lVar7 + 100)), uVar12 == 0x54)))))) || (uVar1 < 0x54)) ||
       ((uVar1 & 0xfffffffffffffffc) == 0x54)) {
LAB_00106700:
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(1,0x106704);
      (*pcVar5)();
    }
    uVar3 = *(uint *)(lVar7 + 0x54);
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "aw9620x_update_boot_to_flash",0xc44);
    if (((uVar12 == 0x50) || (uVar1 < 0x50)) || ((uVar1 & 0xfffffffffffffffc) == 0x50))
    goto LAB_00106700;
    local_78 = *(undefined4 *)(lVar7 + 0x50);
    local_68 = 0x7f8;
    uStack_60 = 0x7fc000007f8;
    lStack_80 = lVar7 + 0x20e8 + (ulong)uVar3;
    local_88 = 0;
    local_70 = &local_68;
    uStack_74 = 0;
    if (lStack_80 == 0) {
      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] w_bin_offset is null err\n"
                  ,"aw9620x_update_bt_to_flash",0x623);
LAB_00106674:
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_firmware err!\n",
                  "aw9620x_reg_parse_boot",0xc71);
      goto LAB_00106698;
    }
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_data_len = %d\n",
                "aw9620x_update_bt_to_flash",0x627);
    iVar6 = aw9620x_flash_update(param_1,&local_88);
    if (iVar6 != 0) goto LAB_00106674;
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_firmware ok!\n",
                "aw9620x_reg_parse_boot",0xc73);
    kfree(lVar7);
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] boot %s ok!\n",
                "aw9620x_reg_update_boot_work",0xc92,param_1 + 0x2dd);
    uVar8 = 0;
  }
  else {
    pcVar9 = "[%s:%d] parse %s err!\n";
    uVar10 = 0xc88;
LAB_001066c4:
    _dev_printk(&DAT_0010c99c,uVar8,pcVar9,"aw9620x_reg_update_boot_work",uVar10,param_1 + 0x2dd);
    uVar8 = 0xffffffff;
  }
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) == local_58) {
    return;
  }
LAB_0010670c:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar8);
}

