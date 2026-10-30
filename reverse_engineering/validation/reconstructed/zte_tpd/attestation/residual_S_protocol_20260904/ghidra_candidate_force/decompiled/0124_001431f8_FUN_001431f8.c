
undefined8 FUN_001431f8(long *param_1)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  long lVar4;
  undefined4 uVar5;
  
  lVar2 = param_1[0x4e];
  lVar4 = *param_1;
  if (((lVar2 == -0xa8) || (*(int *)(lVar2 + 0xb8) == 0)) || ((*(byte *)(lVar2 + 0xbc) & 1) == 0)) {
    uVar5 = *(undefined4 *)(lVar4 + 0x20c);
  }
  else {
    uVar5 = 0;
  }
  if (*(char *)(lVar4 + 9) == '\x01') {
    iVar1 = syna_tcm_get_app_info(lVar4,lVar4 + 0xb0,uVar5);
    if (iVar1 < 0) {
      puVar3 = &DAT_00167ccc;
    }
    else {
      iVar1 = syna_tcm_preserve_touch_report_config(lVar4,uVar5);
      if (-1 < iVar1) {
        return 0;
      }
      puVar3 = &DAT_0016b6d6;
    }
                    /* WARNING: Subroutine does not return */
    _printk(puVar3,"syna_dev_set_up_app_fw");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001682ec,"syna_dev_set_up_app_fw");
}

