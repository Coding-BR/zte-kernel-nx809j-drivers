
undefined8 gf_release(undefined8 param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  _printk(&DAT_0010301d,"gf_release");
  mutex_lock(device_list_lock);
  lVar2 = *(long *)(param_2 + 0x20);
  *(undefined8 *)(param_2 + 0x20) = 0;
  iVar1 = *(int *)(lVar2 + 0x38) + -1;
  *(int *)(lVar2 + 0x38) = iVar1;
  if (iVar1 == 0) {
    _printk(&DAT_00103618,*(undefined4 *)(lVar2 + 0x48));
    irq_set_irq_wake(*(undefined4 *)(lVar2 + 0x48),0);
    if (*(int *)(lVar2 + 0x4c) == 0) {
      _printk(&DAT_001033ef);
    }
    else {
      *(undefined4 *)(lVar2 + 0x4c) = 0;
      disable_irq(*(undefined4 *)(lVar2 + 0x48));
    }
    free_irq(*(undefined4 *)(lVar2 + 0x48),lVar2);
    gf_cleanup(lVar2);
    *(undefined1 *)(lVar2 + 0x70) = 0;
    lVar2 = *(long *)(lVar2 + 0x78);
  }
  else {
    lVar2 = *(long *)(lVar2 + 0x78);
  }
  if (lVar2 != 0) {
    zlog_unregister_client();
    _printk(&DAT_00102ccd,"gf_release");
  }
  mutex_unlock(device_list_lock);
  return 0;
}

