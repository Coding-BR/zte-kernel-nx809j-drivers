
void netlink_init(void)

{
  undefined *puVar1;
  long lVar2;
  undefined8 local_40;
  code *pcStack_38;
  undefined8 local_30;
  undefined8 uStack_28;
  undefined8 local_20;
  long local_18;
  
  lVar2 = sp_el0;
  local_18 = *(long *)(lVar2 + 0x710);
  local_30 = 0;
  uStack_28 = 0;
  local_20 = 0;
  local_40 = 0;
  pcStack_38 = nl_data_ready;
  nl_sk = __netlink_kernel_create(&init_net,0x19,&__this_module,&local_40);
  puVar1 = &DAT_0010367a;
  if (nl_sk != 0) {
    puVar1 = &DAT_001033f6;
  }
  _printk(puVar1,"netlink_init");
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

