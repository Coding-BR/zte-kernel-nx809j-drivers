
void aw9620x_load_frimware_work(long param_1)

{
  ulong uVar1;
  ulong uVar2;
  ulong *puVar3;
  code *pcVar4;
  int iVar5;
  long lVar6;
  undefined8 uVar7;
  ulong __n;
  char *pcVar8;
  undefined8 uVar9;
  ulong uVar10;
  ulong uVar11;
  ulong uVar12;
  ulong *local_60;
  long local_58;
  
  lVar6 = sp_el0;
  local_58 = *(long *)(lVar6 + 0x710);
  local_60 = (ulong *)0x0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_load_frimware_work",0xcf4);
  snprintf((char *)(param_1 + 0x2bf),0x1e,"aw9620x_fw_%d.bin",(ulong)*(uint *)(param_1 + 8));
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] name :%s\n",
              "aw9620x_load_frimware_work",0xcf9,param_1 + 0x2bf);
  iVar5 = request_firmware(&local_60,param_1 + 0x2bf,*(undefined8 *)(param_1 + 0x30));
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (iVar5 == 0) {
    _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] parse %s ok!\n","aw9620x_load_frimware_work",0xd00,
                param_1 + 0x2bf);
    puVar3 = local_60;
    if (local_60 == (ulong *)0x0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] frimware request failed\n",
                  "aw9620x_parse_frimware",0xcb7);
LAB_00105904:
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      pcVar8 = "[%s:%d] reg_bin %s load err!\n";
      uVar9 = 0xd05;
      goto LAB_00105928;
    }
    _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] frimware request successfully\n","aw9620x_parse_frimware",0xcba);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter, cont->size = %d\n",
                "aw9620x_parse_frimware",0xcbc,(int)*puVar3);
    uVar10 = *puVar3;
    uVar1 = uVar10 + 0x20e8;
    lVar6 = __kmalloc_noprof(uVar1,0xdc0);
    if (lVar6 == 0) {
      kfree(0);
      release_firmware(puVar3);
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to allcating memory!\n","aw9620x_parse_frimware",0xcc2);
      goto LAB_00105904;
    }
    uVar12 = uVar1 >> 2;
    if (((uVar12 < 0x839) || (uVar11 = uVar1 & 0xfffffffffffffffc, uVar11 == 0x20e4)) ||
       (uVar12 == 0x839)) goto LAB_00105964;
    __n = *puVar3;
    uVar2 = 0;
    if (0x20e7 < uVar1) {
      uVar2 = uVar10;
    }
    *(int *)(lVar6 + 0x20e4) = (int)__n;
    if (uVar2 < __n) {
      uVar7 = __fortify_panic(0x11);
      goto LAB_00105970;
    }
    memcpy((void *)(lVar6 + 0x20e8),(void *)puVar3[1],__n);
    release_firmware(puVar3);
    iVar5 = aw_parsing_bin_file(lVar6);
    if (iVar5 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x parse bin fail! ret = %d\n","aw9620x_parse_frimware",0xccd,iVar5)
      ;
LAB_001058fc:
      kfree(lVar6);
      goto LAB_00105904;
    }
    if ((uVar12 < 0x839) || ((uVar1 & 0xfffffffffffffffc) == 0x20e4)) {
LAB_00105964:
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(1,0x105968);
      (*pcVar4)();
    }
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] reg chip name: %s, soc chip name: %s, len = %d\n","aw9620x_parse_frimware",
                0xcd2,param_1 + 0x2a1,lVar6 + 0x30,*(undefined4 *)(lVar6 + 0x20e4));
    if (*(char *)(param_1 + 3) == '\x01') {
      if (((uVar11 == 0x50) || (uVar11 == 0x54)) ||
         ((uVar1 < 0x54 ||
          (((uVar1 & 0xfffffffffffffffc) == 0x54 || ((uVar1 & 0xfffffffffffffffc) == 0x50))))))
      goto LAB_00105964;
      iVar5 = aw9620x_update_fw_to_flash
                        (param_1,lVar6 + 0x20e8 + (ulong)*(uint *)(lVar6 + 0x54),
                         *(undefined4 *)(lVar6 + 0x50));
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      if (iVar5 != 0) {
        pcVar8 = "[%s:%d] reg update_firmware err!\n";
        uVar9 = 0xcdf;
        goto LAB_001058f8;
      }
      pcVar8 = "[%s:%d] reg update_firmware ok!\n";
      uVar9 = 0xce2;
LAB_00105880:
      _dev_printk(&DAT_0010eb37,uVar7,pcVar8,"aw9620x_parse_frimware",uVar9);
    }
    else if (*(char *)(param_1 + 3) == '\0') {
      iVar5 = aw9620x_update_firmware(param_1,lVar6);
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      if (iVar5 != 0) {
        pcVar8 = "[%s:%d] update_firmware err!\n";
        uVar9 = 0xcd7;
LAB_001058f8:
        _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"aw9620x_parse_frimware",uVar9);
        goto LAB_001058fc;
      }
      pcVar8 = "[%s:%d] update_firmware ok!\n";
      uVar9 = 0xcda;
      goto LAB_00105880;
    }
    kfree(lVar6);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] reg_bin %s load ok!\n",
                "aw9620x_load_frimware_work",0xd08,param_1 + 0x2bf);
    uVar7 = 0;
  }
  else {
    pcVar8 = "[%s:%d] parse %s err!\n";
    uVar9 = 0xcfd;
LAB_00105928:
    _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"aw9620x_load_frimware_work",uVar9,param_1 + 0x2bf);
    uVar7 = 0xffffffff;
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_58) {
    return;
  }
LAB_00105970:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar7);
}

