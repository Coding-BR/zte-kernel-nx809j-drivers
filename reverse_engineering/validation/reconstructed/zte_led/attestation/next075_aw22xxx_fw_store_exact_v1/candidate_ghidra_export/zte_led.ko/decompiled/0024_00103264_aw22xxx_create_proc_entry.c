
void aw22xxx_create_proc_entry(void)

{
  long lVar1;
  
  lVar1 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00106ef2);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001077fe,"aw22xxx_create_proc_entry",0x9c3);
}

