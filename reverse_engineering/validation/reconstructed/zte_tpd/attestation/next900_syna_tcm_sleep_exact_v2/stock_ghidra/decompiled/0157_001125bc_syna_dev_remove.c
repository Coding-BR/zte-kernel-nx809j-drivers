
void syna_dev_remove(long param_1)

{
  char cVar1;
  long lVar2;
  undefined8 *puVar3;
  long lVar4;
  
  puVar3 = *(undefined8 **)(param_1 + 0xa8);
  if (puVar3 == (undefined8 *)0x0) {
    _printk(&DAT_00139a6e,"syna_dev_remove");
  }
  _printk(&DAT_001352c7,"syna_dev_remove");
  cancel_work_sync(puVar3 + 0xa5);
  __flush_workqueue(puVar3[0xa9]);
  destroy_workqueue(puVar3[0xa9]);
  if ((active_panel != 0) && (puVar3[0xaa] != 0)) {
    panel_event_notifier_unregister();
  }
  syna_sysfs_remove_dir(puVar3);
  syna_cdev_remove(puVar3);
  syna_dev_disconnect(puVar3);
  lVar4 = puVar3[0xb5];
  if (lVar4 != 0) {
    lVar2 = syna_request_managed_device();
    if (lVar2 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      cVar1 = *(char *)(puVar3 + 0x5d);
      goto joined_r0x001126d4;
    }
    devm_kfree(lVar2,lVar4);
  }
  cVar1 = *(char *)(puVar3 + 0x5d);
joined_r0x001126d4:
  if (cVar1 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  lVar2 = puVar3[0x55];
  lVar4 = syna_request_managed_device();
  if (lVar4 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (lVar2 != 0) {
    devm_kfree(lVar4,lVar2);
  }
  puVar3[0x56] = 0;
  *(undefined1 *)(puVar3 + 0x5d) = 0;
  kfree(puVar3[0x8c]);
  syna_tcm_remove_device(*puVar3);
  return;
}

