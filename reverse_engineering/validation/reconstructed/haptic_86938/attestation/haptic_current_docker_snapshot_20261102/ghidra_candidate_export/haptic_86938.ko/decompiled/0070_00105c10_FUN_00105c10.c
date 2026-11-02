
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00105c10(undefined8 param_1,long param_2,undefined8 param_3)

{
  long unaff_x19;
  
  *(undefined8 *)(param_2 + 0x3c8) = param_1;
  *(undefined8 *)(param_2 + 0x3d0) = param_1;
  *(code **)(param_2 + 0x3d8) = ram_work_routine;
  init_timer_key(param_2 + 0x3e0,param_3,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,unaff_x19 + 0x3c0,2000);
  return;
}

