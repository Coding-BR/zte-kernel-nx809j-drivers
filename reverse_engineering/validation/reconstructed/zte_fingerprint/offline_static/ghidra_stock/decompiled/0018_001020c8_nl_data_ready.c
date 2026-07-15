
void nl_data_ready(long param_1)

{
  uint *puVar1;
  uint uVar2;
  char cVar3;
  bool bVar4;
  undefined8 uVar5;
  
  puVar1 = (uint *)(param_1 + 0xec);
  Hint_Prefetch(puVar1,2,0,1);
  do {
    uVar2 = *puVar1;
    cVar3 = '\x01';
    bVar4 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar4) {
      *puVar1 = uVar2 + 1;
      cVar3 = ExclusiveMonitorsStatus();
    }
  } while (cVar3 != '\0');
  if (uVar2 == 0) {
    uVar5 = 2;
  }
  else {
    if (-1 < (int)(uVar2 + 1 | uVar2)) goto LAB_001020f8;
    uVar5 = 1;
  }
  refcount_warn_saturate(puVar1,uVar5);
LAB_001020f8:
  if (0xf < *(uint *)(param_1 + 0x70)) {
    pid = *(undefined4 *)(*(long *)(param_1 + 0xe0) + 0xc);
    _printk(&DAT_00103c3b,"nl_data_ready");
    sk_skb_reason_drop(0,param_1,2);
  }
  _printk(&DAT_00103242,"nl_data_ready",pid);
  return;
}

