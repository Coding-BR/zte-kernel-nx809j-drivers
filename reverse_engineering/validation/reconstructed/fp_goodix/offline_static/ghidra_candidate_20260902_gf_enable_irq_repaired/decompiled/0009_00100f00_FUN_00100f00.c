
ulong FUN_00100f00(undefined8 *param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  bool in_ZR;
  uint uVar1;
  long unaff_x19;
  undefined8 unaff_x20;
  ulong uVar2;
  long unaff_x22;
  long *unaff_x23;
  
  if (in_ZR) {
    __list_add_valid_or_report(&DAT_00103dc8,&device_list);
  }
  else {
    *(long **)(param_4 + 8) = unaff_x23;
    *unaff_x23 = param_4;
    unaff_x23[1] = (long)param_1;
    *param_1 = unaff_x23;
  }
  mutex_unlock(device_list_lock);
  DAT_00103df0 = (undefined8 *)input_allocate_device();
  if (DAT_00103df0 == (undefined8 *)0x0) {
    _printk(&DAT_00103765,"gf_probe");
    uVar2 = 0xfffffff4;
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
    uVar1 = input_register_device(DAT_00103df0);
    uVar2 = (ulong)uVar1;
    if (uVar1 == 0) {
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
    return uVar2;
  }
  _printk(&DAT_00103119,uVar2);
  mutex_lock(device_list_lock);
  list_del();
  device_destroy(*(undefined8 *)(unaff_x22 + 0xed8),gf);
  uVar2 = FUN_00101114(1L << ((ulong)gf & 0x3f));
  return uVar2;
}

