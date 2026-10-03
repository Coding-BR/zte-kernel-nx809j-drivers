
undefined8 syna_dev_connect(long *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined *puVar4;
  code *pcVar5;
  long lVar6;
  long lVar7;
  
  lVar6 = *param_1;
  if (lVar6 == 0) {
    uVar3 = _printk(&DAT_0017e341,"syna_dev_connect");
    return uVar3;
  }
  if (*(char *)((long)param_1 + 0x582) == '\x01') {
    uVar3 = _printk(&DAT_00181e70,"syna_dev_connect","synaptics_tcm");
    return uVar3;
  }
  lVar7 = param_1[0x4e];
  pcVar5 = *(code **)(lVar7 + 0x180);
  if (pcVar5 != (code *)0x0) {
    if (*(int *)(pcVar5 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x153c2c);
      (*pcVar5)();
    }
    iVar1 = (*pcVar5)(lVar7,1);
    if (iVar1 < 0) {
      return 0xffffffed;
    }
    if (0 < *(int *)(lVar7 + 0x154)) {
      msleep();
    }
  }
  pcVar5 = *(code **)(lVar7 + 0x188);
  if (pcVar5 != (code *)0x0) {
    if (*(int *)(pcVar5 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x153cc0);
      (*pcVar5)();
    }
    (*pcVar5)(lVar7);
  }
  iVar1 = syna_tcm_detect_device(*param_1,1,0);
  if (iVar1 < 0) {
    puVar4 = &DAT_0017f127;
  }
  else {
    if (*(char *)(lVar6 + 9) != '\x01') {
      uVar3 = _printk(&DAT_0017e74e,"syna_dev_connect");
      return uVar3;
    }
    iVar1 = FUN_001431f8(param_1);
    if (iVar1 < 0) {
      uVar3 = _printk(&DAT_00181753,"syna_dev_connect");
      return uVar3;
    }
    iVar1 = FUN_0013fd88(param_1);
    if (-1 < iVar1) {
      iVar1 = syna_tcm_set_report_dispatcher(lVar6,0x10,syna_dev_process_unexpected_reset,param_1);
      if (iVar1 < 0) {
        uVar3 = _printk(&DAT_0017e360,"syna_dev_connect");
        return uVar3;
      }
      lVar7 = param_1[0x4e];
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        puVar4 = &DAT_001828ba;
      }
      else if (*(int *)(lVar7 + 0xa8) < 0) {
        puVar4 = &DAT_00181a48;
      }
      else {
        gpio_to_desc(*(int *)(lVar7 + 0xa8));
        uVar2 = gpiod_to_irq();
        *(undefined4 *)(lVar7 + 0xb8) = uVar2;
        iVar1 = devm_request_threaded_irq
                          (lVar6,uVar2,0,syna_dev_isr,*(undefined8 *)(lVar7 + 0xb0),"synaptics_tcm",
                           param_1);
        if (-1 < iVar1) {
          *(undefined1 *)(lVar7 + 0xbc) = 1;
          uVar3 = _printk(&DAT_0017ffc1,"syna_dev_request_irq");
          return uVar3;
        }
        puVar4 = &DAT_001827e5;
      }
      uVar3 = _printk(puVar4,"syna_dev_request_irq");
      return uVar3;
    }
    puVar4 = &DAT_00181e9b;
  }
  uVar3 = _printk(puVar4,"syna_dev_connect");
  return uVar3;
}

