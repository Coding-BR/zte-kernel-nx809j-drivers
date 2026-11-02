
void gpio_keys_quiesce_key(long param_1)

{
  if (*(long *)(param_1 + 0x10) == 0) {
    timer_delete_sync(param_1 + 0x20);
  }
  else {
    cancel_delayed_work_sync(param_1 + 0x50);
  }
  return;
}

