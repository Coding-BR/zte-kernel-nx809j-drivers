
void gpio_keys_gpio_work_func(long param_1)

{
  mutex_lock(param_1 + 0x80);
  gpio_keys_gpio_report_event(param_1 + -0x50);
  if (*(int *)(*(long *)(param_1 + -0x50) + 0x1c) != 0) {
    pm_relax(*(undefined8 *)(*(long *)(param_1 + -0x48) + 0x290));
  }
  mutex_unlock(param_1 + 0x80);
  return;
}

