
void syna_tcm_set_touch_report_config(long param_1,long param_2,ulong param_3,int param_4)

{
  ushort uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  long lVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
  }
  else if ((param_2 == 0) || ((uint)param_3 == 0)) {
    puVar4 = &DAT_0016a07a;
  }
  else {
    if (*(char *)(param_1 + 9) != '\x01') {
      _printk(&DAT_0016c48e,"syna_tcm_set_touch_report_config",*(char *)(param_1 + 9));
      return;
    }
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        _printk(&DAT_00171524,"syna_tcm_set_touch_report_config");
        return;
      }
      param_4 = 0;
    }
    if (*(short *)(param_1 + 0xb0) != 0) {
      uVar1 = *(ushort *)(param_1 + 0xbc);
      if ((uint)uVar1 < (uint)param_3) {
        _printk(&DAT_00168702,"syna_tcm_set_touch_report_config",param_3,uVar1);
        return;
      }
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        lVar5 = devm_kmalloc(lVar5,uVar1,0xdc0);
        if (lVar5 == 0) {
          _printk(&DAT_0016a788,"syna_tcm_set_touch_report_config");
          return;
        }
        iVar3 = syna_pal_mem_cpy(lVar5,(uint)uVar1,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff
                                );
        if (iVar3 < 0) {
          puVar6 = &DAT_0016d7d4;
        }
        else {
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13d514);
            (*pcVar2)();
          }
          iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x26,lVar5,uVar1,0,param_4);
          puVar6 = &DAT_0016cabc;
          if (-1 < iVar3) {
            puVar6 = &DAT_0017002a;
          }
        }
        _printk(puVar6,"syna_tcm_set_touch_report_config");
        return;
      }
      _printk(&DAT_00171996,"syna_pal_mem_alloc");
      return;
    }
    puVar4 = &DAT_00171dde;
  }
  _printk(puVar4,"syna_tcm_set_touch_report_config");
  return;
}

