
void goodixfp_init_drm_notifier(long param_1)

{
  int iVar1;
  undefined *puVar2;
  uint uVar3;
  
  _printk(&DAT_001031a8,"goodixfp_init_drm_notifier");
  iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
  if (iVar1 != 0) {
    uVar3 = 0;
    do {
      _printk(&DAT_001037fb,"goodixfp_init_drm_notifier");
      usleep_range_state(1000000,0xf4628,2);
      iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
      if (0x17 < uVar3) break;
      uVar3 = uVar3 + 1;
    } while (iVar1 != 0);
    if (iVar1 != 0) {
      _printk(&DAT_001035ef,"goodixfp_init_drm_notifier");
    }
  }
  if (goodixfp_active_panel == 0) {
    puVar2 = &DAT_001033b6;
  }
  else {
    _printk(&DAT_00103652,"goodixfp_init_drm_notifier");
    cookie = panel_event_notifier_register
                       (0,2,goodixfp_active_panel,goodix_fb_state_chg_callback,param_1 + -0xa8);
    if (cookie != 0) {
      return;
    }
    puVar2 = &DAT_00102c50;
    cookie = 0;
  }
  _printk(puVar2,"goodixfp_init_drm_notifier");
  return;
}

