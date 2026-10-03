
void syna_cdev_remove(long param_1)

{
  long lVar1;
  long *plVar2;
  long lVar3;
  long *plVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00132772,"syna_cdev_remove");
  }
  else {
    mutex_lock(&DAT_00131e50);
    plVar4 = *(long **)(param_1 + 0x4f8);
    while (plVar4 != (long *)(param_1 + 0x4f8)) {
      plVar2 = (long *)plVar4[1];
      if (((long *)*plVar2 == plVar4) && (lVar3 = *plVar4, *(long **)(lVar3 + 8) == plVar4)) {
        *(long **)(lVar3 + 8) = plVar2;
        *plVar2 = lVar3;
      }
      else {
        __list_del_entry_valid_or_report(plVar4);
      }
      *plVar4 = -0x2152ffffffffff00;
      plVar4[1] = -0x2152fffffffffede;
      kfree(plVar4[2]);
      kfree(plVar4);
      if (*(int *)(param_1 + 0x4f0) != 0) {
        *(int *)(param_1 + 0x4f0) = *(int *)(param_1 + 0x4f0) + -1;
      }
      plVar4 = *(long **)(param_1 + 0x4f8);
    }
    mutex_unlock(&DAT_00131e50);
    *(undefined4 *)(param_1 + 900) = 0;
    if (*(long *)(param_1 + 0x390) != 0) {
      device_destroy(*(undefined8 *)(param_1 + 0x388),*(undefined4 *)(param_1 + 0x380));
      class_destroy(*(undefined8 *)(param_1 + 0x388));
      cdev_del(param_1 + 0x2f8);
      unregister_chrdev_region(*(undefined4 *)(param_1 + 0x380),1);
    }
    if (DAT_00131e18 != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = DAT_00131dd8;
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    *(undefined8 *)(param_1 + 0x388) = 0;
    DAT_00131de0 = 0;
    DAT_00131e18 = '\0';
    *(undefined8 *)(param_1 + 0x390) = 0;
    g_cdev_data = 0;
  }
  return;
}

