
void zlog_reset_client(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  
  if ((DAT_0010397c & 1) == 0) {
    _printk(&DAT_00103f02,"zlog_reset_client","zlog_reset_client");
  }
  else if (param_1 == 0) {
    _printk(&DAT_001039bb,"zlog_reset_client");
  }
  else {
    mutex_lock(param_1 + 0xb0);
    *(undefined4 *)(param_1 + 0xe4) = 0;
    *(undefined8 *)(param_1 + 0xf0) = 0;
    *(undefined8 *)(param_1 + 0xf8) = 0;
    memset(*(void **)(param_1 + 0x108),0,*(size_t *)(param_1 + 0x100));
    puVar1 = (ulong *)(param_1 + 0xe8);
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 & 0xfffffffffffffffd;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    mutex_unlock(param_1 + 0xb0);
  }
  return;
}

