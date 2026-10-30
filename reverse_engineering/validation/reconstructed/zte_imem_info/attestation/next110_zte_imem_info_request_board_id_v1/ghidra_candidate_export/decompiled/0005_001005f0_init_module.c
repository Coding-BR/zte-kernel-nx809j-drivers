
undefined8 init_module(void)

{
  long lVar1;
  
  lVar1 = proc_mkdir("vendor_imem",0);
  if (lVar1 != 0) {
    lVar1 = proc_create("vendor_imem/ddr_id",0x124,0,ddr_id_proc_fops);
    if (lVar1 != 0) {
      lVar1 = proc_create("vendor_imem/board_id",0x124,0,board_id_proc_fops);
      if (lVar1 != 0) {
        lVar1 = proc_create("driver/ddr_id",0x124,0,ddr_id_proc_fops);
        if (lVar1 != 0) {
          lVar1 = proc_create("driver/board_id",0x124,0,board_id_proc_fops);
          if (lVar1 != 0) {
            return 0;
          }
          remove_proc_entry("driver/ddr_id",0);
        }
        remove_proc_entry("vendor_imem/board_id",0);
      }
      remove_proc_entry("vendor_imem/ddr_id",0);
    }
    remove_proc_entry("vendor_imem",0);
  }
  return 0;
}

