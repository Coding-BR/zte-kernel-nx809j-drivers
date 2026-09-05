
undefined8 zlog_comm_open(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x103978,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x103978,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00103978 = DAT_00103978 + 1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_00103dd5,"zlog_comm_open",DAT_00103978);
  return 0;
}

