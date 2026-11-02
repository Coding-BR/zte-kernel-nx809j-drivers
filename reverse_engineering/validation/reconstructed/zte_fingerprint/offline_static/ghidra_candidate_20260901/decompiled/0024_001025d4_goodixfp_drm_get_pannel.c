
void goodixfp_drm_get_pannel(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  ulong uVar4;
  undefined *puVar5;
  undefined8 uVar6;
  int iVar7;
  long local_88 [11];
  
  lVar1 = sp_el0;
  local_88[10] = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    puVar5 = &DAT_00102b76;
  }
  else {
    iVar2 = of_count_phandle_with_args(param_1,"panel",0);
    if (iVar2 < 1) {
      puVar5 = &DAT_001033d7;
    }
    else {
      _printk(&DAT_00103b8b,"goodixfp_drm_get_pannel",iVar2);
      iVar7 = 0;
      do {
        local_88[8] = 0;
        local_88[9] = 0;
        local_88[6] = 0;
        local_88[7] = 0;
        local_88[4] = 0;
        local_88[5] = 0;
        local_88[2] = 0;
        local_88[3] = 0;
        local_88[0] = 0;
        local_88[1] = 0;
        iVar3 = __of_parse_phandle_with_args(param_1,"panel",0,0,iVar7,local_88);
        if ((((iVar3 == 0) && (local_88[0] != 0)) && (uVar4 = of_drm_find_panel(), uVar4 != 0)) &&
           (uVar4 < 0xfffffffffffff001)) {
          goodixfp_active_panel = uVar4;
          _printk(&DAT_00103283,"goodixfp_drm_get_pannel");
          _printk(&DAT_00103137,"goodixfp_drm_get_pannel",uVar4);
          uVar6 = 0;
          goto LAB_00102710;
        }
        iVar7 = iVar7 + 1;
      } while (iVar2 != iVar7);
      puVar5 = &DAT_00102beb;
    }
  }
  _printk(puVar5,"goodixfp_drm_get_pannel");
  uVar6 = 0xffffffed;
LAB_00102710:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_88[10]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}

