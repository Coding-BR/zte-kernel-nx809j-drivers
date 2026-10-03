
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_pdev_unregister(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  if (*(long *)(tpd_cdev + 0xdd0) == 0) {
    if (*(int *)(_DAT_00000338 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1083f8);
      (*pcVar2)();
    }
    (*_DAT_00000338)(0x10);
    platform_device_unregister(*(undefined8 *)(lVar1 + 0xdd0));
  }
  return;
}

