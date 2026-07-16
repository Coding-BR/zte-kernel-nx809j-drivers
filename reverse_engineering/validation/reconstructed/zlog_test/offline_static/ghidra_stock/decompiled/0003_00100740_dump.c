
undefined8 dump(long param_1,undefined4 param_2)

{
  _printk(&DAT_001010e8,&DAT_001015dd,&DAT_001015dd,param_2);
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump1\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump2\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump3\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump4\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump5\n");
  zlog_client_notify(param_1,0x40010a);
  _printk(&DAT_001014b4,&DAT_001015dd,param_1 + 4);
  return 0;
}

