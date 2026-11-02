
ulong zlog_client_record(long param_1,char *param_2)

{
  ulong uVar1;
  ulong *puVar2;
  char cVar3;
  bool bVar4;
  long lVar5;
  uint uVar6;
  undefined *puVar7;
  long lVar8;
  ulong uVar9;
  
  lVar8 = sp_el0;
  lVar8 = *(long *)(lVar8 + 0x710);
  if ((DAT_0010397c & 1) == 0) {
    puVar7 = &DAT_00103f02;
  }
  else {
    if (param_1 != 0) {
      mutex_lock(param_1 + 0xb0);
      if (*(ulong *)(param_1 + 0xf8) < 0x800) {
        uVar6 = vsnprintf((char *)(*(long *)(param_1 + 0x108) + *(long *)(param_1 + 0xf8)),
                          *(long *)(param_1 + 0x100) + ~*(ulong *)(param_1 + 0xf8),param_2,
                          &stack0xffffffffffffff98);
        uVar9 = (ulong)uVar6;
        if ((int)uVar6 < 0) {
          _printk(&DAT_00103acb,"zlog_client_record","zlog_client_record");
        }
        else {
          uVar1 = *(long *)(param_1 + 0xf8) + uVar9;
          *(ulong *)(param_1 + 0xf8) = uVar1;
          if (*(ulong *)(param_1 + 0x100) <= uVar1) {
            *(ulong *)(param_1 + 0xf8) = *(ulong *)(param_1 + 0x100) - 1;
          }
          puVar2 = (ulong *)(param_1 + 0xe8);
          Hint_Prefetch(puVar2,2,0,1);
          do {
            cVar3 = '\x01';
            bVar4 = (bool)ExclusiveMonitorPass(puVar2,0x10);
            if (bVar4) {
              *puVar2 = *puVar2 | 4;
              cVar3 = ExclusiveMonitorsStatus();
            }
          } while (cVar3 != '\0');
        }
      }
      else {
        _printk(&DAT_00103aa2,"zlog_client_record","zlog_client_record");
        uVar9 = 0;
      }
      mutex_unlock(param_1 + 0xb0);
      goto LAB_0010058c;
    }
    puVar7 = &DAT_00103d6e;
  }
  _printk(puVar7,"zlog_client_record","zlog_client_record");
  uVar9 = 0;
LAB_0010058c:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != lVar8) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar9;
}

