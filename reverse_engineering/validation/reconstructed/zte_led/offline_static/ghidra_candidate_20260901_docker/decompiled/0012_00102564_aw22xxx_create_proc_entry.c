
void aw22xxx_create_proc_entry(void)

{
  undefined *puVar1;
  long lVar2;
  
  _printk(&DAT_00107424,"aw22xxx_create_proc_entry");
  lVar2 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  puVar1 = &DAT_001068d7;
  if (lVar2 != 0) {
    puVar1 = &DAT_00106d76;
  }
  _printk(puVar1);
  return;
}

