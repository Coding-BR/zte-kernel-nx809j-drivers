
undefined8 syna_dev_connect(long *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  
  lVar5 = *param_1;
  if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e341,"syna_dev_connect");
  }
  if (*(char *)((long)param_1 + 0x582) == '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181e70,"syna_dev_connect","synaptics_tcm");
  }
  lVar6 = param_1[0x4e];
  pcVar4 = *(code **)(lVar6 + 0x180);
  if (pcVar4 != (code *)0x0) {
    if (*(int *)(pcVar4 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x153c2c);
      (*pcVar4)();
    }
    iVar1 = (*pcVar4)(lVar6,1);
    if (iVar1 < 0) {
      return 0xffffffed;
    }
    if (0 < *(int *)(lVar6 + 0x154)) {
      msleep();
    }
  }
  pcVar4 = *(code **)(lVar6 + 0x188);
  if (pcVar4 != (code *)0x0) {
    if (*(int *)(pcVar4 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x153cc0);
      (*pcVar4)();
    }
    (*pcVar4)(lVar6);
  }
  iVar1 = syna_tcm_detect_device(*param_1,1,0);
  if (iVar1 < 0) {
    puVar3 = &DAT_0017f127;
  }
  else {
    if (*(char *)(lVar5 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e74e,"syna_dev_connect");
    }
    iVar1 = FUN_001431f8(param_1);
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00181753,"syna_dev_connect");
    }
    iVar1 = FUN_0013fd88(param_1);
    if (-1 < iVar1) {
      iVar1 = syna_tcm_set_report_dispatcher(lVar5,0x10,syna_dev_process_unexpected_reset,param_1);
      if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e360,"syna_dev_connect");
      }
      lVar6 = param_1[0x4e];
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        puVar3 = &DAT_001828ba;
      }
      else if (*(int *)(lVar6 + 0xa8) < 0) {
        puVar3 = &DAT_00181a48;
      }
      else {
        gpio_to_desc(*(int *)(lVar6 + 0xa8));
        uVar2 = gpiod_to_irq();
        *(undefined4 *)(lVar6 + 0xb8) = uVar2;
        iVar1 = devm_request_threaded_irq
                          (lVar5,uVar2,0,syna_dev_isr,*(undefined8 *)(lVar6 + 0xb0),"synaptics_tcm",
                           param_1);
        if (-1 < iVar1) {
          *(undefined1 *)(lVar6 + 0xbc) = 1;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0017ffc1,"syna_dev_request_irq");
        }
        puVar3 = &DAT_001827e5;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar3,"syna_dev_request_irq");
    }
    puVar3 = &DAT_00181e9b;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_dev_connect");
}

