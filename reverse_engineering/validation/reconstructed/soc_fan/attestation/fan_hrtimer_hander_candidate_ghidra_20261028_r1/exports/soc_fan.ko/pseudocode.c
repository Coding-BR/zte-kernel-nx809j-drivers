/* 00100274 fan_speed_irq_proc */

undefined8 fan_speed_irq_proc(undefined8 param_1,long param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  
  piVar1 = (int *)(*(long *)(param_2 + 8) + 4);
  Hint_Prefetch(piVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
    if (bVar3) {
      *piVar1 = *piVar1 + 1;
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  return 1;
}



/* 001002b4 nb_fan_remove */

void nb_fan_remove(long param_1)

{
  long *plVar1;
  
  plVar1 = *(long **)(param_1 + 0xa8);
  sysfs_remove_group(plVar1[2],chip_attr_group);
  *(undefined8 *)(*plVar1 + 0x98) = 0;
  return;
}



/* 001002f4 fan_hrtimer_hander */

undefined8 fan_hrtimer_hander(void)

{
  long lVar1;
  
  lVar1 = *(long *)(chip + 8);
  if (*(char *)(lVar1 + 2) == '\x02') {
    *(undefined1 *)(lVar1 + 2) = 3;
    lVar1 = chip;
    *(undefined4 *)(*(long *)(chip + 8) + 8) = *(undefined4 *)(*(long *)(chip + 8) + 4);
    disable_irq_nosync(*(undefined4 *)(*(long *)(lVar1 + 8) + 0x1c));
    _printk(&DAT_0010056b,"NB_FAN","fan_hrtimer_hander",0x89,**(undefined1 **)(chip + 8),
            *(undefined4 *)(*(undefined1 **)(chip + 8) + 4));
  }
  else if (*(char *)(lVar1 + 2) == '\x01') {
    *(undefined4 *)(lVar1 + 4) = 0;
    *(undefined1 *)(*(long *)(chip + 8) + 2) = 2;
    hrtimer_start_range_ns(*(long *)(chip + 8) + 0x28,500000000,0,1);
    enable_irq(*(undefined4 *)(*(long *)(chip + 8) + 0x1c));
    _printk(&DAT_00100530,"NB_FAN","fan_hrtimer_hander",0x82,**(undefined1 **)(chip + 8),
            *(undefined4 *)(*(undefined1 **)(chip + 8) + 4));
    return 1;
  }
  return 0;
}



/* 00100410 fan_enable_show */

long fan_enable_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  _printk(&DAT_001005cb,"NB_FAN","fan_enable_show",0x130,*(undefined1 *)(*(long *)(chip + 8) + 0xc))
  ;
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(*(long *)(chip + 8) + 0xc));
  return (long)iVar1;
}



/* 00100488 fan_level_show */

long fan_level_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = sprintf(param_3,"%d\n",
                  (ulong)*(byte *)(*(long *)(chip + 8) +
                                  ((ulong)*(byte *)(*(long *)(chip + 8) + 0xc) ^ 1)));
  return (long)iVar1;
}



/* 001004d4 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(&nubia_fan_driver);
  return;
}



/* 001004fc init_module */

void init_module(void)

{
  __platform_driver_register(&nubia_fan_driver,&__this_module);
  return;
}



