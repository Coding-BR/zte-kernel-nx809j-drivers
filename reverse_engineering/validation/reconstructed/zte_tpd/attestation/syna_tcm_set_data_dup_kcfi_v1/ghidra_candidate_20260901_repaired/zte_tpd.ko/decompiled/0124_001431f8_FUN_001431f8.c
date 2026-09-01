
undefined8 FUN_001431f8(long *param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined *puVar4;
  long lVar5;
  undefined4 uVar6;
  
  lVar3 = param_1[0x4e];
  lVar5 = *param_1;
  if (((lVar3 == -0xa8) || (*(int *)(lVar3 + 0xb8) == 0)) || ((*(byte *)(lVar3 + 0xbc) & 1) == 0)) {
    uVar6 = *(undefined4 *)(lVar5 + 0x20c);
  }
  else {
    uVar6 = 0;
  }
  if (*(char *)(lVar5 + 9) == '\x01') {
    iVar1 = syna_tcm_get_app_info(lVar5,lVar5 + 0xb0,uVar6);
    if (iVar1 < 0) {
      puVar4 = &DAT_00167ccc;
    }
    else {
      iVar1 = syna_tcm_preserve_touch_report_config(lVar5,uVar6);
      if (-1 < iVar1) {
        return 0;
      }
      puVar4 = &DAT_0016b6d6;
    }
    uVar2 = _printk(puVar4,"syna_dev_set_up_app_fw");
    return uVar2;
  }
  uVar2 = _printk(&DAT_001682ec,"syna_dev_set_up_app_fw");
  return uVar2;
}

