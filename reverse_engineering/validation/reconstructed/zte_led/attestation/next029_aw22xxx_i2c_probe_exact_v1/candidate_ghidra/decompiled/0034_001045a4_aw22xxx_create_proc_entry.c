
undefined4 aw22xxx_create_proc_entry(void)

{
  undefined *puVar1;
  long lVar2;
  undefined4 uVar3;
  
  _printk(&DAT_0010920d,"aw22xxx_create_proc_entry");
  lVar2 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  puVar1 = &DAT_00108b18;
  if (lVar2 != 0) {
    puVar1 = &DAT_00108dd2;
  }
  uVar3 = 0xfffffff4;
  if (lVar2 != 0) {
    uVar3 = 0;
  }
  _printk(puVar1);
  return uVar3;
}

