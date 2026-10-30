
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_work_init(long param_1)

{
  *(undefined8 *)(param_1 + 0x3c0) = 0xfffffffe00000;
  *(long *)(param_1 + 0x3c8) = param_1 + 0x3c8;
  *(long *)(param_1 + 0x3d0) = param_1 + 0x3c8;
  *(code **)(param_1 + 0x3d8) = ram_work_routine;
  init_timer_key(param_1 + 0x3e0,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x3c0,2000);
  return;
}

