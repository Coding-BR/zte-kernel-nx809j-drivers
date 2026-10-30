
int syna_tcm_set_touch_report_config(long param_1,long param_2,ulong param_3,int param_4)

{
  short sVar1;
  ushort uVar2;
  code *pcVar3;
  int iVar4;
  undefined1 *puVar5;
  long lVar6;
  undefined *puVar7;
  
  if (param_1 == 0) {
    puVar5 = &DAT_00133fd6;
    goto LAB_0012a2d0;
  }
  if ((param_2 == 0) || ((int)param_3 == 0)) {
    puVar5 = &DAT_0013557a;
    goto LAB_0012a2d0;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00137912,"syna_tcm_set_touch_report_config",*(char *)(param_1 + 9));
    return -0xf1;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) != 0) {
      param_4 = 0;
      goto LAB_0012a2b4;
    }
    param_4 = *(int *)(param_1 + 0x20c);
    param_3 = param_3 & 0xffffffff;
    _printk(&DAT_0013c851,"syna_tcm_set_touch_report_config");
    sVar1 = *(short *)(param_1 + 0xb0);
  }
  else {
LAB_0012a2b4:
    sVar1 = *(short *)(param_1 + 0xb0);
  }
  if (sVar1 != 0) {
    uVar2 = *(ushort *)(param_1 + 0xbc);
    if ((uint)uVar2 < (uint)param_3) {
      _printk(&DAT_00133c60,"syna_tcm_set_touch_report_config",param_3,uVar2);
      return -0xf1;
    }
    lVar6 = syna_request_managed_device();
    if (lVar6 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
    }
    else {
      lVar6 = devm_kmalloc(lVar6,uVar2,0xdc0);
      if (lVar6 != 0) {
        iVar4 = syna_pal_mem_cpy(lVar6,(uint)uVar2,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff
                                );
        if (iVar4 < 0) {
          puVar7 = &DAT_00138be7;
        }
        else {
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x12a43c);
            (*pcVar3)();
          }
          iVar4 = (**(code **)(param_1 + 0x398))(param_1,0x26,lVar6,uVar2,0,param_4);
          puVar7 = &DAT_00137f23;
          if (-1 < iVar4) {
            puVar7 = &DAT_0013b394;
          }
        }
        _printk(puVar7,"syna_tcm_set_touch_report_config");
        syna_pal_mem_free(lVar6);
        return iVar4;
      }
    }
    _printk(&DAT_00135c6f,"syna_tcm_set_touch_report_config");
    return -0xf3;
  }
  puVar5 = &DAT_0013d0ee;
LAB_0012a2d0:
  _printk(puVar5,"syna_tcm_set_touch_report_config");
  return -0xf1;
}

