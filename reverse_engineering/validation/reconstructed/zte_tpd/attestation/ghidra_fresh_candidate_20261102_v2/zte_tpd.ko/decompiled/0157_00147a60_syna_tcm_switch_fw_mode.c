
undefined8 syna_tcm_switch_fw_mode(long param_1,char param_2,uint param_3)

{
  code *pcVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined *puVar4;
  char *pcVar5;
  uint uVar6;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00168a84;
LAB_00147b30:
                    /* WARNING: Subroutine does not return */
    _printk(puVar3,"syna_tcm_switch_fw_mode");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017074a,"syna_tcm_switch_fw_mode");
    }
    uVar6 = 0;
  }
  else {
    uVar6 = *(uint *)(param_1 + 0x1e8);
    if (*(uint *)(param_1 + 0x1e8) <= param_3) {
      uVar6 = param_3;
    }
  }
  if (param_2 == '\v') {
    if (*(char *)(param_1 + 9) == '\v') {
LAB_00147ae0:
      pcVar1 = *(code **)(param_1 + 0x3b0);
      if (pcVar1 != (code *)0x0) {
        if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147b00);
          (*pcVar1)();
        }
        (*pcVar1)();
      }
      return 0;
    }
    if (uVar6 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171524,"syna_tcm_run_bootloader_fw");
      }
      uVar6 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147cac);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x1f,0,0,0,uVar6);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f442,"syna_tcm_run_bootloader_fw",0x1f);
    }
    if (*(char *)(param_1 + 9) != '\v') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016dd26,"syna_tcm_run_bootloader_fw");
    }
    puVar4 = &DAT_001722f6;
    pcVar5 = "syna_tcm_run_bootloader_fw";
  }
  else {
    if (param_2 != '\x01') {
      puVar3 = &DAT_0016c356;
      goto LAB_00147b30;
    }
    if (*(char *)(param_1 + 9) == '\x01') goto LAB_00147ae0;
    if (uVar6 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171524,"syna_tcm_run_application_fw");
      }
      uVar6 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147be8);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x14,0,0,0,uVar6);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f442,"syna_tcm_run_application_fw",0x14);
    }
    if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016a60c,"syna_tcm_run_application_fw");
    }
    puVar4 = &DAT_001707a4;
    pcVar5 = "syna_tcm_run_application_fw";
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,pcVar5);
}

