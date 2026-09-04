
void syna_dev_helper_work(long param_1)

{
  int iVar1;
  long lVar2;
  char cVar3;
  long *plVar4;
  
  if ((*(uint *)(param_1 + -8) & 0xff) == 1) {
    plVar4 = (long *)(param_1 + -0x528);
    lVar2 = *plVar4;
    cVar3 = *(char *)(lVar2 + 9);
    if (cVar3 == '\v') {
      iVar1 = syna_tcm_get_boot_info(lVar2,0,0x14);
      if (-1 < iVar1) {
        _printk(&DAT_0017fb10,"syna_dev_helper_work",*(undefined1 *)(*plVar4 + 0xe1),
                *(undefined1 *)(*plVar4 + 0xe9));
        return;
      }
      lVar2 = *plVar4;
      cVar3 = *(char *)(lVar2 + 9);
      if (cVar3 == '\v') {
        queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -0xf8),param_1 + -0x160,0x19);
        lVar2 = *plVar4;
        cVar3 = *(char *)(lVar2 + 9);
      }
    }
    if (cVar3 == '\x01') {
      if (*(short *)(lVar2 + 0xb2) == 0) {
        _printk(&DAT_0017f2e4,"syna_dev_helper_work");
        return;
      }
      _printk(&DAT_0017e710,"syna_dev_helper_work");
      return;
    }
  }
  *(undefined4 *)(param_1 + -8) = 0;
  return;
}

