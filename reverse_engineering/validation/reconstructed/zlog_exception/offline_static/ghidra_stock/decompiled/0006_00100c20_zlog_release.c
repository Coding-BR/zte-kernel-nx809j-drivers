
undefined8 zlog_release(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x100fa8,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x100fa8,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00100fa8 = DAT_00100fa8 + -1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_001011d3,"zlog_release",DAT_00100fa8);
  return 0;
}

