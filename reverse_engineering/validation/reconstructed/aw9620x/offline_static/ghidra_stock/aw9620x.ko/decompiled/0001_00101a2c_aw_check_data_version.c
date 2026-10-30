
undefined8 aw_check_data_version(long param_1,uint param_2)

{
  code *pcVar1;
  undefined8 uVar2;
  
  _printk(&DAT_0010d838,"aw_check_data_version",0x86);
  if (param_2 < 100) {
    if (*(int *)(param_1 + (ulong)param_2 * 0x54 + 0x24) == 1) {
      uVar2 = 0;
    }
    else {
      _printk(&DAT_0010de1c,"aw_check_data_version",0x8c);
      uVar2 = 0xfffffffc;
    }
    return uVar2;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x101ab0);
  (*pcVar1)();
}

