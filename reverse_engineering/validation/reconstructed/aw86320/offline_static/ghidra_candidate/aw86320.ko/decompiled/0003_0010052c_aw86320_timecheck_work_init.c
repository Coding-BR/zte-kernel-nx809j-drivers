
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw86320_timecheck_work_init(long param_1)

{
  undefined8 uVar1;
  
  if (0x3ff < *(int *)(param_1 + 0xc)) {
    cancel_delayed_work_sync(param_1 + 0x2c8);
    *(undefined8 *)(param_1 + 0x2c8) = 0xfffffffe00000;
    *(long *)(param_1 + 0x2d0) = param_1 + 0x2d0;
    *(long *)(param_1 + 0x2d8) = param_1 + 0x2d0;
    *(code **)(param_1 + 0x2e0) = aw86320_timecheck_work_handle;
    init_timer_key(param_1 + 0x2e8,&delayed_work_timer_fn,0x200000,0,0);
    uVar1 = __msecs_to_jiffies(*(undefined4 *)(param_1 + 0xc));
    queue_delayed_work_on(0x20,_system_wq,param_1 + 0x2c8,uVar1);
  }
  return;
}

