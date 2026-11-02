
ulong FUN_001010f4(ulong param_1)

{
  char cVar1;
  bool bVar2;
  uint uVar3;
  long unaff_x19;
  undefined8 unaff_x20;
  ulong uVar4;
  long unaff_x22;
  undefined **unaff_x23;
  
  Hint_Prefetch(0x103fa0,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x103fa0,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      minors = minors | param_1;
    }
  } while (cVar1 != '\0');
  if (((*(undefined ***)(device_list + 8) == &device_list) && (unaff_x23 != &device_list)) &&
     ((undefined **)device_list != unaff_x23)) {
    *(undefined ***)(device_list + 8) = unaff_x23;
    *unaff_x23 = device_list;
    unaff_x23[1] = (undefined *)&device_list;
    device_list = (undefined *)unaff_x23;
  }
  else {
    __list_add_valid_or_report(&DAT_00103dc8,&device_list);
  }
  mutex_unlock(device_list_lock);
  DAT_00103df0 = (undefined8 *)input_allocate_device();
  if (DAT_00103df0 == (undefined8 *)0x0) {
    _printk(&DAT_00103765,"gf_probe");
    uVar4 = 0xfffffff4;
  }
  else {
    input_set_capability(DAT_00103df0,1,0x66);
    input_set_capability(DAT_00103df0,1,0x8b);
    input_set_capability(DAT_00103df0,1,0x9e);
    input_set_capability(DAT_00103df0,1,0x74);
    input_set_capability(DAT_00103df0,1,0x67);
    input_set_capability(DAT_00103df0,1,0x6c);
    input_set_capability(DAT_00103df0,1,0x6a);
    input_set_capability(DAT_00103df0,1,0x69);
    input_set_capability(DAT_00103df0,1,0xd4);
    input_set_capability(DAT_00103df0,1,0x72);
    input_set_capability(DAT_00103df0,1,0x73);
    input_set_capability(DAT_00103df0,1,0xd9);
    input_set_capability(DAT_00103df0,1,0xd8);
    *DAT_00103df0 = unaff_x20;
    uVar3 = input_register_device(DAT_00103df0);
    uVar4 = (ulong)uVar3;
    if (uVar3 == 0) {
      wakeup_source_add(fp_wakelock);
      _printk(&DAT_00103958,1,2,4,2);
      return 0;
    }
    _printk(&DAT_001038b6);
    if (DAT_00103df0 != (undefined8 *)0x0) {
      input_free_device();
    }
  }
  if (gf == 0) {
    gf_cleanup();
    *(undefined1 *)(unaff_x19 + 0x70) = 0;
    return uVar4;
  }
  _printk(&DAT_00103119,uVar4);
  mutex_lock(device_list_lock);
  list_del();
  device_destroy(*(undefined8 *)(unaff_x22 + 0xed8),gf);
  uVar4 = FUN_00101114(1L << ((ulong)gf & 0x3f));
  return uVar4;
}

