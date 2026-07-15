
int goodixfp_drm_get_pannel(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  ulong uVar5;
  undefined *puVar6;
  int iVar7;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00103ef5);
    iVar3 = -0x13;
  }
  else {
    iVar3 = of_count_phandle_with_args(param_1,"panel",0);
    if (iVar3 < 1) {
      puVar6 = &DAT_00103c9c;
    }
    else {
      iVar7 = 0;
      do {
        local_48 = 0;
        uStack_40 = 0;
        local_58 = 0;
        uStack_50 = 0;
        local_68 = 0;
        uStack_60 = 0;
        local_78 = 0;
        uStack_70 = 0;
        local_88 = 0;
        uStack_80 = 0;
        iVar4 = __of_parse_phandle_with_args(param_1,"panel",0,0,iVar7,&local_88);
        uVar1 = local_88;
        if (iVar4 != 0) {
          uVar1 = 0;
        }
        uVar5 = of_drm_find_panel(uVar1);
        if (uVar5 < 0xfffffffffffff001) {
          _printk(&DAT_001034c8,"goodixfp_drm_get_pannel");
          goodixfp_active_panel = uVar5;
          _printk(&DAT_00103523,"goodixfp_drm_get_pannel");
          iVar3 = 0;
          goto LAB_00101d80;
        }
        iVar7 = iVar7 + 1;
      } while (iVar3 != iVar7);
      puVar6 = &DAT_001037ff;
    }
    _printk(puVar6,"goodixfp_drm_get_pannel");
  }
LAB_00101d80:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return iVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

