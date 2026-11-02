
ulong irq_config(undefined8 param_1,long param_2)

{
  undefined4 uVar1;
  ulong uVar2;
  code *pcVar3;
  
  if ((*(int *)(param_2 + 0x50) < 0) || ((*(byte *)(param_2 + 0x15) & 1) != 0)) {
    _dev_info(param_1,"skipping IRQ registration");
    uVar2 = 0;
    *(byte *)(param_2 + 0x15) = *(byte *)(param_2 + 0x15) | 1;
  }
  else {
    pcVar3 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x108);
    if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1083b4);
      (*pcVar3)();
    }
    (*pcVar3)(param_2);
    gpio_to_desc(*(undefined4 *)(param_2 + 0x50));
    uVar1 = gpiod_to_irq();
    uVar2 = devm_request_threaded_irq(param_1,uVar1,0,irq_handle,0x2002,"aw_haptic",param_2);
    if ((int)uVar2 != 0) {
      uVar2 = uVar2 & 0xffffffff;
      gpio_to_desc(*(undefined4 *)(param_2 + 0x50));
      uVar1 = gpiod_to_irq();
      _printk(&DAT_001113e2,"haptic_hv",0x6ce,"irq_config",uVar1,uVar2);
    }
  }
  return uVar2;
}

