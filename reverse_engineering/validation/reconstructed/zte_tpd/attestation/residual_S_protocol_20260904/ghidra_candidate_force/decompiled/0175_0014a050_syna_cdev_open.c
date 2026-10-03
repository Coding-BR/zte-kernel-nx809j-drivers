
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void syna_cdev_open(void)

{
  long *plVar1;
  long lVar2;
  long *plVar3;
  long *plVar4;
  
  plVar4 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_0015eb00);
  if (*(int *)((long)plVar4 + 900) == 0) {
    *(undefined4 *)((long)plVar4 + 900) = 1;
    _DAT_0015eb60 = 0;
    DAT_0015eb68 = 0;
    DAT_0015eb70._0_4_ = *(undefined4 *)(*plVar4 + 0x3c);
    _DAT_0015eb6c = *(undefined4 *)(*plVar4 + 0x38);
    *(undefined1 *)(*plVar4 + 0x37a) = 0;
    *(undefined1 *)((long)plVar4 + 0x584) = 0;
    mutex_lock();
    plVar3 = (long *)plVar4[0x9f];
    while (plVar3 != plVar4 + 0x9f) {
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
      if ((int)plVar4[0x9e] != 0) {
        *(int *)(plVar4 + 0x9e) = (int)plVar4[0x9e] + -1;
      }
      plVar3 = (long *)plVar4[0x9f];
    }
    mutex_unlock(&DAT_0015eb30);
    syna_tcm_clear_data_duplicator(*plVar4);
    mutex_unlock(&DAT_0015eb00);
                    /* WARNING: Subroutine does not return */
    _printk(&unk_34E37,"syna_cdev_open");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_366C2,"syna_cdev_open");
}

