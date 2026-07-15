
ulong zte_ir_probe(long param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  undefined8 uVar5;
  int *piVar6;
  ulong uVar7;
  
  piVar6 = (int *)__kmalloc_large_noprof(0x138e8,0xdc0);
  if (piVar6 == (int *)0x0) {
    uVar7 = 0xfffffff4;
  }
  else {
    *(long *)(piVar6 + 0x4e24) = param_1;
    piVar6[0x4e28] = 0;
    __mutex_init(piVar6 + 0x4e2a,"&zte_ir->buf_lock",&zte_ir_probe___key);
    piVar1 = piVar6 + 0x4e36;
    *(int **)(piVar6 + 0x4e36) = piVar1;
    *(int **)(piVar6 + 0x4e38) = piVar1;
    mutex_lock(&device_list_lock);
    uVar5 = zte_ir_class;
    if ((minors & 1) == 0) {
      iVar2 = spidev_major << 0x14;
      *piVar6 = iVar2;
      uVar7 = device_create(uVar5,param_1,iVar2,piVar6,"zte_ir");
      if ((uVar7 < 0xfffffffffffff001) || ((int)uVar7 == 0)) {
        Hint_Prefetch(0x101350,2,0,1);
        do {
          cVar3 = '\x01';
          bVar4 = (bool)ExclusiveMonitorPass(0x101350,0x10);
          if (bVar4) {
            cVar3 = ExclusiveMonitorsStatus();
            minors = minors | 1;
          }
        } while (cVar3 != '\0');
        if (((int *)device_list == piVar1) || (*(undefined ***)(device_list + 8) != &device_list)) {
          __list_add_valid_or_report(piVar1,&device_list);
        }
        else {
          *(int **)(device_list + 8) = piVar1;
          *(undefined **)(piVar6 + 0x4e36) = device_list;
          *(undefined ***)(piVar6 + 0x4e38) = &device_list;
          device_list = (undefined *)piVar1;
        }
        mutex_unlock(&device_list_lock);
        piVar6[0x4e22] = 0x94700;
        _dev_printk(&DAT_0010129f,param_1,"zte_ir->speed_hz=%d\n",0x94700);
        uVar7 = 0;
        *(int **)(param_1 + 0x98) = piVar6;
        piVar6[0x4e21] = 0x1f;
        goto LAB_00100950;
      }
    }
    else {
      _dev_printk(&DAT_0010129f,param_1,"no minor number available!\n");
      uVar7 = 0xffffffed;
    }
    mutex_unlock(&device_list_lock);
    piVar6[0x4e22] = 0x94700;
    _dev_printk(&DAT_0010129f,param_1,"zte_ir->speed_hz=%d\n",0x94700);
    piVar6[0x4e21] = 0x1f;
    kfree(piVar6);
  }
LAB_00100950:
  return uVar7 & 0xffffffff;
}

