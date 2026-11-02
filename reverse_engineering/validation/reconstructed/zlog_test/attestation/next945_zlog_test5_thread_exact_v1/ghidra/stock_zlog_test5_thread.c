
void zlog_test5_thread(void)

{
  undefined8 uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar2 = get_random_u32();
  zlog_client_record(client_5,"National derby:\n");
  zlog_client_record(client_5,"Real Madrid vs  Barcelona\n");
  zlog_client_record(client_5,"Manchester United vs Chelsea\n");
  zlog_client_record(client_5,"AC milan vs Juventus\n");
  zlog_client_record(client_5,"Bayern Munich vs Hertha BSC\n");
  zlog_client_notify(client_5,5);
  _printk(&DAT_001014b4,"zlog_test5_thread",client_5 + 4);
  uVar1 = zlog_test5_workqueue;
  uVar3 = __msecs_to_jiffies((uVar2 % 5) * 1000);
  queue_delayed_work_on(0x20,uVar1,&zlog_test5_work,uVar3);
  return;
}

