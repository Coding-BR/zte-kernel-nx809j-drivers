
undefined8 gf_release(undefined8 param_1,long param_2)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_2 + 0x20);
  if (lVar3 == 0) {
    uVar2 = 0xffffffea;
  }
  else {
    _printk(&DAT_001031a8,"gf_release");
    mutex_lock(device_list_lock);
    *(undefined8 *)(param_2 + 0x20) = 0;
    iVar1 = *(int *)(lVar3 + 0x38) + -1;
    *(int *)(lVar3 + 0x38) = iVar1;
    if (iVar1 == 0) {
      _printk(&DAT_00103237,"gf_release");
      irq_set_irq_wake(*(undefined4 *)(lVar3 + 0x48),0);
      if (*(int *)(lVar3 + 0x4c) == 0) {
        _printk(&DAT_00102ef5,"gf_release");
      }
      else {
        *(undefined4 *)(lVar3 + 0x4c) = 0;
        disable_irq(*(undefined4 *)(lVar3 + 0x48));
      }
      free_irq(*(undefined4 *)(lVar3 + 0x48),lVar3);
      gf_cleanup(lVar3);
      *(undefined1 *)(lVar3 + 0x70) = 0;
      lVar3 = *(long *)(lVar3 + 0x78);
    }
    else {
      lVar3 = *(long *)(lVar3 + 0x78);
    }
    if (lVar3 != 0) {
      zlog_unregister_client();
      _printk(&DAT_00103b6b,"gf_release");
    }
    mutex_unlock(device_list_lock);
    uVar2 = 0;
  }
  return uVar2;
}

