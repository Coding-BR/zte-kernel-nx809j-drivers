
int syna_tcm_set_game_partition_config
              (long param_1,undefined1 param_2,int param_3,long param_4,int param_5)

{
  code *pcVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  char *__s;
  ulong uVar6;
  long lVar7;
  ulong uVar8;
  
  uVar8 = (ulong)(param_3 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar8,0xcc0);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_game_partition_config");
    iVar4 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_5 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_5 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013a806,"syna_tcm_set_game_partition_config");
      }
      else {
        param_5 = 0;
      }
    }
    iVar4 = param_3 * 6 + 0x20;
    __s = (char *)__kmalloc_noprof((long)iVar4,0xcc0);
    if (__s == (char *)0x0) {
      iVar2 = 0;
    }
    else {
      iVar2 = snprintf(__s,(long)iVar4,"out values: ");
    }
    if (uVar8 == 0) {
LAB_001237e4:
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(1,0x1237e8);
      (*pcVar1)();
    }
    uVar6 = (ulong)(param_3 + 1U);
    *puVar5 = param_2;
    if (1 < (int)(param_3 + 1U)) {
      lVar7 = 0;
      do {
        if (uVar8 <= lVar7 + 1U) goto LAB_001237e4;
        puVar5[lVar7 + 1] = *(undefined1 *)(param_4 + lVar7);
        if ((__s != (char *)0x0) && (iVar2 < param_3 * 6 + 0x18)) {
          iVar3 = snprintf(__s + iVar2,(long)(iVar4 - iVar2),"%02x ");
          iVar2 = iVar3 + iVar2;
        }
        lVar7 = lVar7 + 1;
      } while (uVar6 - 1 != lVar7);
    }
    if (__s != (char *)0x0) {
      _printk(&DAT_0013dc83,"syna_tcm_set_game_partition_config",__s);
      kfree(__s);
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12375c);
      (*pcVar1)();
    }
    iVar4 = (**(code **)(param_1 + 0x398))(param_1,199,puVar5,uVar6,0,param_5);
    if (iVar4 < 0) {
      _printk(&DAT_0013dc40,"syna_tcm_set_game_partition_config",199,uVar6,param_2);
    }
    else {
      iVar4 = 0;
    }
  }
  else {
    _printk(&DAT_0013cfa3,"syna_tcm_set_game_partition_config");
    iVar4 = -0xf1;
  }
  return iVar4;
}

