
undefined4 syna_ts_check_dt(long param_1)

{
  undefined8 *puVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  ulong uVar6;
  undefined4 uVar7;
  int iVar8;
  undefined8 *local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  iVar3 = of_count_phandle_with_args(*(undefined8 *)(param_1 + 0x2e8),"panel",0);
  if (iVar3 < 1) {
    uVar7 = 0xffffffed;
  }
  else {
    iVar8 = 0;
    uVar7 = 0xffffffff;
    do {
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      local_b8 = (undefined8 *)0x0;
      uStack_b0 = 0;
      iVar4 = __of_parse_phandle_with_args
                        (*(undefined8 *)(param_1 + 0x2e8),"panel",0,0,iVar8,&local_b8);
      puVar1 = local_b8;
      if (iVar4 != 0) {
        puVar1 = (undefined8 *)0x0;
      }
      if (puVar1 != (undefined8 *)0x0) {
        _printk(&DAT_0013267f,"syna_ts_check_dt","syna_ts_check_dt",*puVar1);
      }
      uVar6 = of_drm_find_panel(puVar1);
      if (uVar6 < 0xfffffffffffff001) {
        strncpy(&DEVICE_NODE_NAME,(char *)*puVar1,100);
        uVar7 = 0;
        active_panel = uVar6;
        break;
      }
      if (uVar6 == 0xffffffffffffffed) {
        uVar7 = 0xffffffed;
        puVar5 = &DAT_00134582;
LAB_00111e54:
        _printk(puVar5,"syna_ts_check_dt","syna_ts_check_dt");
      }
      else if (uVar6 == 0xfffffffffffffdfb) {
        uVar7 = 0xfffffdfb;
        puVar5 = &DAT_00133e98;
        goto LAB_00111e54;
      }
      iVar8 = iVar8 + 1;
    } while (iVar3 != iVar8);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_68) {
    return uVar7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

