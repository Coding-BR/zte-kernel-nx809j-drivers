
int gf_open(long param_1,long param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined **ppuVar4;
  undefined **ppuVar5;
  
  _printk(&DAT_001031a8,"gf_open");
  mutex_lock(device_list_lock);
  ppuVar5 = &device_list;
  do {
    ppuVar5 = (undefined **)*ppuVar5;
    if (ppuVar5 == &device_list) {
      _printk(&DAT_00102e4c,"gf_open",*(uint *)(param_1 + 0x4c) & 0xfffff);
      iVar1 = -6;
      goto LAB_00101034;
    }
  } while (*(int *)(ppuVar5 + -1) != *(int *)(param_1 + 0x4c));
  ppuVar4 = ppuVar5 + -1;
  _printk(&DAT_0010362c,"gf_open");
  *(int *)(ppuVar5 + 6) = *(int *)(ppuVar5 + 6) + 1;
  *(undefined ***)(param_2 + 0x20) = ppuVar4;
  nonseekable_open(param_1,param_2);
  puVar2 = (undefined *)zlog_register_client(&goodix_zlog_fp_dev);
  ppuVar5[0xe] = puVar2;
  _printk(&DAT_00103a26,"gf_open",puVar2);
  _printk(&DAT_00103444,"gf_open",*(undefined4 *)(ppuVar5 + 6));
  if (*(int *)(ppuVar5 + 6) == 1) {
    iVar1 = gf_parse_dts(ppuVar4);
    if (iVar1 == 0) {
      _printk(&DAT_001039be,"gf_open");
      uVar3 = gf_irq_num(ppuVar4);
      *(int *)(ppuVar5 + 8) = (int)uVar3;
      iVar1 = request_threaded_irq(uVar3,0,gf_irq,0x2001,"goodix_fp",ppuVar4);
      if (iVar1 == 0) {
        irq_set_irq_wake(*(undefined4 *)(ppuVar5 + 8),1);
        *(undefined4 *)((long)ppuVar5 + 0x44) = 1;
        goto LAB_00100ffc;
      }
      _printk(&DAT_00103101,"gf_open");
      gf_cleanup(ppuVar4);
    }
    mutex_unlock(device_list_lock);
    puVar2 = &DAT_001036d8;
  }
  else {
LAB_00100ffc:
    gf_hw_reset(ppuVar4);
    iVar1 = 0;
    *(undefined1 *)(ppuVar5 + 0xd) = 1;
LAB_00101034:
    mutex_unlock(device_list_lock);
    puVar2 = &DAT_00102f7f;
  }
  _printk(puVar2,"gf_open",iVar1);
  return iVar1;
}

