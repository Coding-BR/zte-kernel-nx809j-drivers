
void goodixfp_init_drm_notifier(long param_1)

{
  int iVar1;
  int iVar2;
  
  _printk(&DAT_00103a02,"goodixfp_init_drm_notifier");
  iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
  iVar2 = 0;
  do {
    while (iVar1 == 0) {
      iVar2 = iVar2 + 1;
      if (iVar2 == 0x19) goto LAB_00101b60;
    }
    _printk(&DAT_00103962,"goodixfp_init_drm_notifier");
    usleep_range_state(1000000,0xf4628,2);
    iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
    iVar2 = iVar2 + 1;
  } while (iVar2 != 0x19);
  if (iVar1 != 0) {
    _printk(&DAT_00103a1b,"goodixfp_init_drm_notifier");
  }
LAB_00101b60:
  if (goodixfp_active_panel != 0) {
    _printk(&DAT_00103c0a,"goodixfp_init_drm_notifier");
    cookie = panel_event_notifier_register
                       (1,3,goodixfp_active_panel,goodix_fb_state_chg_callback,param_1 + -0xa8);
    if (cookie == 0) {
      _printk(&DAT_00102ff7,"goodixfp_init_drm_notifier");
    }
  }
  return;
}

