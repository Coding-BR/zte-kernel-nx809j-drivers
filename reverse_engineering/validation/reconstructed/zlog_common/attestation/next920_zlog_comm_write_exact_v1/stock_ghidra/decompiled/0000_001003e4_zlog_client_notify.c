
void zlog_client_notify(long param_1,undefined4 param_2)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  undefined *puVar4;
  
  if ((DAT_0010397c & 1) == 0) {
    puVar4 = &DAT_00103f02;
  }
  else {
    if (param_1 != 0) {
      mutex_lock(param_1 + 0xb0);
      *(undefined4 *)(param_1 + 0xe4) = param_2;
      puVar1 = (ulong *)(param_1 + 0xe8);
      Hint_Prefetch(puVar1,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
        if (bVar3) {
          *puVar1 = *puVar1 | 8;
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
      mutex_unlock(param_1 + 0xb0);
      cancel_delayed_work(&DAT_001038c0);
      queue_delayed_work_on(0x20,DAT_001038b8,&DAT_001038c0,0x32);
      return;
    }
    puVar4 = &DAT_00103d6e;
  }
  _printk(puVar4,"zlog_client_notify","zlog_client_notify");
  return;
}

