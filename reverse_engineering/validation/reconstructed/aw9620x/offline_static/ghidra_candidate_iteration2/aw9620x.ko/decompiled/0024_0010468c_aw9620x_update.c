
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw9620x_update(long param_1)

{
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] aw9620x update enter\n",
              "aw9620x_update",0xd71);
  *(undefined8 *)(param_1 + 0x208) = 0xfffffffe00000;
  *(long *)(param_1 + 0x210) = param_1 + 0x210;
  *(long *)(param_1 + 0x218) = param_1 + 0x210;
  *(code **)(param_1 + 0x220) = aw9620x_update_work;
  init_timer_key(param_1 + 0x228,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x208,0x4e2);
  return;
}

