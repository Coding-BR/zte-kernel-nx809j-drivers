
int zte_touch_pdev_register(void)

{
  long lVar1;
  int iVar2;
  long lVar3;
  code *pcVar4;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_0013879a,"zte_touch_pdev_register");
  lVar3 = platform_device_alloc("zte_touch",0xffffffff);
  *(long *)(lVar1 + 0xdd0) = lVar3;
  if (lVar3 == 0) {
    _printk(&DAT_00132af5,"zte_touch_pdev_register");
    pcVar4 = (code *)0x0;
    iVar2 = -0xc;
  }
  else {
    iVar2 = platform_device_add();
    if (iVar2 < 0) {
      _printk(&DAT_0013bccc,"zte_touch_pdev_register",iVar2);
      pcVar4 = *(code **)(*(long *)(lVar1 + 0xdd0) + 0x338);
      if (*(int *)(pcVar4 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x108298);
        (*pcVar4)();
      }
      (*pcVar4)(*(long *)(lVar1 + 0xdd0) + 0x10);
      pcVar4 = (code *)0x0;
    }
    else {
      iVar2 = 0;
      pcVar4 = tpd_report_uevent;
    }
  }
  *(code **)(lVar1 + 0xea0) = pcVar4;
  return iVar2;
}

