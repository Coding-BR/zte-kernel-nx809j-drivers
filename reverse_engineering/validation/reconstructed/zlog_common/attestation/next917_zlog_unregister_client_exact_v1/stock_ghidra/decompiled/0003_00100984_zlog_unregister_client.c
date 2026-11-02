
void zlog_unregister_client(int *param_1)

{
  ulong *puVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  undefined *puVar5;
  
  if ((DAT_0010397c & 1) == 0) {
    _printk(&DAT_00103f02,"zlog_unregister_client","zlog_unregister_client");
  }
  else {
    iVar2 = *param_1;
    if (iVar2 < 0) {
      puVar5 = &DAT_00103f4e;
    }
    else {
      mutex_lock(param_1 + 0x2c);
      if (*(long *)(param_1 + 0x42) != 0) {
        kfree();
      }
      param_1[0x3c] = 0;
      param_1[0x3d] = 0;
      param_1[0x3e] = 0;
      param_1[0x3f] = 0;
      param_1[0x40] = 0x800;
      param_1[0x41] = 0;
      param_1[1] = 0;
      param_1[2] = 0;
      param_1[3] = 0;
      param_1[4] = 0;
      param_1[5] = 0;
      param_1[6] = 0;
      param_1[7] = 0;
      param_1[8] = 0;
      param_1[9] = 0;
      param_1[10] = 0;
      param_1[0xb] = 0;
      param_1[0xc] = 0;
      param_1[0xd] = 0;
      param_1[0xe] = 0;
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      param_1[0x11] = 0;
      param_1[0x12] = 0;
      param_1[0x13] = 0;
      param_1[0x14] = 0;
      param_1[0x15] = 0;
      param_1[0x16] = 0;
      param_1[0x17] = 0;
      param_1[0x18] = 0;
      param_1[0x19] = 0;
      param_1[0x1a] = 0;
      param_1[0x1b] = 0;
      param_1[0x1c] = 0;
      param_1[0x1d] = 0;
      param_1[0x1e] = 0;
      param_1[0x1f] = 0;
      param_1[0x20] = 0;
      param_1[0x27] = 0;
      param_1[0x28] = 0;
      param_1[0x25] = 0;
      param_1[0x26] = 0;
      param_1[0x23] = 0;
      param_1[0x24] = 0;
      param_1[0x21] = 0;
      param_1[0x22] = 0;
      param_1[9] = 0;
      param_1[10] = 0;
      param_1[0xb] = 0;
      param_1[0xc] = 0;
      param_1[0xd] = 0;
      param_1[0xe] = 0;
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      *param_1 = 0;
      param_1[0x2a] = 0;
      param_1[0x2b] = 0;
      *(undefined1 *)(param_1 + 0x46) = 0;
      puVar1 = (ulong *)(param_1 + 0x3a);
      Hint_Prefetch(puVar1,2,0,1);
      do {
        cVar3 = '\x01';
        bVar4 = (bool)ExclusiveMonitorPass(puVar1,0x10);
        if (bVar4) {
          *puVar1 = *puVar1 | 1;
          cVar3 = ExclusiveMonitorsStatus();
        }
      } while (cVar3 != '\0');
      mutex_unlock(param_1 + 0x2c);
      puVar5 = &DAT_00103ba7;
    }
    _printk(puVar5,"zlog_unregister_client",iVar2);
  }
  return;
}

