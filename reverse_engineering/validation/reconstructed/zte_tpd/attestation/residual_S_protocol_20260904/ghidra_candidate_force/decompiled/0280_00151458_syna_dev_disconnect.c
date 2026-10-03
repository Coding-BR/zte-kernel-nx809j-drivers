
void syna_dev_disconnect(long param_1)

{
  long lVar1;
  undefined *puVar2;
  undefined1 *puVar3;
  int iVar4;
  code *pcVar5;
  long lVar6;
  long lVar7;
  
  if (*(char *)(param_1 + 0x582) == '\0') {
    puVar3 = &DAT_00169cdc;
  }
  else {
    lVar6 = *(long *)(param_1 + 0x270);
    if (*(int *)(param_1 + 0x57c) == 3) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f246,"syna_dev_disconnect");
    }
    if (*(long *)(param_1 + 0x430) != 0) {
      cancel_delayed_work_sync(param_1 + 0x3c8);
      __flush_workqueue(*(undefined8 *)(param_1 + 0x430));
      destroy_workqueue(*(undefined8 *)(param_1 + 0x430));
      *(undefined8 *)(param_1 + 0x430) = 0;
    }
    if (*(int *)(lVar6 + 0xb8) != 0) {
      lVar7 = *(long *)(param_1 + 0x270);
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
        puVar2 = &DAT_00171996;
LAB_00151554:
                    /* WARNING: Subroutine does not return */
        _printk(puVar2,"syna_dev_release_irq");
      }
      iVar4 = *(int *)(lVar7 + 0xb8);
      if (0 < iVar4) {
        pcVar5 = *(code **)(lVar7 + 0x40);
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(pcVar5 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x151530);
            (*pcVar5)();
          }
          (*pcVar5)(lVar7 + 8,0);
          iVar4 = *(int *)(lVar7 + 0xb8);
        }
        devm_free_irq(lVar1,iVar4,param_1);
        puVar2 = &DAT_0016b6ac;
        *(undefined4 *)(lVar7 + 0xb8) = 0;
        *(undefined1 *)(lVar7 + 0xbc) = 0;
        goto LAB_00151554;
      }
    }
    if (*(long *)(param_1 + 0x3b0) != 0) {
      input_unregister_device();
      *(undefined8 *)(param_1 + 0x3b0) = 0;
    }
    *(undefined8 *)(param_1 + 0x3b8) = 0;
    *(undefined4 *)(param_1 + 0x3c0) = 0;
    pcVar5 = *(code **)(lVar6 + 0x180);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x1515a0);
        (*pcVar5)();
      }
      (*pcVar5)(lVar6,0);
    }
    puVar3 = &DAT_0016b686;
    *(undefined4 *)(param_1 + 0x57c) = 0;
    *(undefined1 *)(param_1 + 0x582) = 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_dev_disconnect","synaptics_tcm");
}

