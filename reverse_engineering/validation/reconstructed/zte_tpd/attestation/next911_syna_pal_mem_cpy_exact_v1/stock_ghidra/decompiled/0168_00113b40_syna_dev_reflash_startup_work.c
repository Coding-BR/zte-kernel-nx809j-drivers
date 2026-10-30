
void syna_dev_reflash_startup_work(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  long lVar4;
  
  wait_for_completion_timeout(param_1 + 0x1c0,0xfa);
  if ((*(byte *)(param_1 + 0x1bb) & 1) == 0) {
    _printk(&DAT_0013715f,"syna_dev_reflash_startup_work");
    return;
  }
  lVar4 = param_1 + -0x3c8;
  pm_stay_awake(*(long *)(param_1 + -0x3c0) + 0x10);
  iVar1 = syna_dev_do_reflash(lVar4,0);
  if (-1 < iVar1) {
    iVar1 = syna_dev_set_up_app_fw(lVar4);
    if (iVar1 < 0) {
      puVar3 = &DAT_0013bece;
    }
    else {
      iVar1 = syna_dev_set_up_input_device(lVar4);
      if (-1 < iVar1) {
        _printk(&DAT_0013d320,"syna_dev_reflash_startup_work");
        syna_tpd_register_fw_class(lVar4);
        uVar2 = syna_dev_set_screen_on_fp_mode(lVar4,0);
        _printk(&DAT_0013cd54,"syna_dev_reflash_startup_work",uVar2);
        uVar2 = syna_dev_set_tp_report_rate(lVar4,*(undefined4 *)(param_1 + 0x230),0);
        _printk(&DAT_0013b032,"syna_dev_reflash_startup_work",*(undefined4 *)(param_1 + 0x230),uVar2
               );
        goto LAB_00113b90;
      }
      puVar3 = &DAT_00138191;
    }
    _printk(puVar3,"syna_dev_reflash_startup_work");
  }
LAB_00113b90:
  pm_relax(*(long *)(param_1 + -0x3c0) + 0x10);
  return;
}

