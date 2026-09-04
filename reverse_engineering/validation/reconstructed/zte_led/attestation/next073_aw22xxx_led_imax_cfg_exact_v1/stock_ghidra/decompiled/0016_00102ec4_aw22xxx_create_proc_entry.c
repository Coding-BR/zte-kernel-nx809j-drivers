
void aw22xxx_create_proc_entry(void)

{
  long lVar1;
  
  lVar1 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  if (lVar1 == 0) {
    _printk(&DAT_0010da2e);
  }
  else {
    _printk(&DAT_0010e33a,"aw22xxx_create_proc_entry",0x9c3);
  }
  return;
}

