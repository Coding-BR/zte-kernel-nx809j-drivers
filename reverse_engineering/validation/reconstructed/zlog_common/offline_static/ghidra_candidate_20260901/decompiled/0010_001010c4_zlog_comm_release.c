
undefined8 zlog_comm_release(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x104010,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x104010,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00104010 = DAT_00104010 + -1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_00101aed,"zlog_comm_release",DAT_00104010);
  return 0;
}

