
int syna_tcm_switch_fw_mode(long param_1,char param_2,uint param_3)

{
  code *pcVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined *puVar4;
  char *pcVar5;
  uint uVar6;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00133fd6;
LAB_001227bc:
    _printk(puVar3,"syna_tcm_switch_fw_mode");
    iVar2 = -0xf1;
  }
  else {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        uVar6 = *(uint *)(param_1 + 0x1e8);
        _printk(&DAT_0013ba9e,"syna_tcm_switch_fw_mode");
      }
      else {
        uVar6 = 0;
      }
    }
    else {
      uVar6 = *(uint *)(param_1 + 0x1e8);
      if (*(uint *)(param_1 + 0x1e8) <= param_3) {
        uVar6 = param_3;
      }
    }
    if (param_2 == '\v') {
      if (*(char *)(param_1 + 9) == '\v') {
LAB_0012276c:
        pcVar1 = *(code **)(param_1 + 0x3b0);
joined_r0x00122770:
        if (pcVar1 != (code *)0x0) {
          if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
            pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12278c);
            (*pcVar1)();
          }
          (*pcVar1)();
        }
        return 0;
      }
      if (uVar6 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          uVar6 = *(uint *)(param_1 + 0x1e8);
          _printk(&DAT_0013c851,"syna_tcm_run_bootloader_fw");
        }
        else {
          uVar6 = 0;
        }
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122938);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x1f,0,0,0,uVar6);
      if (iVar2 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_run_bootloader_fw",0x1f);
      }
      else {
        if (*(char *)(param_1 + 9) == '\v') {
          puVar4 = &DAT_0013d5f7;
          pcVar5 = "syna_tcm_run_bootloader_fw";
LAB_0012297c:
          _printk(puVar4,pcVar5);
          pcVar1 = *(code **)(param_1 + 0x3b0);
          goto joined_r0x00122770;
        }
        _printk(&DAT_00139120,"syna_tcm_run_bootloader_fw");
        iVar2 = -0xf2;
      }
      puVar4 = &DAT_00136e18;
    }
    else {
      if (param_2 != '\x01') {
        puVar3 = &DAT_001377de;
        goto LAB_001227bc;
      }
      if (*(char *)(param_1 + 9) == '\x01') goto LAB_0012276c;
      if (uVar6 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          uVar6 = *(uint *)(param_1 + 0x1e8);
          _printk(&DAT_0013c851,"syna_tcm_run_application_fw");
        }
        else {
          uVar6 = 0;
        }
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122874);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x14,0,0,0,uVar6);
      if (iVar2 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_run_application_fw",0x14);
      }
      else {
        if (*(char *)(param_1 + 9) == '\x01') {
          puVar4 = &DAT_0013baf8;
          pcVar5 = "syna_tcm_run_application_fw";
          goto LAB_0012297c;
        }
        _printk(&DAT_00135af7,"syna_tcm_run_application_fw");
        iVar2 = -0xf2;
      }
      puVar4 = &DAT_0013c163;
    }
    _printk(puVar4,"syna_tcm_switch_fw_mode");
  }
  return iVar2;
}

