
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong zte_ir_probe(long param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  int *piVar5;
  ulong uVar6;
  
  piVar5 = (int *)__kmalloc_large_noprof(0x138e8,0xdc0);
  if (piVar5 == (int *)0x0) {
    uVar6 = 0xfffffff4;
  }
  else {
    *(long *)(piVar5 + 0x4e24) = param_1;
    piVar5[0x4e28] = 0;
    __mutex_init(piVar5 + 0x4e2a,"&zte_ir->buf_lock",0x100010);
    piVar1 = piVar5 + 0x4e36;
    *(int **)(piVar5 + 0x4e36) = piVar1;
    *(int **)(piVar5 + 0x4e38) = piVar1;
    mutex_lock(0x100000);
    if (false) {
      _dev_printk(&DAT_00100a37,param_1,"no minor number available!\n");
      uVar6 = 0xffffffed;
    }
    else {
      iVar2 = _zte_ir_probe__alloc_tag << 0x14;
      *piVar5 = iVar2;
      uVar6 = device_create(0xd10503ffd503233f,param_1,iVar2,piVar5,"zte_ir");
      if ((uVar6 < 0xfffffffffffff001) || ((int)uVar6 == 0)) {
        Hint_Prefetch(0x100018,2,0,1);
        do {
                    /* WARNING: Read-only address (ram,0x00100018) is written */
          cVar3 = '\x01';
          bVar4 = (bool)ExclusiveMonitorPass(0x100018,0x10);
          if (bVar4) {
            cVar3 = ExclusiveMonitorsStatus();
            uRam0000000000100018 = 0xa9134ff4a91257f7;
          }
        } while (cVar3 != '\0');
        if ((piVar1 == (int *)&DAT_90000000f9438908) || (_DAT_90000000f9438910 != (int *)0x100030))
        {
          __list_add_valid_or_report(piVar1,0x100030);
        }
        else {
          _DAT_90000000f9438910 = piVar1;
          *(undefined1 **)(piVar5 + 0x4e36) = &DAT_90000000f9438908;
          piVar5[0x4e38] = 0x100030;
          piVar5[0x4e39] = 0;
                    /* WARNING: Read-only address (ram,0x00100030) is written */
          piRam0000000000100030 = piVar1;
        }
        mutex_unlock(0x100000);
        piVar5[0x4e22] = 0x94700;
        _dev_printk(&DAT_00100a37,param_1,"zte_ir->speed_hz=%d\n",0x94700);
        uVar6 = 0;
        *(int **)(param_1 + 0x98) = piVar5;
        piVar5[0x4e21] = 0x1f;
        goto LAB_001005ec;
      }
    }
    mutex_unlock(0x100000);
    piVar5[0x4e22] = 0x94700;
    _dev_printk(&DAT_00100a37,param_1,"zte_ir->speed_hz=%d\n",0x94700);
    piVar5[0x4e21] = 0x1f;
    kfree(piVar5);
  }
LAB_001005ec:
  return uVar6 & 0xffffffff;
}

