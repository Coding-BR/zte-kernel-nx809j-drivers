
void aw_remove(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  undefined4 uVar4;
  long lVar5;
  
  lVar5 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_0010f834,"haptic_hv",0x11d9,"aw_remove");
  cancel_delayed_work_sync(lVar5 + 0x3c0);
  cancel_work_sync(lVar5 + 0x560);
  hrtimer_cancel(lVar5 + 0x520);
  cancel_work_sync(lVar5 + 0x3a0);
  cancel_work_sync(lVar5 + 0x428);
  hrtimer_cancel(lVar5 + 0x330);
  gpio_to_desc(*(undefined4 *)(lVar5 + 0x50));
  uVar4 = gpiod_to_irq();
  devm_free_irq(param_1 + 0x20,uVar4,lVar5);
  if (-1 < *(int *)(lVar5 + 0x50)) {
    gpio_free();
  }
  cancel_work_sync(lVar5 + 0x648);
  kfree(*(undefined8 *)(lVar5 + 0x608));
  puVar1 = (ulong *)((((*(long *)(lVar5 + 0x610) << 8) >> 8) + 0x8000000000U >> 6 &
                     0x3ffffffffffffc0) - 0x140000000);
  Hint_Prefetch(puVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar3) {
      *puVar1 = *puVar1 & 0xffffffffffffbfff;
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  free_pages(*(undefined8 *)(lVar5 + 0x610),2);
  misc_deregister(richtap_misc);
  if (-1 < *(int *)(lVar5 + 0x5c)) {
    gpio_free();
  }
  return;
}

