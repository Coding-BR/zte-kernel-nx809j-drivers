
undefined8 syna_dev_disconnect(long param_1)

{
  long lVar1;
  undefined *puVar2;
  int iVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  
  if (*(char *)(param_1 + 0x582) == '\0') {
    puVar2 = &DAT_001351e7;
    goto LAB_00112c60;
  }
  lVar5 = *(long *)(param_1 + 0x270);
  if (*(int *)(param_1 + 0x57c) == 3) {
    _printk(&DAT_0013a5e7,"syna_dev_disconnect");
    pcVar4 = *(code **)(lVar5 + 0x180);
  }
  else {
    if (*(long *)(param_1 + 0x430) != 0) {
      cancel_delayed_work_sync(param_1 + 0x3c8);
      __flush_workqueue(*(undefined8 *)(param_1 + 0x430));
      destroy_workqueue(*(undefined8 *)(param_1 + 0x430));
      *(undefined8 *)(param_1 + 0x430) = 0;
    }
    if (*(int *)(lVar5 + 0xb8) != 0) {
      lVar6 = *(long *)(param_1 + 0x270);
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
        puVar2 = &DAT_0013ccb3;
      }
      else {
        iVar3 = *(int *)(lVar6 + 0xb8);
        if (iVar3 < 1) goto LAB_00112c0c;
        pcVar4 = *(code **)(lVar6 + 0x40);
        if (pcVar4 != (code *)0x0) {
          if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x112bdc);
            (*pcVar4)();
          }
          (*pcVar4)(lVar6 + 8,0);
          iVar3 = *(int *)(lVar6 + 0xb8);
        }
        devm_free_irq(lVar1,iVar3,param_1);
        puVar2 = &DAT_00136b5a;
        *(undefined4 *)(lVar6 + 0xb8) = 0;
        *(undefined1 *)(lVar6 + 0xbc) = 0;
      }
      _printk(puVar2,"syna_dev_release_irq");
    }
LAB_00112c0c:
    if (*(long *)(param_1 + 0x3b0) != 0) {
      input_unregister_device();
      *(undefined8 *)(param_1 + 0x3b0) = 0;
    }
    *(undefined8 *)(param_1 + 0x3b8) = 0;
    *(undefined4 *)(param_1 + 0x3c0) = 0;
    pcVar4 = *(code **)(lVar5 + 0x180);
  }
  if (pcVar4 != (code *)0x0) {
    if (*(int *)(pcVar4 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x112c4c);
      (*pcVar4)();
    }
    (*pcVar4)(lVar5,0);
  }
  puVar2 = &DAT_00136b34;
  *(undefined4 *)(param_1 + 0x57c) = 0;
  *(undefined1 *)(param_1 + 0x582) = 0;
LAB_00112c60:
  _printk(puVar2,"syna_dev_disconnect","synaptics_tcm");
  return 0;
}

