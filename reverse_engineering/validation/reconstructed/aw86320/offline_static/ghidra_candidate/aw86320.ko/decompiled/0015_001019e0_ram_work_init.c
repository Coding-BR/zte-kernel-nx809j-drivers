
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_work_init(long param_1)

{
  *(undefined8 *)(param_1 + 0x260) = 0xfffffffe00000;
  *(long *)(param_1 + 0x268) = param_1 + 0x268;
  *(long *)(param_1 + 0x270) = param_1 + 0x268;
  *(code **)(param_1 + 0x278) = ram_work_routine;
  init_timer_key(param_1 + 0x280,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x260,2000);
  return;
}

