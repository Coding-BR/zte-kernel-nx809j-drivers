
ulong gf_probe(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  undefined *puVar4;
  ulong uVar5;
  ulong uVar6;
  
  _printk(&DAT_001031a8,"gf_probe");
  DAT_00103ce8 = (undefined **)&DAT_00103ce8;
  DAT_00103cf0 = &DAT_00103ce8;
  DAT_00103d1c = 0xffffffeaffffffea;
  DAT_00103d24 = 0xffffffea;
  DAT_00103d50 = 0;
  DAT_00103cf8 = param_1;
  DAT_00103d80 = alloc_workqueue("screen_state_wq",10,1);
  if (DAT_00103d80 != 0) {
    DAT_00103d88 = 0xfffffffe00000;
    DAT_00103d90 = &DAT_00103d90;
    DAT_00103d98 = &DAT_00103d90;
    DAT_00103da0 = goodixfp_init_drm_notifier;
    init_timer_key(&DAT_00103da8,&delayed_work_timer_fn,0x200000,0,0);
    queue_delayed_work_on(0x20,DAT_00103d80,&DAT_00103d88,0x139);
  }
  mutex_lock(device_list_lock);
  if ((minors | 0xffffffff00000000) == 0xffffffffffffffff) {
    mutex_unlock(device_list_lock);
    uVar5 = 0xffffffed;
  }
  else {
    uVar5 = ~(minors | 0xffffffff00000000);
    uVar5 = (uVar5 & 0xaaaaaaaaaaaaaaaa) >> 1 | (uVar5 & 0x5555555555555555) << 1;
    uVar5 = (uVar5 & 0xcccccccccccccccc) >> 2 | (uVar5 & 0x3333333333333333) << 2;
    uVar5 = (uVar5 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar5 & 0xf0f0f0f0f0f0f0f) << 4;
    uVar5 = (uVar5 & 0xff00ff00ff00ff00) >> 8 | (uVar5 & 0xff00ff00ff00ff) << 8;
    uVar5 = (uVar5 & 0xffff0000ffff0000) >> 0x10 | (uVar5 & 0xffff0000ffff) << 0x10;
    uVar6 = LZCOUNT(uVar5 >> 0x20 | uVar5 << 0x20);
    gf_dev_static = (uint)uVar6 | SPIDEV_MAJOR << 0x14;
    uVar5 = device_create(gf_class,param_1 + 0x10,gf_dev_static,&gf_dev_static,"goodix_fp");
    puVar4 = PTR_device_list_001000c8;
    if (uVar5 < 0xfffffffffffff001) {
      Hint_Prefetch(0x103ec0,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(0x103ec0,0x10);
        if (bVar3) {
          cVar2 = ExclusiveMonitorsStatus();
          minors = minors | 1L << (uVar6 & 0x3f);
        }
      } while (cVar2 != '\0');
      if (((*(undefined ***)PTR_device_list_001000c8 != &device_list) ||
          ((undefined ***)PTR_device_list_001000c8 == &DAT_00103ce8)) || (false)) {
        __list_add_valid_or_report(&DAT_00103ce8,PTR_device_list_001000c8,&device_list);
      }
      else {
        PTR_device_list_001000c8 = (undefined *)&DAT_00103ce8;
        DAT_00103ce8 = &device_list;
        DAT_00103cf0 = (undefined8 *)puVar4;
        *(undefined ****)puVar4 = &DAT_00103ce8;
      }
      mutex_unlock(device_list_lock);
      DAT_00103d08 = (undefined8 *)input_allocate_device();
      if (DAT_00103d08 == (undefined8 *)0x0) {
        _printk(&DAT_00102f11,"gf_probe");
        uVar5 = 0xfffffff4;
      }
      else {
        *DAT_00103d08 = "goodix_fp";
        input_set_capability(DAT_00103d08,1,0x66);
        input_set_capability(DAT_00103d08,1,0x8b);
        input_set_capability(DAT_00103d08,1,0x9e);
        input_set_capability(DAT_00103d08,1,0x74);
        input_set_capability(DAT_00103d08,1,0x67);
        input_set_capability(DAT_00103d08,1,0x6c);
        input_set_capability(DAT_00103d08,1,0x69);
        input_set_capability(DAT_00103d08,1,0x6a);
        input_set_capability(DAT_00103d08,1,0xd4);
        input_set_capability(DAT_00103d08,1,0x72);
        input_set_capability(DAT_00103d08,1,0x73);
        input_set_capability(DAT_00103d08,1,0x247);
        input_set_capability(DAT_00103d08,1,0xd8);
        uVar6 = input_register_device(DAT_00103d08);
        uVar5 = uVar6 & 0xffffffff;
        if ((int)uVar6 == 0) {
          wakeup_source_add(fp_wakelock);
          _printk(&DAT_001031b8,"gf_probe");
          *(uint **)(param_1 + 0xa8) = &gf_dev_static;
          goto LAB_00102264;
        }
        _printk(&DAT_00103060,"gf_probe");
        input_free_device(DAT_00103d08);
        DAT_00103d08 = (undefined8 *)0x0;
      }
      mutex_lock(device_list_lock);
      list_del();
      device_destroy(gf_class,gf_dev_static);
      uVar6 = (ulong)gf_dev_static;
      puVar1 = &minors + ((ulong)(gf_dev_static >> 6) & 0x3fff);
      Hint_Prefetch(puVar1,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
        if (bVar3) {
          *puVar1 = *puVar1 & (1L << (uVar6 & 0x3f) ^ 0xffffffffffffffffU);
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
      mutex_unlock(device_list_lock);
    }
  }
  _printk(&DAT_00102f38,"gf_probe",uVar5 & 0xffffffff);
  gf_cleanup(&gf_dev_static);
  DAT_00103d50 = 0;
LAB_00102264:
  return uVar5 & 0xffffffff;
}

