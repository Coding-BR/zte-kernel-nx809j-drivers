
void syna_dev_helper_work(long param_1)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  char cVar4;
  long *plVar5;
  
  if ((*(uint *)(param_1 + -8) & 0xff) == 1) {
    plVar5 = (long *)(param_1 + -0x528);
    lVar3 = *plVar5;
    cVar4 = *(char *)(lVar3 + 9);
    if (cVar4 == '\v') {
      iVar2 = syna_tcm_get_boot_info(lVar3,0,0x14);
      if (-1 < iVar2) {
        _printk(&DAT_00136549,"syna_dev_helper_work",*(undefined1 *)(*plVar5 + 0xe1),
                *(undefined1 *)(*plVar5 + 0xe9));
      }
      lVar3 = *plVar5;
      cVar4 = *(char *)(lVar3 + 9);
      if (cVar4 == '\v') {
        queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -0xf8),param_1 + -0x160,0x19);
        lVar3 = *plVar5;
        cVar4 = *(char *)(lVar3 + 9);
      }
    }
    if (cVar4 == '\x01') {
      if (*(short *)(lVar3 + 0xb2) == 0) {
        _printk(&DAT_00135260,"syna_dev_helper_work");
        if (*(int *)(*(code **)(param_1 + 400) + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x11365c);
          (*pcVar1)();
        }
        (**(code **)(param_1 + 400))(plVar5);
      }
      else {
        _printk(&DAT_0013392d,"syna_dev_helper_work");
        if (*(char *)(*plVar5 + 9) == '\v') {
          queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -0xf8),param_1 + -0x160,0x19);
        }
      }
    }
  }
  *(undefined4 *)(param_1 + -8) = 0;
  return;
}

