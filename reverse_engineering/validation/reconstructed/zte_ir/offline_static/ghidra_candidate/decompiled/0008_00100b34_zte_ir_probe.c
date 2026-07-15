
ulong zte_ir_probe(long param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  int *piVar5;
  ulong uVar6;
  
  piVar5 = (int *)__kmalloc_large_noprof(0x138f0,0xdc0);
  if (piVar5 == (int *)0x0) {
    uVar6 = 0xfffffff4;
  }
  else {
    piVar5[0x4e28] = 0;
    __mutex_init(piVar5 + 0x4e2a,"&runtime->stock.buf_lock",&zte_ir_probe___key);
    piVar1 = piVar5 + 0x4e36;
    *(int **)(piVar5 + 0x4e36) = piVar1;
    *(int **)(piVar5 + 0x4e38) = piVar1;
    piVar5[0x4e21] = 0x1f;
    piVar5[0x4e22] = 0x94700;
    *(long *)(piVar5 + 0x4e24) = param_1;
    piVar5[0x4e3a] = 0;
    *(undefined1 *)(piVar5 + 0x4e3b) = 0;
    mutex_lock(&device_list_lock);
    if ((minors & 1) == 0) {
      iVar2 = spidev_major << 0x14;
      uVar6 = device_create(zte_ir_class,param_1,iVar2,piVar5,"zte_ir");
      if ((uVar6 < 0xfffffffffffff001) || ((int)uVar6 == 0)) {
        *piVar5 = iVar2;
        Hint_Prefetch(0x101400,2,0,1);
        do {
          cVar3 = '\x01';
          bVar4 = (bool)ExclusiveMonitorPass(0x101400,0x10);
          if (bVar4) {
            cVar3 = ExclusiveMonitorsStatus();
            minors = minors | 1;
          }
        } while (cVar3 != '\0');
        __list_add(piVar1,&device_list,device_list);
        mutex_unlock(&device_list_lock);
        iVar2 = piVar5[0x4e22];
        *(int **)(param_1 + 0x98) = piVar5;
        _dev_printk(&DAT_001013aa,param_1,"zte_ir->speed_hz=%d\n",iVar2);
        uVar6 = 0;
        goto LAB_00100cc0;
      }
    }
    else {
      uVar6 = 0xffffffed;
    }
    mutex_unlock(&device_list_lock);
    kfree(piVar5);
  }
LAB_00100cc0:
  return uVar6 & 0xffffffff;
}

