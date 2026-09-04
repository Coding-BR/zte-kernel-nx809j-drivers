
void syna_tcm_set_up_flash_access(long param_1,long param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined *puVar5;
  ulong uVar6;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_48 = 0;
  uStack_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  if (param_2 == 0) {
    _printk(&DAT_00134898,"syna_tcm_set_up_flash_access");
    iVar4 = -0xf1;
    goto LAB_00124720;
  }
  _printk(&DAT_0013975d,"syna_tcm_set_up_flash_access");
  iVar4 = syna_tcm_identify(param_1,&local_68,param_3);
  if (iVar4 < 0) {
    puVar5 = &DAT_0013c91e;
LAB_00124574:
    _printk(puVar5,"syna_tcm_set_up_flash_access");
    goto LAB_00124720;
  }
  if (local_68._1_1_ == '\x01') {
    _printk(&DAT_00137e3c,"syna_tcm_set_up_flash_access");
    iVar4 = syna_tcm_switch_fw_mode(param_1,0xb,param_4);
    if (iVar4 < 0) {
      puVar5 = &DAT_0013c239;
      goto LAB_00124574;
    }
  }
  if (*(char *)(param_1 + 9) != '\v') {
    _printk(&DAT_001361ba,"syna_tcm_set_up_flash_access");
    goto LAB_00124720;
  }
  uVar6 = 0;
  do {
    if (*(char *)(param_1 + uVar6 + 0x82) == ':') {
      if (0xc < uVar6) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x1247c4);
        (*pcVar3)();
      }
      if ((*(byte *)(param_1 + uVar6 + 0x85) >> 5 & 1) != 0) {
        *(undefined1 *)(param_2 + 0x88) = 1;
      }
    }
    uVar6 = uVar6 + 1;
  } while (uVar6 != 0x10);
  *(long *)(param_2 + 0x20) = param_1 + 0xe0;
  iVar4 = syna_tcm_get_boot_info(param_1,param_1 + 0xe0,param_3);
  if (iVar4 < 0) {
    puVar5 = &DAT_00136eb6;
    goto LAB_00124574;
  }
  _printk(&DAT_001361f7,"syna_tcm_set_up_flash_access",**(undefined1 **)(param_2 + 0x20));
  uVar1 = *(uint *)(param_1 + 0x38);
  *(uint *)(param_2 + 0x2c) = (uint)*(byte *)(*(long *)(param_2 + 0x20) + 4) << 1;
  _printk(&DAT_0013d012,"syna_tcm_set_up_flash_access");
  *(uint *)(param_2 + 0x28) = (uint)*(ushort *)(*(long *)(param_2 + 0x20) + 5) << 1;
  _printk(&DAT_001334e5,"syna_tcm_set_up_flash_access");
  *(uint *)(param_2 + 0x30) = (uint)*(ushort *)(*(long *)(param_2 + 0x20) + 7);
  _printk(&DAT_0013859a,"syna_tcm_set_up_flash_access");
  if ((uVar1 == 0) || (*(uint *)(param_2 + 0x2c) <= uVar1)) {
    if (*(uint *)(param_2 + 0x2c) != 0) goto LAB_00124704;
    puVar5 = &DAT_0013bb74;
  }
  else {
    *(uint *)(param_2 + 0x2c) = uVar1;
LAB_00124704:
    if (*(int *)(param_2 + 0x28) != 0) {
      if (**(char **)(param_2 + 0x20) == '\x03') {
        iVar4 = *(int *)(param_2 + 0x28) * (uint)(byte)(*(char **)(param_2 + 0x20))[0x14];
        *(int *)(param_2 + 0x3c) = iVar4;
        _printk(&DAT_00135b2d,"syna_tcm_set_up_flash_access",iVar4,iVar4);
        _printk(&DAT_0013c947,"syna_tcm_set_up_flash_access",
                *(undefined1 *)(*(long *)(param_2 + 0x20) + 0x14),
                *(undefined1 *)(*(long *)(param_2 + 0x20) + 0x15));
      }
      iVar4 = 0;
      goto LAB_00124720;
    }
    puVar5 = &DAT_0013c266;
  }
  _printk(puVar5,"syna_tcm_set_up_flash_access",0);
  iVar4 = -0xf1;
LAB_00124720:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}

