
void zlog_test4_thread(void)

{
  undefined8 uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar2 = get_random_u32();
  zlog_client_record(client_4,"Kaka is an amazing palyer\n");
  zlog_client_record(client_4,"Ronaldo is an amazing palyer\n");
  zlog_client_record(client_4,"Ronney is an amazing palyer\n");
  zlog_client_record(client_4,"Henny is an amazing palyer\n");
  zlog_client_record(client_4,"Veri is an amazing palyer\n");
  zlog_client_notify(client_4,5);
  _printk(&DAT_001014b4,"zlog_test4_thread",client_4 + 4);
  uVar1 = zlog_test4_workqueue;
  uVar3 = __msecs_to_jiffies((uVar2 % 5) * 1000);
  queue_delayed_work_on(0x20,uVar1,&zlog_test4_work,uVar3);
  return;
}

