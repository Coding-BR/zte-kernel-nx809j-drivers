
undefined8 syna_cdev_release(void)

{
  long lVar1;
  long *plVar2;
  long *plVar3;
  long *plVar4;
  
  plVar4 = *(long **)(g_cdev_data + 0xa8);
  if (*(int *)((long)plVar4 + 900) < 1) {
    _printk(&DAT_001358e9,"syna_cdev_release");
  }
  else {
    mutex_lock(&DAT_00131e20);
    *(int *)((long)plVar4 + 900) = *(int *)((long)plVar4 + 900) + -1;
    mutex_lock(&DAT_00131e50);
    plVar3 = (long *)plVar4[0x9f];
    while (plVar3 != plVar4 + 0x9f) {
      plVar2 = (long *)plVar3[1];
      if (((long *)*plVar2 == plVar3) && (lVar1 = *plVar3, *(long **)(lVar1 + 8) == plVar3)) {
        *(long **)(lVar1 + 8) = plVar2;
        *plVar2 = lVar1;
      }
      else {
        __list_del_entry_valid_or_report(plVar3);
      }
      *plVar3 = -0x2152ffffffffff00;
      plVar3[1] = -0x2152fffffffffede;
      kfree(plVar3[2]);
      kfree(plVar3);
      if ((int)plVar4[0x9e] != 0) {
        *(int *)(plVar4 + 0x9e) = (int)plVar4[0x9e] + -1;
      }
      plVar3 = (long *)plVar4[0x9f];
    }
    mutex_unlock(&DAT_00131e50);
    syna_tcm_clear_data_duplicator(*plVar4);
    mutex_unlock(&DAT_00131e20);
    DAT_00131e80 = 0;
    DAT_00131e88 = 0;
    _printk(&DAT_00138391,"syna_cdev_release");
    lVar1 = *plVar4;
    if (*(int *)(lVar1 + 0x38) != DAT_00131e8c) {
      *(int *)(lVar1 + 0x38) = DAT_00131e8c;
      lVar1 = *plVar4;
    }
    if (*(int *)(lVar1 + 0x3c) != DAT_00131e90) {
      *(int *)(lVar1 + 0x3c) = DAT_00131e90;
    }
  }
  return 0;
}

