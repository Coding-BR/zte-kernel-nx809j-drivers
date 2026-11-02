
void tp_ghost_check_work(void)

{
  long lVar1;
  ulong uVar2;
  int iVar3;
  code *pcVar4;
  
  lVar1 = tpd_cdev;
  uVar2 = tp_ghost_check();
  if ((uVar2 & 1) != 0) {
    _printk(&DAT_0013c444);
    iVar3 = *(int *)(lVar1 + 0x4a8);
    if (iVar3 < 3) {
      pcVar4 = *(code **)(lVar1 + 0xff0);
      if (pcVar4 != (code *)0x0) {
        if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x108720);
          (*pcVar4)();
        }
        (*pcVar4)(lVar1);
        _printk(&DAT_001392e6,*(int *)(lVar1 + 0x4a8) + 1);
        iVar3 = *(int *)(lVar1 + 0x4a8);
      }
      *(int *)(lVar1 + 0x4a8) = iVar3 + 1;
    }
    else {
      _printk(&DAT_001374c9);
    }
  }
  ghost_check_reset();
  *(undefined1 *)(lVar1 + 0x488) = 0;
  return;
}

