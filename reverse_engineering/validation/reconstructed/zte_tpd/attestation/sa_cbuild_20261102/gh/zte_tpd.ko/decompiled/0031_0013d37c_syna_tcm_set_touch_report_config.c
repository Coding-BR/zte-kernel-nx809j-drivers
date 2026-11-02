
void syna_tcm_set_touch_report_config(long param_1,long param_2,ulong param_3,int param_4)

{
  ushort uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  long lVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar4 = &DAT_00168ac4;
  }
  else if ((param_2 == 0) || ((uint)param_3 == 0)) {
    puVar4 = &DAT_0016a0ba;
  }
  else {
    if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c4ce,"syna_tcm_set_touch_report_config",*(char *)(param_1 + 9));
    }
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171564,"syna_tcm_set_touch_report_config");
      }
      param_4 = 0;
    }
    if (*(short *)(param_1 + 0xb0) != 0) {
      uVar1 = *(ushort *)(param_1 + 0xbc);
      if ((uint)uVar1 < (uint)param_3) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00168742,"syna_tcm_set_touch_report_config",param_3,uVar1);
      }
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        lVar5 = devm_kmalloc(lVar5,uVar1,0xdc0);
        if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016a7c8,"syna_tcm_set_touch_report_config");
        }
        iVar3 = FUN_001594d0(lVar5,(uint)uVar1,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
        if (iVar3 < 0) {
          puVar6 = &DAT_0016d814;
        }
        else {
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13d554);
            (*pcVar2)();
          }
          iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x26,lVar5,uVar1,0,param_4);
          puVar6 = &DAT_0016cafc;
          if (-1 < iVar3) {
            puVar6 = &DAT_0017006a;
          }
        }
                    /* WARNING: Subroutine does not return */
        _printk(puVar6,"syna_tcm_set_touch_report_config");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_alloc");
    }
    puVar4 = &DAT_00171e1e;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_tcm_set_touch_report_config");
}

