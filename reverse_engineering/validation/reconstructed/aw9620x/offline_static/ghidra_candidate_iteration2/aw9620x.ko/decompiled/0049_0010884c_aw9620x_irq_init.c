
undefined4 aw9620x_irq_init(long param_1)

{
  long lVar1;
  undefined4 uVar2;
  int iVar3;
  char local_58 [32];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_irq_init",
              0xaac);
  snprintf(local_58,0x1e,"aw_sar%u_irq",(ulong)*(uint *)(param_1 + 8));
  if (*(int *)(param_1 + 0xc) < 0) {
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] irq gpio invalid!\n",
                "aw9620x_irq_init",0xad2);
    uVar2 = 0xffffffff;
    goto LAB_00108a70;
  }
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] gpio_is_valid-sar%d\n",
              "aw9620x_irq_init",0xab2,*(undefined4 *)(param_1 + 8));
  gpio_to_desc(*(undefined4 *)(param_1 + 0xc));
  uVar2 = gpiod_to_irq();
  *(undefined4 *)(param_1 + 0x1c) = uVar2;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] gpio_to_irq-sar%d\n",
              "aw9620x_irq_init",0xab4,*(undefined4 *)(param_1 + 8));
  iVar3 = devm_gpio_request_one
                    (*(undefined8 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0xc),3,local_58);
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] devm_gpio_request_one-sar%d\n",
              "aw9620x_irq_init",0xab9,*(undefined4 *)(param_1 + 8));
  if (iVar3 == 0) {
    iVar3 = devm_request_threaded_irq
                      (*(undefined8 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0x1c),0,aw9620x_irq
                       ,0x2002,"aw9620x_irq",param_1);
    if (iVar3 != 0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to request IRQ %d: %d\n","aw9620x_irq_init",0xac9,
                  *(undefined4 *)(param_1 + 0x1c),iVar3);
      goto LAB_00108a38;
    }
    _dev_printk(&DAT_0010d22b,*(undefined8 *)(param_1 + 0x30),"[%s:%d] IRQ request successfully!\n",
                "aw9620x_irq_init",0xacd);
    uVar2 = 0;
  }
  else {
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] request irq gpio failed, ret = %d\n","aw9620x_irq_init",0xabc,iVar3);
LAB_00108a38:
    uVar2 = 0xffffffff;
  }
  _dev_printk(&DAT_0010d22b,*(undefined8 *)(param_1 + 0x30),"[%s:%d] disable_irq\n",
              "aw9620x_irq_init",0xad6);
  disable_irq(*(undefined4 *)(param_1 + 0x1c));
  *(undefined1 *)(param_1 + 5) = 1;
LAB_00108a70:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return uVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

