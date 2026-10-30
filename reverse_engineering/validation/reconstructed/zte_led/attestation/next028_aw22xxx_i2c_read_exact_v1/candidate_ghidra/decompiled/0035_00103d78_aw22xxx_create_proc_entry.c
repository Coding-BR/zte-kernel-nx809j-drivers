
void aw22xxx_create_proc_entry(void)

{
  undefined *puVar1;
  long lVar2;
  
  _printk(&DAT_00109461,"aw22xxx_create_proc_entry");
  lVar2 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  puVar1 = &DAT_00108c4f;
  if (lVar2 != 0) {
    puVar1 = &DAT_00108fa3;
  }
  _printk(puVar1);
  return;
}

