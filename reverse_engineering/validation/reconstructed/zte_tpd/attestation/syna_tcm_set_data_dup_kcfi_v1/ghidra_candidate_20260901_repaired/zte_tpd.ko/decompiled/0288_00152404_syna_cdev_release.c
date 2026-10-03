
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void syna_cdev_release(void)

{
  long *plVar1;
  long lVar2;
  long *plVar3;
  undefined8 *puVar4;
  
  puVar4 = *(undefined8 **)(g_cdev_data + 0xa8);
  if (*(int *)((long)puVar4 + 900) < 1) {
    _printk(&DAT_0017f6d8,"syna_cdev_release");
    return;
  }
  mutex_lock(&DAT_0015eb00);
  *(int *)((long)puVar4 + 900) = *(int *)((long)puVar4 + 900) + -1;
  mutex_lock(&DAT_0015eb30);
  plVar3 = (long *)puVar4[0x9f];
  while (plVar3 != puVar4 + 0x9f) {
    plVar1 = (long *)plVar3[1];
    if (((long *)*plVar1 == plVar3) && (lVar2 = *plVar3, *(long **)(lVar2 + 8) == plVar3)) {
      *(long **)(lVar2 + 8) = plVar1;
      *plVar1 = lVar2;
    }
    else {
      __list_del_entry_valid_or_report(plVar3);
    }
    *plVar3 = -0x2152ffffffffff00;
    plVar3[1] = -0x2152fffffffffede;
    kfree(plVar3[2]);
    kfree(plVar3);
    if (*(int *)(puVar4 + 0x9e) != 0) {
      *(int *)(puVar4 + 0x9e) = *(int *)(puVar4 + 0x9e) + -1;
    }
    plVar3 = (long *)puVar4[0x9f];
  }
  mutex_unlock(&DAT_0015eb30);
  syna_tcm_clear_data_duplicator(*puVar4);
  mutex_unlock(&DAT_0015eb00);
  _DAT_0015eb60 = 0;
  DAT_0015eb68 = 0;
  _printk(&DAT_0018088e,"syna_cdev_release");
  return;
}

