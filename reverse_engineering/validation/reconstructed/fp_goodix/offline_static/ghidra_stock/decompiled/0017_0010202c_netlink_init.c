
void netlink_init(void)

{
  bool bVar1;
  long lVar2;
  undefined8 local_40;
  code *local_38;
  undefined8 uStack_30;
  undefined8 local_28;
  undefined8 uStack_20;
  long local_18;
  
  lVar2 = sp_el0;
  local_18 = *(long *)(lVar2 + 0x710);
  local_28 = 0;
  uStack_20 = 0;
  local_40 = 0;
  local_38 = nl_data_ready;
  uStack_30 = 0;
  nl_sk = __netlink_kernel_create(&init_net,0x19,&__this_module,&local_40);
  bVar1 = nl_sk == 0;
  if (bVar1) {
    _printk(&DAT_0010327d);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_18) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(bVar1);
  }
  return;
}

