
void zlog_comm_create_ctrl_dev(void)

{
  undefined *puVar1;
  int iVar2;
  
  DAT_00103928 = 0xff;
  DAT_00103930 = kstrdup("zlog_comm",0xcc0);
  if (DAT_00103930 != 0) {
    DAT_00103938 = &zlog_comm_fops;
    DAT_00103950 = 0;
    iVar2 = misc_register(&DAT_00103928);
    puVar1 = &DAT_00103f88;
    if (iVar2 != 0) {
      puVar1 = &DAT_00103a63;
    }
    _printk(puVar1,"zlog_comm_create_ctrl_dev",DAT_00103930);
  }
  return;
}

