
void FUN_00134e78(ulong param_1)

{
  code *pcVar1;
  int iVar2;
  undefined1 in_w9;
  long unaff_x19;
  long unaff_x20;
  
  do {
    if (param_1 == 0x10) {
      *(long *)(unaff_x19 + 0x20) = unaff_x20 + 0xe0;
      iVar2 = syna_tcm_get_boot_info();
      if (iVar2 < 0) {
        FUN_00134e00(&UNK_0016ba12);
        return;
      }
      _printk(&DAT_0016ad24,"syna_tcm_set_up_flash_access",**(undefined1 **)(unaff_x19 + 0x20));
      return;
    }
    if (*(char *)(unaff_x20 + param_1 + 0x82) == ':') {
      if (0xc < param_1) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x135050);
        (*pcVar1)();
      }
      if ((*(byte *)(unaff_x20 + param_1 + 0x85) >> 5 & 1) != 0) {
        *(undefined1 *)(unaff_x19 + 0x88) = in_w9;
        FUN_00134e74();
        return;
      }
    }
    param_1 = param_1 + 1;
  } while( true );
}

