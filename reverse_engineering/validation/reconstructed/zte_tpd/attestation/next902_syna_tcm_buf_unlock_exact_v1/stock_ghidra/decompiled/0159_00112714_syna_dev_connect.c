
int syna_dev_connect(long *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  
  lVar5 = *param_1;
  if (lVar5 == 0) {
    _printk(&DAT_00132c98,"syna_dev_connect");
    return -0x16;
  }
  if (*(char *)((long)param_1 + 0x582) == '\x01') {
    puVar3 = &DAT_0013afdc;
LAB_001127b0:
    _printk(puVar3,"syna_dev_connect","synaptics_tcm");
    iVar1 = 0;
  }
  else {
    lVar6 = param_1[0x4e];
    pcVar4 = *(code **)(lVar6 + 0x180);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x11276c);
        (*pcVar4)();
      }
      iVar1 = (*pcVar4)(lVar6,1);
      if (iVar1 < 0) {
        return -0x13;
      }
      if (0 < *(int *)(lVar6 + 0x154)) {
        msleep();
      }
    }
    pcVar4 = *(code **)(lVar6 + 0x188);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x112800);
        (*pcVar4)();
      }
      (*pcVar4)(lVar6);
    }
    iVar1 = syna_tcm_detect_device(*param_1,1,0);
    if (iVar1 < 0) {
      puVar3 = &DAT_00134aa9;
LAB_00112820:
      _printk(puVar3,"syna_dev_connect");
      return iVar1;
    }
    if (*(char *)(lVar5 + 9) == '\x01') {
      iVar1 = syna_dev_set_up_app_fw(param_1);
      if (iVar1 < 0) {
        _printk(&DAT_0013a017,"syna_dev_connect");
        _printk(&DAT_0013d9f3,"syna_dev_connect");
        syna_tcm_switch_fw_mode(lVar5,0xb,*(undefined4 *)(lVar5 + 0x1e8));
      }
      else {
        iVar1 = syna_dev_set_up_input_device(param_1);
        if (iVar1 < 0) {
          puVar3 = &DAT_0013b007;
          goto LAB_00112820;
        }
      }
    }
    else {
      _printk(&DAT_00133858,"syna_dev_connect");
      if ((*(char *)(lVar5 + 9) == '\v') &&
         (iVar1 = syna_tcm_get_boot_info(lVar5,0,0x14), -1 < iVar1)) {
        _printk(&DAT_0013a59d,"syna_dev_connect",*(undefined1 *)(lVar5 + 0xe1));
      }
    }
    iVar1 = syna_tcm_set_report_dispatcher(lVar5,0x10,syna_dev_process_unexpected_reset,param_1);
    if (iVar1 < 0) {
      _printk(&DAT_00132cb7,"syna_dev_connect");
    }
    lVar6 = param_1[0x4e];
    lVar5 = syna_request_managed_device();
    if (lVar5 == 0) {
      iVar1 = -0x16;
      puVar3 = &DAT_0013ccb3;
    }
    else if (*(int *)(lVar6 + 0xa8) < 0) {
      iVar1 = -0x16;
      puVar3 = &DAT_0013a5c4;
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
        _printk(&DAT_00136b08,"syna_dev_request_irq");
        lVar5 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"syna_reflash");
        param_1[0x86] = lVar5;
        param_1[0x79] = 0xfffffffe00000;
        param_1[0x7a] = (long)(param_1 + 0x7a);
        param_1[0x7b] = (long)(param_1 + 0x7a);
        param_1[0x7c] = (long)syna_dev_reflash_startup_work;
        init_timer_key(param_1 + 0x7d,&delayed_work_timer_fn,0x200000,0,0);
        queue_delayed_work_on(0x20,param_1[0x86],param_1 + 0x79,0x32);
        *(undefined4 *)((long)param_1 + 0x57c) = 1;
        *(undefined1 *)((long)param_1 + 0x582) = 1;
        lVar5 = param_1[0x4e];
        _printk(&DAT_0013a04a,"syna_dev_show_info",*(undefined4 *)(*param_1 + 0x38),
                *(undefined4 *)(*param_1 + 0x3c));
        puVar3 = &DAT_0013a5e4;
        if (*(long *)(lVar5 + 0x188) != 0) {
          puVar3 = &DAT_0013650e;
        }
        _printk(&DAT_001357b3,"syna_dev_show_info",&DAT_0013650e,puVar3,&DAT_0013650e);
        puVar3 = &DAT_0013650e;
        if (*(char *)((long)param_1 + 0x581) == '\0') {
          puVar3 = &DAT_0013a5e4;
        }
        _printk(&DAT_0013b062,"syna_dev_show_info",puVar3,&DAT_0013a5e4,&DAT_0013650e);
        puVar3 = &DAT_0013aab0;
        goto LAB_001127b0;
      }
      puVar3 = &DAT_0013c5cc;
    }
    _printk(puVar3,"syna_dev_request_irq");
    _printk(&DAT_0013b658,"syna_dev_connect");
    if (param_1[0x76] != 0) {
      input_unregister_device();
      param_1[0x76] = 0;
    }
  }
  return iVar1;
}

