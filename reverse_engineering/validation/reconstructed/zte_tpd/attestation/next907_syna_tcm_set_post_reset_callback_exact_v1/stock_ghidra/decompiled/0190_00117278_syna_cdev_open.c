
undefined8 syna_cdev_open(void)

{
  int iVar1;
  long *plVar2;
  long lVar3;
  long *plVar4;
  long *plVar5;
  
  plVar5 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_00131e20);
  if (*(int *)((long)plVar5 + 900) == 0) {
    iVar1 = 1;
  }
  else {
    _printk(&DAT_001371e1,"syna_cdev_open");
    iVar1 = *(int *)((long)plVar5 + 900) + 1;
  }
  *(int *)((long)plVar5 + 900) = iVar1;
  DAT_00131e80 = 0;
  DAT_00131e88 = 0;
  DAT_00131e90 = *(undefined4 *)(*plVar5 + 0x3c);
  DAT_00131e8c = *(undefined4 *)(*plVar5 + 0x38);
  *(undefined1 *)(*plVar5 + 0x37a) = 0;
  *(undefined1 *)((long)plVar5 + 0x584) = 0;
  mutex_lock();
  plVar4 = (long *)plVar5[0x9f];
  while (plVar4 != plVar5 + 0x9f) {
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
    if ((int)plVar5[0x9e] != 0) {
      *(int *)(plVar5 + 0x9e) = (int)plVar5[0x9e] + -1;
    }
    plVar4 = (long *)plVar5[0x9f];
  }
  mutex_unlock(&DAT_00131e50);
  syna_tcm_clear_data_duplicator(*plVar5);
  mutex_unlock(&DAT_00131e20);
  _printk(&DAT_001358cd,"syna_cdev_open");
  return 0;
}

