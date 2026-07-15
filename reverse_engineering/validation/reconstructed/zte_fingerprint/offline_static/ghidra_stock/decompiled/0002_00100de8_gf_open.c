
int gf_open(long param_1,long param_2)

{
  undefined *puVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined **ppuVar5;
  undefined **ppuVar6;
  
  _printk(&DAT_001030b2,"gf_open");
  mutex_lock(device_list_lock);
  ppuVar6 = &device_list;
  do {
    ppuVar6 = (undefined **)*ppuVar6;
    ppuVar5 = ppuVar6 + -1;
    if (ppuVar6 == &device_list) {
      iVar2 = -6;
      goto LAB_00100e6c;
    }
  } while (*(int *)ppuVar5 != *(int *)(param_1 + 0x4c));
  _printk(&DAT_001030d0);
  iVar2 = 0;
LAB_00100e6c:
  puVar3 = (undefined *)zlog_register_client(&goodix_zlog_fp_dev);
  ppuVar6[0xe] = puVar3;
  puVar1 = &DAT_001038cd;
  if (puVar3 != (undefined *)0x0) {
    puVar1 = &DAT_001031cc;
  }
  _printk(puVar1,"gf_open");
  if (ppuVar6 == &device_list) {
    _printk(&DAT_00103291,*(uint *)(param_1 + 0x4c) & 0xfffff);
  }
  else {
    *(int *)(ppuVar6 + 6) = *(int *)(ppuVar6 + 6) + 1;
    *(undefined ***)(param_2 + 0x20) = ppuVar5;
    nonseekable_open(param_1,param_2);
    _printk(&DAT_0010347b,*(undefined4 *)(ppuVar6 + 8));
    if (*(int *)(ppuVar6 + 6) == 1) {
      iVar2 = gf_parse_dts(ppuVar5);
      if (iVar2 != 0) {
LAB_00100f28:
        mutex_unlock(device_list_lock);
        return iVar2;
      }
      _printk(&DAT_00103b43,"irq_setup");
      uVar4 = gf_irq_num(ppuVar5);
      *(int *)(ppuVar6 + 8) = (int)uVar4;
      iVar2 = request_threaded_irq(uVar4,0,gf_irq,0x2001,&DAT_00103ad6,ppuVar5);
      if (iVar2 != 0) {
        _printk(&DAT_001030ea);
        gf_cleanup(ppuVar5);
        goto LAB_00100f28;
      }
      irq_set_irq_wake(*(undefined4 *)(ppuVar6 + 8),1);
      *(undefined4 *)((long)ppuVar6 + 0x44) = 1;
    }
    gf_hw_reset(ppuVar5,5);
    iVar2 = 0;
    *(undefined1 *)(ppuVar6 + 0xd) = 1;
  }
  mutex_unlock(device_list_lock);
  _printk(&DAT_0010369e,"gf_open");
  return iVar2;
}

