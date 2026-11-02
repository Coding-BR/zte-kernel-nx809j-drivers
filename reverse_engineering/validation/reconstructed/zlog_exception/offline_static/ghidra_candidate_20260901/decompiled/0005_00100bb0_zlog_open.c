
undefined8 zlog_open(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x100ec8,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x100ec8,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00100ec8 = DAT_00100ec8 + 1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_001010e3,"zlog_open",DAT_00100ec8);
  return 0;
}

