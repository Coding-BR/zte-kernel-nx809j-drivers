
void zlog_comm_create_ctrl_dev(void)

{
  undefined *puVar1;
  int iVar2;
  
  DAT_00103fc0 = 0xff;
  DAT_00103fc8 = kstrdup("zlog_comm",0xcc0);
  if (DAT_00103fc8 != 0) {
    DAT_00103fd0 = &zlog_comm_fops;
    DAT_00103fe8 = 0;
    iVar2 = misc_register(&DAT_00103fc0);
    puVar1 = &DAT_00101a8a;
    if (iVar2 != 0) {
      puVar1 = &DAT_001018d1;
    }
    _printk(puVar1,"zlog_comm_create_ctrl_dev",DAT_00103fc8);
  }
  return;
}

