
undefined8 tp_self_test_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  code *pcVar3;
  
  lVar1 = tpd_cdev;
  iVar2 = tp_alloc_tp_firmware_data(0x100000);
  if (iVar2 == 0) {
    pcVar3 = *(code **)(lVar1 + 4000);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c0e8);
        (*pcVar3)();
      }
      (*pcVar3)(lVar1);
    }
    lVar1 = tpd_cdev;
    **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
    *(undefined4 *)(lVar1 + 0x448) = 0;
  }
  else {
    _printk(&DAT_00165bfd);
    param_3 = 0xfffffffffffffff4;
  }
  return param_3;
}

