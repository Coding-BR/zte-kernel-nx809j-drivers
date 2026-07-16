
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong gf_probe(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  ulong uVar4;
  ulong uVar5;
  
  _printk(&DAT_00102c01,"gf_probe");
  DAT_00104018 = &DAT_00104018;
  DAT_00104020 = (undefined **)&DAT_00104018;
  _DAT_0010404c = 0xffffffeaffffffea;
  _DAT_00104054 = 0xffffffea;
  _DAT_00104080 = 0;
  _DAT_00104028 = param_1;
  DAT_001040b0 = alloc_workqueue(&DAT_0010345a,0x6000a,1,"screen_state_wq");
  if (DAT_001040b0 != 0) {
    _DAT_001040b8 = 0xfffffffe00000;
    _DAT_001040c0 = &DAT_001040c0;
    _DAT_001040c8 = &DAT_001040c0;
    _DAT_001040d0 = goodixfp_init_drm_notifier;
    init_timer_key(&DAT_001040d8,&delayed_work_timer_fn,0x200000,0,0);
    queue_delayed_work_on(0x20,DAT_001040b0,&DAT_001040b8,0x4e2);
  }
  mutex_lock(device_list_lock);
  if ((minors | 0xffffffff00000000) == 0xffffffffffffffff) {
    mutex_unlock(device_list_lock);
    uVar4 = 0xffffffed;
  }
  else {
    uVar4 = ~(minors | 0xffffffff00000000);
    uVar4 = (uVar4 & 0xaaaaaaaaaaaaaaaa) >> 1 | (uVar4 & 0x5555555555555555) << 1;
    uVar4 = (uVar4 & 0xcccccccccccccccc) >> 2 | (uVar4 & 0x3333333333333333) << 2;
    uVar4 = (uVar4 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar4 & 0xf0f0f0f0f0f0f0f) << 4;
    uVar4 = (uVar4 & 0xff00ff00ff00ff00) >> 8 | (uVar4 & 0xff00ff00ff00ff) << 8;
    uVar4 = (uVar4 & 0xffff0000ffff0000) >> 0x10 | (uVar4 & 0xffff0000ffff) << 0x10;
    uVar5 = LZCOUNT(uVar4 >> 0x20 | uVar4 << 0x20);
    gf = (uint)uVar5 | SPIDEV_MAJOR << 0x14;
    uVar4 = device_create(gf_class,_DAT_00104028 + 0x10,gf,&gf,"goodix_fp");
    if ((uVar4 < 0xfffffffffffff001) || ((int)uVar4 == 0)) {
      Hint_Prefetch(0x1041e0,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(0x1041e0,0x10);
        if (bVar3) {
          cVar2 = ExclusiveMonitorsStatus();
          minors = minors | 1L << (uVar5 & 0x3f);
        }
      } while (cVar2 != '\0');
      if ((*(undefined ***)(device_list + 8) == &device_list) &&
         ((undefined8 **)device_list != &DAT_00104018)) {
        *(undefined8 ***)(device_list + 8) = &DAT_00104018;
        DAT_00104018 = (undefined8 *)device_list;
        DAT_00104020 = &device_list;
        device_list = (undefined *)&DAT_00104018;
      }
      else {
        __list_add_valid_or_report(&DAT_00104018,&device_list);
      }
      mutex_unlock(device_list_lock);
      DAT_00104040 = (undefined8 *)input_allocate_device();
      if (DAT_00104040 == (undefined8 *)0x0) {
        _printk(&DAT_00103869,"gf_probe");
        uVar4 = 0xfffffff4;
      }
      else {
        input_set_capability(DAT_00104040,1,0x66);
        input_set_capability(DAT_00104040,1,0x8b);
        input_set_capability(DAT_00104040,1,0x9e);
        input_set_capability(DAT_00104040,1,0x74);
        input_set_capability(DAT_00104040,1,0x67);
        input_set_capability(DAT_00104040,1,0x6c);
        input_set_capability(DAT_00104040,1,0x6a);
        input_set_capability(DAT_00104040,1,0x69);
        input_set_capability(DAT_00104040,1,0xd4);
        input_set_capability(DAT_00104040,1,0x72);
        input_set_capability(DAT_00104040,1,0x73);
        input_set_capability(DAT_00104040,1,0xd9);
        input_set_capability(DAT_00104040,1,0xd8);
        *DAT_00104040 = "goodix_fp";
        uVar5 = input_register_device(DAT_00104040);
        uVar4 = uVar5 & 0xffffffff;
        if ((int)uVar5 == 0) {
          wakeup_source_add(fp_wakelock);
          _printk(&DAT_00103a5c,1,2,4,2);
          goto LAB_001016d4;
        }
        _printk(&DAT_001039ba);
        if (DAT_00104040 != (undefined8 *)0x0) {
          input_free_device();
        }
      }
      if (gf != 0) {
        _printk(&DAT_0010325e,uVar4);
        mutex_lock(device_list_lock);
        list_del();
        device_destroy(gf_class,gf);
        uVar5 = (ulong)gf;
        puVar1 = &minors + ((ulong)(gf >> 6) & 0x3fff);
        Hint_Prefetch(puVar1,2,0,1);
        do {
          cVar2 = '\x01';
          bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
          if (bVar3) {
            *puVar1 = *puVar1 & (1L << (uVar5 & 0x3f) ^ 0xffffffffffffffffU);
            cVar2 = ExclusiveMonitorsStatus();
          }
        } while (cVar2 != '\0');
        mutex_unlock(device_list_lock);
      }
    }
    else {
      gf = 0;
    }
  }
  gf_cleanup(&gf);
  _DAT_00104080 = _DAT_00104080 & 0xff00;
LAB_001016d4:
  return uVar4 & 0xffffffff;
}

