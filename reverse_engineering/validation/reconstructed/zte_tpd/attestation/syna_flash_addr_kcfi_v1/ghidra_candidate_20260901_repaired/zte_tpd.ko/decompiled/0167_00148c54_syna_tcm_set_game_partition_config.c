
undefined8
syna_tcm_set_game_partition_config
          (long param_1,undefined1 param_2,int param_3,long param_4,int param_5)

{
  code *pcVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  char *__s;
  undefined8 uVar6;
  ulong uVar7;
  long lVar8;
  ulong uVar9;
  
  uVar9 = (ulong)(param_3 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar9,0xcc0);
  if (param_1 == 0) {
    uVar6 = _printk(&DAT_00168a84,"syna_tcm_set_game_partition_config");
    return uVar6;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar6 = _printk(&DAT_00171c8e,"syna_tcm_set_game_partition_config");
    return uVar6;
  }
  if (param_5 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar6 = _printk(&DAT_0016f46e,"syna_tcm_set_game_partition_config");
      return uVar6;
    }
    param_5 = 0;
  }
  iVar4 = param_3 * 6 + 0x20;
  __s = (char *)__kmalloc_noprof((long)iVar4,0xcc0);
  if (__s == (char *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = snprintf(__s,(long)iVar4,"out values: ");
  }
  if (uVar9 == 0) {
LAB_00148f20:
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x148f24);
    (*pcVar1)();
  }
  uVar7 = (ulong)(param_3 + 1U);
  *puVar5 = param_2;
  if (1 < (int)(param_3 + 1U)) {
    lVar8 = 0;
    do {
      if (uVar9 <= lVar8 + 1U) goto LAB_00148f20;
      puVar5[lVar8 + 1] = *(undefined1 *)(param_4 + lVar8);
      if ((__s != (char *)0x0) && (iVar2 < param_3 * 6 + 0x18)) {
        iVar3 = snprintf(__s + iVar2,(long)(iVar4 - iVar2),"%02x ");
        iVar2 = iVar3 + iVar2;
      }
      lVar8 = lVar8 + 1;
    } while (uVar7 - 1 != lVar8);
  }
  if (__s != (char *)0x0) {
    uVar6 = _printk(&DAT_0017299c,"syna_tcm_set_game_partition_config",__s);
    return uVar6;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148e98);
    (*pcVar1)();
  }
  iVar4 = (**(code **)(param_1 + 0x398))(param_1,199,puVar5,uVar7,0,param_5);
  if (-1 < iVar4) {
    return 0;
  }
  uVar6 = _printk(&DAT_00172958,"syna_tcm_set_game_partition_config",199,uVar7,param_2);
  return uVar6;
}

