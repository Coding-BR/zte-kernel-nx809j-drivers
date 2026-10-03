
undefined8 dump(long param_1,undefined4 param_2)

{
  _printk(&DAT_0010102b,&DAT_00101520,&DAT_00101520,param_2);
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump1\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump2\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump3\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump4\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump5\n");
  zlog_client_notify(param_1,0x40010a);
  _printk(&DAT_001013f7,&DAT_00101520,param_1 + 4);
  return 0;
}

