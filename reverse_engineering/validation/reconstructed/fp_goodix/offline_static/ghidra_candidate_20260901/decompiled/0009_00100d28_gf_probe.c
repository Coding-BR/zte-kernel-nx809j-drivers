
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong gf_probe(long param_1)

{
  ulong uVar1;
  ulong uVar2;
  
  _printk(&DAT_00102a94,"gf_probe");
  DAT_00103dc8 = &DAT_00103dc8;
  DAT_00103dd0 = &DAT_00103dc8;
  DAT_00103dfc = 0xffffffeaffffffea;
  DAT_00103e04 = 0xffffffea;
  _DAT_00103e30 = 0;
  DAT_00103dd8 = param_1;
  DAT_00103e60 = alloc_workqueue(&DAT_00103356,0x6000a,1,"screen_state_wq");
  if (DAT_00103e60 != 0) {
    DAT_00103e68 = 0xfffffffe00000;
    DAT_00103e70 = &DAT_00103e70;
    DAT_00103e78 = &DAT_00103e70;
    DAT_00103e80 = goodixfp_init_drm_notifier;
    init_timer_key(&DAT_00103e88,&delayed_work_timer_fn,0x200000,0,0);
    queue_delayed_work_on(0x20,DAT_00103e60,&DAT_00103e68,0x4e2);
  }
  mutex_lock(device_list_lock);
  if ((minors | 0xffffffff00000000) == 0xffffffffffffffff) {
    mutex_unlock(device_list_lock);
    uVar1 = 0xffffffed;
  }
  else {
    uVar1 = ~(minors | 0xffffffff00000000);
    uVar1 = (uVar1 & 0xaaaaaaaaaaaaaaaa) >> 1 | (uVar1 & 0x5555555555555555) << 1;
    uVar1 = (uVar1 & 0xcccccccccccccccc) >> 2 | (uVar1 & 0x3333333333333333) << 2;
    uVar1 = (uVar1 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar1 & 0xf0f0f0f0f0f0f0f) << 4;
    uVar1 = (uVar1 & 0xff00ff00ff00ff00) >> 8 | (uVar1 & 0xff00ff00ff00ff) << 8;
    uVar1 = (uVar1 & 0xffff0000ffff0000) >> 0x10 | (uVar1 & 0xffff0000ffff) << 0x10;
    uVar2 = LZCOUNT(uVar1 >> 0x20 | uVar1 << 0x20);
    gf = (uint)uVar2 | SPIDEV_MAJOR << 0x14;
    uVar1 = device_create(gf_class,DAT_00103dd8 + 0x10,gf,&gf,"goodix_fp");
    if ((uVar1 < 0xfffffffffffff001) || ((int)uVar1 == 0)) {
      uVar1 = FUN_001010f4(1L << (uVar2 & 0x3f));
      return uVar1;
    }
    gf = 0;
  }
  gf_cleanup(&gf);
  _DAT_00103e30 = _DAT_00103e30 & 0xff00;
  return uVar1 & 0xffffffff;
}

